<?php

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
Route::get('/categories', 'CategoryController@categories');

Route::get('/categories/places', function () {
    return view('pages/whereto');
});
Route::get('/categories/places/chocolate-hills', function () {
    return view('pages/place');
});

Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');


Route::middleware('auth')->group(function () {
	Route::get('/home', function () {
	    return view('admin.home');
	});
	Route::resource('category', 'CategoryController');
});