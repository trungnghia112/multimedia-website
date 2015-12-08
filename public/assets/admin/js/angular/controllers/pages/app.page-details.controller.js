(function () {
    'use strict';

    angular
        .module('app')
        .controller('PageDetailsController', PageDetailsController);

    PageDetailsController.$inject = ['$rootScope', '$scope', 'PageService', '$stateParams'];
    function PageDetailsController($rootScope, $scope, PageService, $stateParams) {
        var vm = this;

        vm.updatePage = updatePage;

        vm.pageId = $stateParams.id;
        vm.langId = $stateParams.lang;
        vm.currentObj = null;

        (function initController() {
            page();

            $scope.$on('$viewContentLoaded', function() {
                App.initComponents();
            });
        })();

        function page()
        {
            $rootScope.bodyClass = 'page page-page-edit';
            $rootScope.pageTitle = 'Edit page';

            getPage();
        }

        function getPage()
        {
            PageService.get(vm.pageId, vm.langId, function(response){
                /*Successful*/
                vm.currentObj = response.data.data;
                $rootScope.pageTitle += ' - ' + vm.currentObj.global_title;
            }, function(response){

            });
        }

        function updatePage()
        {
            PageService.update(vm.pageId, vm.langId, vm.currentObj, function(response){

            }, function(response){

            });
        }
    }
})();