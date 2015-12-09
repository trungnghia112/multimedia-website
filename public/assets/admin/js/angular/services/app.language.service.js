(function () {
    'use strict';

    angular
        .module('app')
        .factory('LanguageService', LanguageService);

    LanguageService.$inject = ['$http'];
    function LanguageService($http) {
        var service = {};

        service.getAll = getAll;

        return service;

        function getAll(callback, callbackError) {
            return $http.get(baseApi + 'languages').then(callback, callbackError);
        }
    }
})();