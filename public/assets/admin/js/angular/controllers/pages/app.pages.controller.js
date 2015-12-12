(function () {
    'use strict';

    angular
        .module('app')
        .controller('PagesController', PagesController);

    PagesController.$inject = ['$rootScope', '$scope', 'PageService'];
    function PagesController($rootScope, $scope, PageService) {
        var vm = this;

        vm.getStatus = getStatus;
        vm.updateStatus = updateStatus;
        vm.deletePage = deletePage;
        vm.paginationChanged = paginationChanged;
        vm.perPageChanged = perPageChanged;

        /*Pagination*/
        vm.currentPage = 1;
        vm.perPage = 10;
        vm.totalItems = 0;
        vm.maxSize = 3;
        vm.lastPage = 1;

        (function initController() {
            pages();

            $scope.$on('$viewContentLoaded', function() {
                App.initComponents();
            });
        })();

        function pages()
        {
            $rootScope.bodyClass = 'page page-pages';
            $rootScope.pageTitle = 'All pages';

            getAllPages(vm.currentPage, vm.perPage);
        }

        function getAllPages($paged, $perPage, callback)
        {
            $rootScope.showLoadingState();
            PageService.getAll($paged, $perPage, function(response){
                /*Successful*/
                if($perPage < 1)
                {
                    vm.pages = response.data.data;

                    vm.currentPage = 1;
                    vm.totalItems = vm.pages.length;
                    vm.lastPage = 1;
                }
                else
                {
                    vm.pages = response.data.data.data;

                    vm.currentPage = response.data.data.current_page;
                    vm.perPage = response.data.data.per_page;
                    vm.totalItems = response.data.data.total;
                    vm.lastPage = response.data.data.last_page;
                }

                App.initComponents();
                $rootScope.hideLoadingState();

                /*Callback*/
                if(callback) callback();
            }, function(response){
                $rootScope.hideLoadingState();
            });
        }

        function paginationChanged()
        {
            getAllPages(vm.currentPage, vm.perPage);
        }

        function perPageChanged()
        {
            getAllPages(1, vm.perPage);
        }

        function getStatus(status)
        {
            switch(status)
            {
                case 0:
                {
                    return '<span class="label label-default">disabled</span>';
                } break;
                case 1:
                {
                    return '<span class="label label-success">activated</span>';
                } break;
                default:
                {
                    return '<span class="label label-default">disabled</span>';
                } break;
            }
        }

        function updateStatus($id, $status)
        {
            var $data = {
                status: $status
            };
            $rootScope.showLoadingState();
            PageService.updateGlobal($id, $data, function(response){
                getAllPages(vm.currentPage, vm.perPage);
            }, function(response){
                $rootScope.hideLoadingState();
            });
        }

        function deletePage($id)
        {
            $rootScope.showLoadingState();
            PageService.deletePage($id, function(response){
                getAllPages(vm.currentPage, vm.perPage);
            }, function(response){
                $rootScope.hideLoadingState();
            });
        }
    }
})();