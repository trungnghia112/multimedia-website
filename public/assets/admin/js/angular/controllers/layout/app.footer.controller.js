(function () {
    'use strict';

    angular
        .module('app')
        .controller('FooterController', FooterController);

    FooterController.$inject = ['$scope'];
    function FooterController($scope) {
        var vm = this;

        (function initController() {
            footer();
        })();

        function footer()
        {
            $scope.$on('$includeContentLoaded', function() {
                Layout.initFooter(); // init footer
            });
        }
    }
})();