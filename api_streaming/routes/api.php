<?php

use App\Http\Controllers\Admin\ProductAndPlanes\PlanPaypalController;
use App\Http\Controllers\Admin\ProductAndPlanes\ProductPaypalController;
use App\Http\Controllers\Admin\Streaming\StreamingActorController;
use App\Http\Controllers\Admin\Streaming\StreamingController;
use App\Http\Controllers\Admin\Streaming\StreamingEpisodesController;
use App\Http\Controllers\Admin\Streaming\StreamingGenresController;
use App\Http\Controllers\Admin\Streaming\StreamingSeasonController;
use App\Http\Controllers\Admin\Streaming\StreamingTagController;
use App\Http\Controllers\Admin\User\UsersController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Streaming\AuthStreamingController;
use App\Http\Controllers\Streaming\HomeStreamingController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    Route::post('/register', [AuthController::class, 'register'])->name('register');
    Route::post('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/login_streaming', [AuthController::class, 'login_streaming'])->name('login_streaming');
    Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
    Route::post('/refresh', [AuthController::class, 'refresh'])->name('refresh');
    Route::post('/me', [AuthController::class, 'me'])->name('me');
});

 // Mis rutas para el admin
Route::group([
    'middleware' => 'auth:api',
], function ($router) {
    Route::resource("users",UsersController::class);
    Route::post("users/{id}",[UsersController::class,"update"]);
    Route::resource("products",ProductPaypalController::class);
    Route::resource("planes",PlanPaypalController::class);
    Route::resource("genres",StreamingGenresController::class);
    Route::post("genres/{id}",[StreamingGenresController::class,"update"]);
    Route::resource("actors",StreamingActorController::class);
    Route::post("actors/{id}",[StreamingActorController::class,"update"]);
    Route::resource("tags",StreamingTagController::class);

    Route::get("streaming/config_all",[StreamingController::class,"config_all"]);
    Route::resource("streaming",StreamingController::class);
    Route::post("streaming/{id}",[StreamingController::class,"update"]);
    Route::post("streaming/upload_video/{id}",[StreamingController::class,"upload_video"]);
    Route::post("streaming/upload_video_contenido/{id}",[StreamingController::class,"upload_video_contenido"]);
    Route::resource("streaming_season",StreamingSeasonController::class);
    Route::resource("streaming_episode",StreamingEpisodesController::class);
    Route::post("streaming_episode/{id}",[StreamingEpisodesController::class,"update"]);
    Route::post("streaming_episode/upload_video/{id}",[StreamingEpisodesController::class,"upload_video"]);
});
//Route::group(["prefix" => "admin"], function($router){
//});

Route::group(["prefix" => "streaming_public"], function($router){
    Route::get("config_all",[HomeStreamingController::class,"config_all"]);
    Route::post("valid_register",[AuthStreamingController::class,"valid_register"]);
    Route::post("register",[AuthStreamingController::class,"register"]);
    Route::group([
        'middleware' => 'auth:api',
    ], function ($router) {

    });
});
