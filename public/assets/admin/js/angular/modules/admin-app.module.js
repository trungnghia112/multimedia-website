(function () {
    'use strict';
    angular.module('app', []);
    angular
        .module('adminApp', [
            'ui.router',
            'ngCookies',
            'ngResource',
            'app',
            'ngMessages',
            'ui.bootstrap',
            'ngSanitize',
            'mwl.confirm'
        ])
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
                controller: "AuthController",
                controllerAs: "vm"
            })
            .state('dashboard', {
                url: "/dashboard",
                templateUrl: viewsUrl + "dashboard/dashboard.template.html",
                controller: "DashboardController",
                controllerAs: "vm"
            })
            .state('pages', {
                url: "/pages",
                templateUrl: viewsUrl + "pages/pages.template.html",
                controller: "PagesController",
                controllerAs: "vm"
            })
            .state('pageDetails', {
                url: "/pages/{id:[0-9]*}/{lang:[0-9]*}",
                templateUrl: viewsUrl + "pages/page-details.template.html",
                controller: "PageDetailsController",
                controllerAs: "vm"
            });
    }

    run.$inject = ['$rootScope', '$location', '$cookieStore', '$http', 'SettingsFactory'];
    function run($rootScope, $location, $cookieStore, $http, SettingsFactory) {
        SettingsFactory.defineSettings();

        // keep user logged in after page refresh
        $rootScope.globals = $cookieStore.get('globals') || {};
        if ($rootScope.globals.currentUser) {
            $http.defaults.headers.common['Authorization'] = 'Basic ' + $rootScope.globals.currentUser.authData;
            $rootScope.settings.layout.isLogin = false;
        }

        $rootScope.$on('$locationChangeStart', function (event, next, current) {
            var restrictedPage = $.inArray($location.path(), ['/login', '/register']) === -1;
            var loggedIn = $rootScope.globals.currentUser;
            if (restrictedPage && !loggedIn)
            {
                $location.path('/login');
            }
        });

        $rootScope.$on('$stateChangeSuccess', function(){
            $rootScope.settings.layout.loading = false;
            Layout.setSidebarMenuActiveLink('match'); // init sidebar active links
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