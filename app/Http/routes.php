<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/admin', function () {
    return view('admin.master');
});

/*
|--------------------------------------------------------------------------
| START Routes for API actions
|--------------------------------------------------------------------------
*/
$router->group(['namespace' => 'Api', 'prefix' => 'api'], function($router) {
    /*User*/
    $router->controller('users', 'ApiUserController');

    /*Page*/
    $router->controller('pages', 'ApiPageController');

    /*Other*/
    $router->controller('languages', 'ApiLanguageController');
    $router->controller('file', 'ApiFileController');
});
/*
|--------------------------------------------------------------------------
| END Routes for API actions
|--------------------------------------------------------------------------
*/