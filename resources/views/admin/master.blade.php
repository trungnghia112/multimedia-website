<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8 no-js" ng-app="adminApp"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9 no-js" ng-app="adminApp"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" ng-app="adminApp">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title ng-bind="pageTitle + ' | Site vui dashboard'"></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
    <link href="{{ url('theme/admin/assets/global/plugins/font-awesome/css/font-awesome.min.css', [], env('APP_HTTPS', false)) }}" rel="stylesheet" type="text/css"/>
    <link href="{{ url('theme/admin/assets/global/plugins/simple-line-icons/simple-line-icons.min.css', [], env('APP_HTTPS', false)) }}" rel="stylesheet" type="text/css"/>
    <link href="{{ url('theme/admin/assets/global/plugins/bootstrap/css/bootstrap.min.css', [], env('APP_HTTPS', false)) }}" rel="stylesheet" type="text/css"/>
    <link href="{{ url('theme/admin/assets/global/plugins/uniform/css/uniform.default.css', [], env('APP_HTTPS', false)) }}" rel="stylesheet" type="text/css"/>
    <link href="{{ url('theme/admin/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css', [], env('APP_HTTPS', false)) }}" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="{{ url('theme/admin/assets/global/css/components-md.min.css', [], env('APP_HTTPS', false)) }}" rel="stylesheet" id="style_components" type="text/css"/>
    <link href="{{ url('theme/admin/assets/global/css/plugins-md.min.css', [], env('APP_HTTPS', false)) }}" rel="stylesheet" type="text/css"/>
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <link href="{{ url('theme/admin/assets/layouts/layout/css/layout.min.css', [], env('APP_HTTPS', false)) }}" rel="stylesheet" type="text/css"/>
    <link href="{{ url('theme/admin/assets/layouts/layout/css/themes/darkblue.min.css', [], env('APP_HTTPS', false)) }}" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="{{ url('assets/admin/css/style.css', [], env('APP_HTTPS', false)) }}" rel="stylesheet" type="text/css"/>
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="{{ url('favicon.ico', [], env('APP_HTTPS', false)) }}"/>

    <script type="text/javascript">
        var baseUrl = '{{ url('', [], env('APP_HTTPS', false)) }}/',
            assetsUrl  = '{{ url('assets', [], env('APP_HTTPS', false)) }}/',
            templatesUrl  = '{{ url('templates/admin', [], env('APP_HTTPS', false)) }}/',
            viewsUrl  = '{{ url('views/admin', [], env('APP_HTTPS', false)) }}/',
            baseApi = '{{ url('api', [], env('APP_HTTPS', false)) }}/';
    </script>
</head>

<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-md @{{ bodyClass }}"
      ng-class="{'on-loading': settings.layout.loading}">

<!-- Loading state -->
<spinner-bar class="page-spinner-bar"></spinner-bar>
<!-- Loading state -->

<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top"
     ng-controller="HeaderController"
     ng-if="!settings.layout.isLogin"
     ng-include="'/views/admin/inc/header.template.html'"></div>
<!-- END HEADER -->

<!-- BEGIN HEADER & CONTENT DIVIDER -->
<div class="clearfix"></div>
<!-- END HEADER & CONTENT DIVIDER -->

<!-- BEGIN CONTAINER -->
<div class="" ng-class="{'page-container': !settings.layout.isLogin}">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper"
         ng-controller="SidebarController"
         ng-if="!settings.layout.isLogin"
         ng-include="'/views/admin/inc/sidebar.template.html'"></div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="" ng-class="{'page-content-wrapper': !settings.layout.isLogin}">
        <!-- BEGIN CONTENT BODY -->
        <div class="" ng-class="{'page-content': !settings.layout.isLogin}">
            <!-- BEGIN ACTUAL CONTENT -->
            <div ui-view class="fade-in-up"></div>
            <!-- END ACTUAL CONTENT -->
        </div>
        <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->

<!-- BEGIN FOOTER -->
<div class="page-footer"
     ng-controller="FooterController"
     ng-if="!settings.layout.isLogin"
     ng-include="'/views/admin/inc/footer.template.html'"></div>
<!-- END FOOTER -->

<!--[if lt IE 9]>
<script src="{{ url('theme/admin/assets/global/plugins/respond.min.js', [], env('APP_HTTPS', false)) }}"></script>
<script src="{{ url('theme/admin/assets/global/plugins/excanvas.min.js', [], env('APP_HTTPS', false)) }}"></script>
<![endif]-->
<!-- BEGIN CORE PLUGINS -->
<script src="{{ url('assets/admin/dist/core.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<script src="{{ url('theme/admin/assets/global/plugins/js.cookie.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<script src="{{ url('theme/admin/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<script src="{{ url('theme/admin/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<script src="{{ url('theme/admin/assets/global/plugins/jquery.blockui.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<script src="{{ url('theme/admin/assets/global/plugins/uniform/jquery.uniform.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<script src="{{ url('theme/admin/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="{{ url('theme/admin/assets/global/scripts/app.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>

<script src="{{ url('assets/admin/dist/angular-core.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->

<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="{{ url('theme/admin/assets/layouts/layout/scripts/layout.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<script src="{{ url('assets/admin/dist/app.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<script src="{{ url('assets/admin/dist/angular-app.min.js', [], env('APP_HTTPS', false)) }}" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>