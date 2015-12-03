(function () {
    'use strict';

    angular
        .module('app')
        .controller('PagesController', PagesController);

    PagesController.$inject = ['$rootScope'];
    function PagesController($rootScope) {
        var vm = this;

        (function initController() {
            pages();
        })();

        function pages()
        {
            $rootScope.bodyClass = 'page page-pages';
            $rootScope.pageTitle = 'Pages';
        }
    }
})();