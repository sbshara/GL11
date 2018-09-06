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

Route::get('/login', function () {
    return view('auth.login');
});

//Route::post('/login', function () {
//
//});

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


/*
* =========================================
*                   Posts
* =========================================
 */
Route::get('/posts', 'PostsController@index');
Route::get('/posts/create/', 'PostsController@create');
Route::get('/posts/{post}', 'PostsController@show');
Route::post('/posts', 'PostsController@store');
//Route::get('/{post}/edit', 'PostsController@edit');
//Route::get('/{post}/edit', 'PostsController@update');
//Route::get('/{post}/edit', 'PostsController@destroy');

// =============== END TASKS ===============











// LARAVEL WELCOME PAGE
Route::get('/laravel', function () {
    return view('welcome');
});
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
