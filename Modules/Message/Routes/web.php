<?php

use Modules\Message\Http\Controllers\MessageController;

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
Route::prefix('message')->group(function () {
  // Route::get('/', [MessageController::class, 'index'])->name('message.index');
  Route::get('/create', [MessageController::class, 'create'])->name('message.create');
  Route::post('/store', [MessageController::class, 'store'])->name('message.store');
});
