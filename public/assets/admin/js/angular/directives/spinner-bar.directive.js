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
            }
        };
    }
})();