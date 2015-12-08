(function () {
    'use strict';

    angular
        .module('app')
        .factory('SettingService', SettingService);

    SettingService.$inject = ['$http'];
    function SettingService($http) {
        var service = {};

        service.getAll = getAll;

        return service;

        function getAll(callback, callbackError) {
            return $http.get(baseApi + 'settings').then(callback, callbackError);
        }
    }
})();