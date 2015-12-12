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

        function getFiles($type, $folder, callback, callbackError) {
            if(!$folder) $folder = null;
            if(!$type) $folder = 'image';
            return $http.post(baseApi + 'files', {
                sub: $folder,
                type: $type
            }).then(callback, callbackError);
        }
    }
})();