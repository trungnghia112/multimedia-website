(function () {
    'use strict';

    angular
        .module('app')
        .directive('languageList', languageList);

    function languageList() {
        return {
            restrict: 'EA', //E = element, A = attribute, C = class, M = comment
            require: '?ngModel',
            scope: {
                //@ reads the attribute value, = provides two-way binding, & works with functions
                drClass: '@',
                drName: '@',
                drLabel: '@',
                drChange: '&',
                bindModel: '=ngModel'
            },
            templateUrl: templatesUrl + 'directives/language-list.directive.html',
            controller: languageListDirectiveController,
            controllerAs: 'dr',
            link: function (scope, element, attrs, model) {

            } //DOM manipulation
        };
    }

    languageListDirectiveController.$inject = ['$scope', 'LanguageService'];
    function languageListDirectiveController($scope, LanguageService)
    {
        var dr = this;

        dr.languages = [];

        (function initController() {
            getAllLanguage();
        })();

        function getAllLanguage()
        {
            LanguageService.getAll(function(response){
                dr.languages = response.data.data;
            },function(response){
                dr.languages = [];
            });
        }
    }
})();