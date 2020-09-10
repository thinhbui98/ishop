<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//admin site
Route::group(['prefix' => 'admin'], function () {
    //login
    Route::get('login', 'AdminController@login');
    Route::post('login', 'AdminController@login');

    //index
    Route::get('index', 'AdminController@index');

    //dashboard
    Route::get('dashboard', 'AdminController@dashboard');

    //list admin
    Route::get('list', 'AdminController@list');
    Route::get('add', 'AdminController@add');
    Route::post('add', 'AdminController@add');

});