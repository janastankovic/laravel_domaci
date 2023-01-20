<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ParfemKontroler;
use App\Http\Controllers\KorisnikKontroler;
use App\Http\Controllers\AutentifikacijaKontroler;
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

//ovim rutama pristupaju svi, nisu zasticene
Route::get('parfemi', [ParfemKontroler::class, 'index']);
Route::get('parfemi/{parfem}', [ParfemKontroler::class, 'show']);

Route::get('korisnik', [KorisnikKontroler::class, 'index']);


//rute za logovanje  i pravljenje novog korisnika
Route::post('register', [AutentifikacijaKontroler::class, 'register']);
Route::post('login', [AutentifikacijaKontroler::class, 'login']);

//zasticene rute
Route::group(['middleware' => ['auth:sanctum']], function(){
    Route::delete('parfemi/{parfem}', [ParfemKontroler::class, 'destroy']);
    Route::put('parfemi/{parfem}', [ParfemKontroler::class, 'update']);
    Route::delete('korisnik/{korisnik}', [KorisnikKontroler::class, 'destroy']);
    Route::post('logout', [AutentifikacijaKontroler::class, 'logout']);
});



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
