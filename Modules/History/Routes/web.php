<?php
use Modules\History\Http\Controllers\HistoryController;

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

// Route::prefix('history')->group(function() {
//     Route::get('/', 'HistoryController@index');
// });

Route::middleware(['auth', 'roles:1,2'])->group(function () {
  Route::get('/history', 'HistoryController@index')->name('history.index');
});