<?php

use App\Http\Controllers\AdminCategoryController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardPostController;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home',
    [
        "title" => "Home",
        'active' => 'Home',
        // 'categories' => Category::all(),
    ]);
});
Route::get('/about', function () {
    return view('about',[
        'active' => 'About',
        "title"=>"About",
        "name" => "hanafi",
        "email"=> "riververy@gmail.com",
        "image"=> "fuyutsuki.jpeg"
    ]);
});


// all post
Route::get('/posts',[PostController::class,'index']);
// halaman single post
Route::get('/posts/{post:slug}',[PostController::class, 'show']); 

Route::get('/categories', function() {
    return view('categories', [
        'active'=> 'categories',
        'title' => 'Post categories' ,
        'categories' => Category::all(),
    ]);
});
                                                                                           


Route::get('/login', [LoginController::class, 'index' ])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);

Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index' ])->middleware('guest');    
Route::post('/register', [RegisterController::class, 'store' ]);

Route::get('/dashboard', function(){
    return view('dashboard.index');
})->middleware('auth');


Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');



Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');


Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');