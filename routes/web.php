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

    $tasks = [
        'Go to the store',
        'Collect mail',
        'Visit family'
    ];


    return view('starter', compact('tasks'));
});

Route::get('/about', function () {
    return view('about');
});









// LARAVEL WELCOME PAGE
Route::get('/laravel', function () {
    return view('welcome');
});