(function () {
    'use strict';

    angular
        .module('app')
        .factory('MyHelpers', MyHelpersFactory);

    MyHelpersFactory.$inject = ['$rootScope'];
    function MyHelpersFactory($rootScope) {
        var service = {};

        service.countSelected = countSelected;
        service.getGroupActionsSelectedIds = getGroupActionsSelectedIds;
        service.changeSelectDataTable = changeSelectDataTable;
        service.multiSelectDataTable = multiSelectDataTable;

        return service;

        /*Count selected items*/
        function countSelected(obj) {
            var size = 0, key;
            for (key in obj) {
                if (obj.hasOwnProperty(key) && obj[key] == true) size++;
            }
            return size;
        }

        /*Get selected ids from group actions*/
        function getGroupActionsSelectedIds(items) {
            var ids = [], data = {};
            for (var key in items) {
                if (items.hasOwnProperty(key) && items[key] == true) {
                    ids.push(parseInt(key));
                }
            }
            return ids;
        }

        /*When user change ids checkbox in my-data-table*/
        function changeSelectDataTable(pages, selectedItems, callback, callbackFalse) {
            if (pages.length == countSelected(selectedItems)) {
                callback();
            }
            else {
                callbackFalse();
            }
        }

        /*When user choose all items*/
        function multiSelectDataTable(isCheckedAllItem, $pages, selectedItems) {
            if (!isCheckedAllItem) {
                selectedItems = {};
            }
            else {
                var selectedAllPages = {};
                for (var i = 0; i < $pages.length; i++) {
                    var $id = $pages[i].id;
                    selectedAllPages[$id] = true;
                }
                selectedItems = selectedAllPages;
            }
            return selectedItems;
        }
    }
})();