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

$app->get('/admin/', function () use ($app) {
    return view('admin.master');
});

/*
|--------------------------------------------------------------------------
| START Routes for API actions
|--------------------------------------------------------------------------
*/
$app->group(['namespace' => 'App\Http\Controllers\Api', 'prefix' => 'api'], function($app) {
    /*User*/
    $app->group(['prefix' => 'api/users', 'namespace' => 'App\Http\Controllers\Api'], function($app){
        $app->post('/authenticate', 'ApiUserController@postAuthenticate');
    });

    /*Page*/
    $app->group(['prefix' => 'api/pages', 'namespace' => 'App\Http\Controllers\Api'], function($app){
        $app->get('/', 'ApiPageController@index');
        $app->get('/{id}', 'ApiPageController@show');
    });
});
/*
|--------------------------------------------------------------------------
| END Routes for API actions
|--------------------------------------------------------------------------
*/