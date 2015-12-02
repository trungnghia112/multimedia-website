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
            AuthenticationService.login(vm.username, vm.password, function (response){
                AuthenticationService.setCredentials(vm.username, vm.password);
                $location.path('/');
            }, function(response){
                $rootScope.hideLoadingState();
                vm.error = response.error;
                vm.errorMessage = response.message;
            });
        }

        function showForm(type)
        {
            console.log(type);
            vm.currentForm = type || 'login';
        }
    }
})();