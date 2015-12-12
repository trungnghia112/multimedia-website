(function () {
    'use strict';

    angular
        .module('app')
        .directive('mediaBox', mediaBox);

    function mediaBox() {
        return {
            restrict: 'EA', //E = element, A = attribute, C = class, M = comment
            require: '?ngModel',
            scope: {
                //@ reads the attribute value, = provides two-way binding, & works with functions
                drTitle: '@',
                drButtonTitle: '@',
                bindModel: '=ngModel'
            },
            templateUrl: templatesUrl + 'directives/media-box.directive.html',
            controller: mediaBoxController,
            controllerAs: 'dr',
            link: function (scope, elm, attr, model) {
                /*elm.on('click', '.btn-action', function(event){
                    event.preventDefault();
                    elm.find('.modal').modal('show');
                });*/
            }
        };
    }

    mediaBoxController.$inject = ['$rootScope', '$scope', '$element', 'FileService'];
    function mediaBoxController($rootScope, $scope, $element, FileService)
    {
        var dr = this;

        dr.getFiles = getFiles;
        dr.getItemThumbnail = getItemThumbnail;
        dr.getItemTitle = getItemTitle;
        dr.toggleActive = toggleActive;
        dr.upToParentFolder = upToParentFolder;

        dr.files = [];
        dr.sub = [];

        (function initController() {

        })();

        function getFiles($folder)
        {
            if(!$folder)
            {
                dr.sub = [];
            }
            $rootScope.showLoadingState();
            dr.files = [];
            FileService.getFiles($folder, function(response){
                dr.files = response.data;
                $rootScope.hideLoadingState();
                setTimeout(function(){
                    $element.find('.modal').modal('show');
                }, 100);
            },function(response){
                dr.files = [];
                $rootScope.hideLoadingState();
            });
        }

        function getItemThumbnail(item)
        {
            var result = '/theme/admin/images/folder.jpg';
            if(!item.is_dir)
            {
                if(_isImage(item.extension))
                {
                    var sub = '/';
                    if(dr.sub.length > 0)
                    {
                        sub += dr.sub.join('/') + '/';
                    }
                    result = '/uploads' + sub + item.name;
                }
                else
                {
                    result = '/theme/admin/images/file.png';
                }
            }
            return result;
        }

        function _isImage(extension)
        {
            return (/(gif|jpg|jpeg|tiff|png)$/i).test(extension);
        }

        function getItemTitle(item)
        {
            var result = 'Folder: ' + item.name;
            if(!item.is_dir)
            {
                result = item.name;
            }
            return result;
        }

        function toggleActive(item)
        {
            if(item.is_dir)
            {
                dr.sub.push(item.name);
                var sub = '';
                if(dr.sub.length > 0)
                {
                    sub += dr.sub.join('/') + '';
                }
                return getFiles(sub);
            }
            if(!item.active)
            {
                return item.active = true;
            }
            return item.active = false;
        }

        function upToParentFolder()
        {
            dr.sub.splice(-1,1);
            var sub = '';
            if(dr.sub.length > 0)
            {
                sub += dr.sub.join('/') + '';
            }
            return getFiles(sub);
        }
    }
})();