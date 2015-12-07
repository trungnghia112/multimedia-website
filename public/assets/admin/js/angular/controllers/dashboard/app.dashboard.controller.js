(function () {
    'use strict';

    angular
        .module('app')
        .controller('DashboardController', DashboardController);

    DashboardController.$inject = ['$rootScope'];
    function DashboardController($rootScope) {
        var vm = this;

        (function initController() {
            dashboard();
        })();

        function dashboard()
        {
            $rootScope.bodyClass = 'page page-dashboard';
            $rootScope.pageTitle = 'Dashboard';
        }
    }
})();