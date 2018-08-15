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

use App\Task;

Route::get('/', function () {
    return view('staticPages.starter');
});

Route::get('/about', function () {
    return view('staticPages.about');
});




// All Tasks
Route::get('/tasks', function () {

//    $tasks = DB::table('tasks')->get();
    $tasks = Task::all();


    return view('tasks.tasks', compact('tasks'));
});

// Task by ID
Route::get('/tasks/{task}', function ($id) {
//    $task = DB::table('tasks')->find($id);
    $task = Task::find($id);
    return view('tasks.task', compact('task'));
});

















// LARAVEL WELCOME PAGE
Route::get('/laravel', function () {
    return view('welcome');
});