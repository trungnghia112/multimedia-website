(function () {
    'use strict';

    angular
        .module('app')
        .controller('AuthController', AuthController);

    AuthController.$inject = ['$scope', '$rootScope', '$location', 'AuthenticationService'];
    function AuthController($scope, $rootScope, $location, AuthenticationService) {
        var vm = this;

        vm.login = login;

        (function initController() {
            // reset login status
            AuthenticationService.clearCredentials();
            $rootScope.bodyClass = 'page page-login';

            $scope.$on('$viewContentLoaded', function() {
                // initialize core components
                App.initAjax();
            });
        })();

        function login() {
            $rootScope.showLoadingState();
            AuthenticationService.login(vm.username, vm.password, function (response){
                AuthenticationService.setCredentials(vm.username, vm.password);
                $location.path('/');
            }, function(response){
                $rootScope.hideLoadingState();
                vm.error = response.error;
                vm.errorMessage = response.message;
            });
        }
    }
})();