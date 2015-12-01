(function () {
    'use strict';
    angular.module('app', []);
    angular
        .module('adminApp', ['ui.router', 'ngCookies', 'ngResource', 'app', 'ngMessages', 'ui.bootstrap', 'ngSanitize'])
        .config(config)
        .run(run);

    config.$inject = ['$stateProvider', '$urlRouterProvider'];
    function config($stateProvider, $urlRouterProvider) {
        // Redirect any unmatched url
        $urlRouterProvider.otherwise("/dashboard");

        $stateProvider
            .state('login', {
                url: "/login",
                templateUrl: viewsUrl + "auth/login.template.html",
                data: {pageTitle: 'Sign in'},
                controller: "AuthController"
            })
            .state('dashboard', {
                url: "/dashboard",
                templateUrl: viewsUrl + "auth/login.template.html",
                data: {pageTitle: 'Dashboard'},
                //controller: "GeneralPageController",
            });
    }

    run.$inject = ['$rootScope', '$location', '$cookieStore', '$http', 'SettingsFactory'];
    function run($rootScope, $location, $cookieStore, $http, SettingsFactory) {
        // keep user logged in after page refresh
        $rootScope.globals = $cookieStore.get('globals') || {};
        if ($rootScope.globals.currentUser) {
            $http.defaults.headers.common['Authorization'] = 'Basic ' + $rootScope.globals.currentUser.authdata;
        }

        $rootScope.$on('$locationChangeStart', function (event, next, current) {
            var restrictedPage = $.inArray($location.path(), ['/login', '/register']) === -1;
            var loggedIn = $rootScope.globals.currentUser;
            if (restrictedPage && !loggedIn)
            {
                $location.path('/login');
            }
        });

        SettingsFactory.defineSettings();

        $rootScope.$on('$stateChangeSuccess', function(){
            $rootScope.settings.layout.loading = false;
        });

        /*Show - Hide loading state*/
        $rootScope.toggleLoadingState = function()
        {
            $rootScope.settings.layout.loading = !$rootScope.settings.layout.loading;
        };
        $rootScope.showLoadingState = function()
        {
            $rootScope.settings.layout.loading = true;
        };
        $rootScope.hideLoadingState = function()
        {
            $rootScope.settings.layout.loading = false;
        };
    }
})();