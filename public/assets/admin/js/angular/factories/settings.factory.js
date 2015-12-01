(function () {
    'use strict';

    angular
        .module('app')
        .factory('SettingsFactory', SettingsFactory);

    SettingsFactory.$inject = ['$rootScope'];
    function SettingsFactory($rootScope) {
        var service = {};

        service.defineSettings = defineSettings;

        return service;

        function defineSettings() {
            var settings = {
                layout: {
                    loading: true,
                    isLogin: true
                },
                url : {
                    baseUrl: baseUrl,
                    assetsUrl: assetsUrl,
                    templatesUrl: templatesUrl,
                    viewsUrl: viewsUrl
                }
            };
            $rootScope.settings = settings;
        }
    }
})();