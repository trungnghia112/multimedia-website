(function () {
    'use strict';

    angular
        .module('app')
        .factory('PageService', PageService);

    PageService.$inject = ['$http'];
    function PageService($http) {
        var service = {};

        service.getAll = getAll;
        service.get = get;

        return service;

        function getAll(callback, callbackError) {
            return $http.get(baseApi + 'pages').then(callback, callbackError);
        }

        function get($id, callback, callbackError) {
            return $http.get(baseApi + 'pages/' + $id).then(callback, callbackError);
        }
    }
})();