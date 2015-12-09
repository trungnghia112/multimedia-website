var path = {
    base: './assets/front/',
    baseAdmin: './assets/admin/',
    distPath: './assets/front/dist/',
    distPathAdmin: './assets/admin/dist/',
    commonPath: './assets/js/third_party/',
    bower: './bower_components/',
    npm: './node_modules/',
    core: './assets/core/',
    coreThirdParty: './assets/core/third_party/',
    themeAdminAssets: './theme/admin/assets/',
    themeAdminPlugins: './theme/admin/assets/global/plugins/'
};

var gulp = require("gulp");
var sass = require("gulp-sass");
var sourcemaps = require('gulp-sourcemaps');
var autoprefixer = require("gulp-autoprefixer");
var uglify = require("gulp-uglify");
var concat = require('gulp-concat');
var rename = require('gulp-rename');
var plumber = require('gulp-plumber');
var notify  = require('gulp-notify');

/*Min sass*/
gulp.task("sassAdmin", function(){
    gulp.src(path.baseAdmin + 'scss/**/*.scss')
        .pipe(plumber({
            errorHandler: notify.onError("Error Sass: <%= error.message %>")
        }))
        .pipe(sass({outputStyle: 'compressed'}))
        .pipe(autoprefixer({
            browsers: ['> 1%', 'last 2 versions']
        }))
        //.pipe(concat('app.min.css'))
        .pipe(sourcemaps.init())
        .pipe(sourcemaps.write('./map'))
        .pipe(gulp.dest(path.baseAdmin + 'css/'));

    /*Concat css*/
    gulp.src(path.base + 'css/style.css')
        .pipe(concat('app.min.css'))
        .pipe(gulp.dest(path.distPathAdmin));
});

/*Min script*/
gulp.task('coreMinJsAdmin', function() {
    gulp.src([
            path.bower + 'jquery/dist/jquery.min.js',
            path.bower + 'jquery-placeholder/jquery.placeholder.min.js',
            path.bower + 'modernizr/modernizr.js',
            path.bower + 'bootstrap-sass/assets/javascripts/bootstrap.min.js',
            path.themeAdminPlugins + 'js.cookie.min.js',
            path.themeAdminPlugins + 'bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js',
            path.themeAdminPlugins + 'jquery-slimscroll/jquery.slimscroll.min.js',
            path.themeAdminPlugins + 'jquery.blockui.min.js',
            path.themeAdminPlugins + 'uniform/jquery.uniform.min.js',
            path.themeAdminPlugins + 'bootstrap-switch/js/bootstrap-switch.min.js'
        ])
        .pipe(concat('core.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPathAdmin));
});
gulp.task('appMinJsAdmin', function() {
    gulp.src([
            path.themeAdminAssets + 'layouts/layout/scripts/layout.js',
            path.baseAdmin + 'js/*.js'
        ])
        .pipe(concat('app.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPathAdmin));
});
gulp.task('angularCoreMinJsAdmin', function() {
    gulp.src([
            path.bower + 'angular/angular.js',
            path.bower + 'angular-mocks/angular-mocks.js',
            path.bower + 'angular-ui-router/release/angular-ui-router.min.js',
            path.bower + 'angular-resource/angular-resource.js',
            path.bower + 'angular-animate/angular-animate.js',
            path.bower + 'angular-cookies/angular-cookies.js',
            path.bower + 'angular-messages/angular-messages.min.js',
            path.bower + 'angular-sanitize/angular-sanitize.min.js',
            path.bower + 'angular-touch/angular-touch.min.js',
            path.bower + 'angular-bootstrap/ui-bootstrap-tpls.js'
        ])
        .pipe(concat('angular-core.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPathAdmin));
});
gulp.task('scriptsAdmin', function() {
    gulp.src([
            path.baseAdmin + 'js/angular/modules/**/*.js',
            path.baseAdmin + 'js/angular/controllers/**/*.js',
            path.baseAdmin + 'js/angular/directives/**/*.js',
            path.baseAdmin + 'js/angular/factories/**/*.js',
            path.baseAdmin + 'js/angular/services/**/*.js'
        ])
        .pipe(concat('angular-app.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(path.distPathAdmin));
});
gulp.task('copyfonts', function() {
    gulp.src([
            path.bower + 'bootstrap-sass/assets/fonts/**/*.{ttf,woff,woff2,eof,svg,otf}',
            path.bower + 'font-awesome-sass/assets/fonts/**/*.{ttf,woff,woff2,eof,svg,otf}'
        ])
        .pipe(gulp.dest(path.baseAdmin + 'fonts/'));
});

/*Admin task*/
gulp.task("admin", [
    'sassAdmin',
    'coreMinJsAdmin',
    'appMinJsAdmin',
    'angularCoreMinJsAdmin',
    'scriptsAdmin',
    'copyfonts'
]);

gulp.task("watchAdmin", function(){
    gulp.watch(path.baseAdmin + 'scss/**/*.scss', ['sassAdmin']);
    gulp.watch(path.baseAdmin + 'js/**/*.js', ['scriptsAdmin']);
});