(function () {
    'use strict';

    angular
        .module('app')
        .controller('PagesController', PagesController);

    PagesController.$inject = ['$rootScope', '$scope', 'MyHelpers', 'PageService'];
    function PagesController($rootScope, $scope, MyHelpers, PageService) {
        var vm = this;

        vm.pages = [];

        vm.getStatus = getStatus;
        vm.updateStatus = updateStatus;
        vm.deletePage = deletePage;

        /*Pagination*/
        vm.paginationChanged = paginationChanged;
        vm.perPageChanged = perPageChanged;
        vm.currentPage = 1;
        vm.perPage = 10;
        vm.totalItems = 0;
        vm.maxSize = 3;
        vm.lastPage = 1;

        /*Group actions*/
        vm.multiSelect = multiSelect;
        vm.changeSelect = changeSelect;
        vm.handleGroupActions = handleGroupActions;
        vm.selectedItems = {};
        vm.checkedAllItems = false;
        vm.drCurrentGroupAction = null;
        vm.groupActions = [
            {
                id: null,
                text: 'Select...'
            },
            {
                id: 'disable',
                text: 'Disable these pages'
            },
            {
                id: 'active',
                text: 'Active these pages'
            }
        ];

        (function initController() {
            $rootScope.bodyClass = 'page page-pages';
            $rootScope.pageTitle = 'All pages';

            getAllPages({
                page: vm.currentPage,
                per_page: vm.perPage
            });

            $scope.$on('$viewContentLoaded', function () {
                App.initComponents();
            });
        })();

        function getAllPages($params, callback) {
            $rootScope.showLoadingState();

            vm.selectedItems = {};
            vm.checkedAllItems = false;

            PageService.getAll($params, function (response) {
                /*Successful*/
                if ($params.per_page < 1) {
                    vm.pages = response.data.data;

                    vm.currentPage = 1;
                    vm.totalItems = vm.pages.length;
                    vm.lastPage = 1;
                }
                else {
                    vm.pages = response.data.data.data;

                    vm.currentPage = response.data.data.current_page;
                    vm.perPage = response.data.data.per_page;
                    vm.totalItems = response.data.data.total;
                    vm.lastPage = response.data.data.last_page;
                }

                App.initComponents();
                $rootScope.hideLoadingState();

                /*Callback*/
                if (callback) callback();
            }, function (response) {
                $rootScope.hideLoadingState();
            });
        }

        function paginationChanged() {
            getAllPages({
                page: vm.currentPage,
                per_page: vm.perPage
            });
        }

        function perPageChanged() {
            getAllPages({
                page: 1,
                per_page: vm.perPage
            });
        }

        function getStatus(status) {
            switch (status) {
                case 0:
                {
                    return '<span class="label label-default">disabled</span>';
                }
                    break;
                case 1:
                {
                    return '<span class="label label-success">activated</span>';
                }
                    break;
                default:
                {
                    return '<span class="label label-default">disabled</span>';
                }
                    break;
            }
        }

        function updateStatus($id, $status) {
            var $data = {
                status: $status
            };
            $rootScope.showLoadingState();
            PageService.updateGlobal($id, $data, function (response) {
                getAllPages({
                    page: vm.currentPage,
                    per_page: vm.perPage
                });
            }, function (response) {
                $rootScope.hideLoadingState();
            });
        }

        function deletePage($id) {
            $rootScope.showLoadingState();
            PageService.deletePage($id, function (response) {
                getAllPages({
                    page: vm.currentPage,
                    per_page: vm.perPage
                });
            }, function (response) {
                $rootScope.hideLoadingState();
            });
        }

        /*Multi select pages*/
        function multiSelect() {
            vm.selectedItems = MyHelpers.multiSelectDataTable(vm.checkedAllItems, vm.pages, vm.selectedItems);
        }

        /*When user select all items => change scope checkedAllItems to true*/
        function changeSelect() {
            MyHelpers.changeSelectDataTable(vm.pages, vm.selectedItems, function(){
                vm.checkedAllItems = true;
            }, function(){
                vm.checkedAllItems = false;
            });
        }

        function handleGroupActions() {
            $rootScope.showLoadingState();
            PageService.updateGlobal(null, {
                is_group_action: true,
                _group_action: vm.drCurrentGroupAction,
                ids: MyHelpers.getGroupActionsSelectedIds(vm.selectedItems)
            }, function (response) {
                getAllPages({
                    page: vm.currentPage,
                    per_page: vm.perPage
                });
                MyHelpers.showNotification8(response.data.message, 'success');
            }, function (response) {
                MyHelpers.showNotification8(response.data.message, 'error');
                $rootScope.hideLoadingState();
            });
        }
    }
})();