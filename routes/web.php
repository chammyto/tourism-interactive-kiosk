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

Route::get('/', 'HomeController@index')->name('home');

Route::get('/menu', 'HomeController@menu');
Route::get('/about-bohol', 'HomeController@about');
Route::get('/places/{id}', 'HomeController@place');



Route::get('/categories', 'HomeController@categories');
Route::get('/destinations', 'HomeController@destinations');

Route::get('categories/places/{id}', 'DestinationController@places');

Route::get('/categories/places/chocolate-hills', function () {
	return view('pages/place');
});

Auth::routes();
Route::post('send-location/{id}', 'DestinationController@sendLocation');


Route::resource('visitor', 'VisitorController');

Route::middleware('auth')->group(function () {
	Route::get('/admin', 'HomeController@admin');
	Route::resource('category', 'CategoryController');
	Route::resource('destination', 'DestinationController');
	Route::resource('info', 'InfoController');
});
