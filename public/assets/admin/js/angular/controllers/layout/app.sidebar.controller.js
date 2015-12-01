(function () {
    'use strict';

    angular
        .module('app')
        .controller('SidebarController', SidebarController);

    SidebarController.$inject = ['$scope'];
    function SidebarController($scope) {
        var vm = this;

        (function initController() {
            sidebar();
        })();

        function sidebar()
        {
            $scope.$on('$includeContentLoaded', function() {
                Layout.initSidebar(); // init sidebar
            });
        }
    }
})();