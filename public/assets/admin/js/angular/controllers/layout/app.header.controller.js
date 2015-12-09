(function () {
    'use strict';

    angular
        .module('app')
        .controller('HeaderController', HeaderController);

    HeaderController.$inject = ['$scope'];
    function HeaderController($scope) {
        var vm = this;

        (function initController() {
            header();
        })();

        function header()
        {
            $scope.$on('$includeContentLoaded', function() {
                Layout.initHeader(); // init header
            });
        }
    }
})();