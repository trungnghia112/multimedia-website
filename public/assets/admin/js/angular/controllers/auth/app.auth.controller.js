(function () {
    'use strict';

    angular
        .module('app')
        .controller('AuthController', AuthController);

    AuthController.$inject = ['$scope', '$rootScope', '$location', 'AuthenticationService'];
    function AuthController($scope, $rootScope, $location, AuthenticationService) {
        var vm = this;

        vm.login = login;
        vm.showForm = showForm;

        vm.currentForm = 'login';

        (function initController() {
            AuthenticationService.clearCredentials(); // reset login status
            $rootScope.bodyClass = 'page page-login';

            $scope.$on('$viewContentLoaded', function() {
                App.initAjax(); // initialize core components
            });
        })();

        function login() {
            $rootScope.showLoadingState();
            AuthenticationService.login(vm.email, vm.password, function (response){
                AuthenticationService.setCredentials(vm.email, vm.password);
                $location.path('/');
            }, function(response){
                $rootScope.hideLoadingState();
                vm.error = response.error;
            });
        }

        function showForm(type)
        {
            vm.currentForm = type || 'login';
        }
    }
})();