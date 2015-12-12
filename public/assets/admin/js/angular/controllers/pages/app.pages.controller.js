(function () {
    'use strict';

    angular
        .module('app')
        .controller('PagesController', PagesController);

    PagesController.$inject = ['$rootScope', '$scope', 'PageService'];
    function PagesController($rootScope, $scope, PageService) {
        var vm = this;

        vm.getStatus = getStatus;

        (function initController() {
            pages();

            $scope.$on('$viewContentLoaded', function() {
                App.initComponents();
            });
        })();

        function pages()
        {
            $rootScope.bodyClass = 'page page-pages';
            $rootScope.pageTitle = 'Pages';

            getAllPages();
        }

        function getAllPages()
        {
            PageService.getAll(function(response){
                /*Successful*/
                vm.pages = response.data.data.data;
                App.initComponents();
            }, function(response){

            });
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
    }
})();