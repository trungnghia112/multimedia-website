(function () {
    'use strict';

    angular
        .module('app')
        .controller('PageDetailsController', PageDetailsController);

    PageDetailsController.$inject = ['$rootScope', '$scope', 'PageService'];
    function PageDetailsController($rootScope, $scope, PageService) {
        var vm = this;

        (function initController() {
            page();

            $scope.$on('$viewContentLoaded', function() {
                App.initComponents();
            });
        })();

        function page()
        {
            $rootScope.bodyClass = 'page page-page-details';
            $rootScope.pageTitle = 'Page details';

            getPage();
        }

        function getPage()
        {
            PageService.get(1, function(response){
                /*Successful*/
                vm.pages = response.data;
            }, function(response){

            });
        }
    }
})();