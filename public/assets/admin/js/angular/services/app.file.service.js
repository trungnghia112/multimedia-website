(function () {
    'use strict';

    angular
        .module('app')
        .factory('FileService', FileService);

    FileService.$inject = ['$http'];
    function FileService($http) {
        var service = {};

        service.getFiles = getFiles;

        return service;

        function getFiles($folder, callback, callbackError) {
            if(!$folder) $folder = null;
            return $http.post(baseApi + 'files', {
                sub: $folder
            }).then(callback, callbackError);
        }
    }
})();