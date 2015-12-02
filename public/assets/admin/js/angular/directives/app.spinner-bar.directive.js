(function () {
    'use strict';

    angular
        .module('app')
        .directive('spinnerBar', spinnerBar);

    spinnerBar.$inject = ['$rootScope'];
    function spinnerBar($rootScope) {
        return {
            restrict: 'EA',
            template: '<div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div>',
            link: function(scope, elem, attrs) {
                //elem.addClass('hidden'); // hide spinner bar by default

                // display the spinner bar whenever the route changes(the content part started loading)
                $rootScope.$on('$locationChangeStart', function() {
                    //elem.removeClass('hidden'); // show spinner bar
                    $rootScope.settings.layout.loading = true;
                });

                // hide the spinner bar on rounte change success(after the content loaded)
                $rootScope.$on('$routeChangeSuccess', function() {
                    //elem.addClass('hidden'); // hide spinner bar
                    $rootScope.settings.layout.loading = false;
                });

                // display the spinner bar whenever the route changes(the content part started loading)
                $rootScope.$on('$stateChangeStart', function() {
                    $rootScope.settings.layout.loading = true; // show spinner bar
                });

                // hide the spinner bar on rounte change success(after the content loaded)
                $rootScope.$on('$stateChangeSuccess', function() {
                    $rootScope.settings.layout.loading = false; // hide spinner bar
                    // auto scroll to page top
                    App.scrollTop(); // scroll to the top on content load
                });

                // handle errors
                $rootScope.$on('$stateNotFound', function() {
                    $rootScope.settings.layout.loading = false; // hide spinner bar
                });

                // handle errors
                $rootScope.$on('$stateChangeError', function() {
                    $rootScope.settings.layout.loading = false; // hide spinner bar
                });
            }
        };
    }
})();