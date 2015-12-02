(function () {
    'use strict';

    angular
        .module('app')
        .factory('UserService', UserService);

    UserService.$inject = ['$http'];
    function UserService($http) {
        var service = {};

        service.getAll = getAll;
        service.authUser = authUser;

        return service;

        function getAll(callback, callbackError) {
            return $http.get(baseApi + 'users').then(callback, callbackError);
        }

        function authUser(email, password, callback, callbackError) {
            return $http.post(baseApi + 'users/authenticate', { email: email, password: password }).then(callback, callbackError);
        }
    }
})();