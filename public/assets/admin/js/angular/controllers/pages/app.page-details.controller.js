(function () {
    'use strict';

    angular
        .module('app')
        .controller('PageDetailsController', PageDetailsController);

    PageDetailsController.$inject = ['$rootScope', '$scope', 'PageService', '$state', '$stateParams'];
    function PageDetailsController($rootScope, $scope, PageService, $state, $stateParams) {
        var vm = this;

        vm.updatePageContent = updatePageContent;
        vm.changeLanguage = changeLanguage;

        vm.pageId = parseInt($stateParams.id);
        vm.langId = parseInt($stateParams.lang);
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
            $rootScope.showLoadingState();
            getPage(function(){
                $rootScope.hideLoadingState();
            }, function(){
                $rootScope.hideLoadingState();
            });
        }

        function getPage(callback, callbackError)
        {
            PageService.get(vm.pageId, vm.langId, function(response){
                /*Successful*/
                vm.currentObj = response.data.data;
                if(callback) callback();
            }, function(response){
                if(callbackError) callbackError();
            });
        }

        function updatePageContent()
        {
            $rootScope.showLoadingState();
            PageService.update(vm.pageId, vm.langId, vm.currentObj, function(response){
                getPage(function(){
                    $rootScope.hideLoadingState();
                }, function(){
                    $rootScope.hideLoadingState();
                });
            }, function(response){
                $rootScope.hideLoadingState();
            });
        }

        function changeLanguage()
        {
            setTimeout(function(){
                return $state.go('pageDetails', {
                    id: vm.pageId,
                    lang: vm.langId
                });
            }, 100);
        }
    }
})();