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

/*
 * =========================================
 *                   HOME
 * =========================================
 */
Route::get('/', function () {
    return view('staticPages.starter');
});
// =============== END HOME ===============

/*
 * =========================================
 *               STATIC PAGES
 * =========================================
 */
Route::get('/about', function () {
    return view('staticPages.about');
});

// =============== END Static Pages ===============

/*
 * =========================================
 *                   TASKS
 * =========================================
 */
//Route::Group('/tasks', function() {
//
//});


Route::get('/tasks', 'TasksController@index');
Route::get('/tasks/{task}', 'TasksController@show');
// =============== END TASKS ===============

















// LARAVEL WELCOME PAGE
Route::get('/laravel', function () {
    return view('welcome');
});