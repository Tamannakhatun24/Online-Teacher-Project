<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Frontend\SiteController;
use App\Http\Controllers\Backend\BackendController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Backend\Categories_topics_controller;
use App\Http\Controllers\Backend\CategoriesController;
use App\Http\Controllers\Backend\Add_job_post_Controller;
use App\Http\Controllers\StripeController;


// Frontend web route start

Route::get('/', [SiteController::class, 'index']);
Route::get('/find_tutor', [SiteController::class, 'find_tutor'])->name('find_tutor');
Route::get('/job_board', [SiteController::class, 'job_board'])->name('job_board');
Route::get('/hire_tutor', [SiteController::class, 'hire_tutor'])->name('hire_tutor');
Route::get('/about', [SiteController::class, 'about'])->name('about');
Route::get('/faq', [SiteController::class, 'faq'])->name('faq');
Route::post('/apply_job', [SiteController::class, 'apply_job'])->name('apply_job');
Route::get('/tutor_details/{id}', [SiteController::class, 'tutor_details']);
Route::get('/categories/{id}', [SiteController::class, 'categories']);
Route::post('/search/tutor', [SiteController::class, 'search']);
Route::post('/tusion_apply', [SiteController::class, 'tusion_apply']);
Route::post('/send_message', [SiteController::class, 'send_message']);
Route::post('/job_board', [SiteController::class, 'job_board']);

Route::get('/stripe-payment/{id}', [StripeController::class, 'handleGet']);
Route::post('/stripe-payment', [StripeController::class, 'handlePost'])->name('stripe.payment');



Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Frontend web route end


// Backend route all Start

Route::prefix('Backend')->name('Backend')->middleware(['auth', 'checkrole'])->group(function(){
  // categories_topics route start
  Route::get('/add/categories_topics', [Categories_topics_controller::class, 'index'])->name('/categories_topics');
  Route::post('/add/categories_topics', [Categories_topics_controller::class, 'store'])->name('/add_categories_topics');
  Route::get('/delete/categories_topics/{id}', [Categories_topics_controller::class, 'destroy']);
  Route::get('/edit/categories_topics/{id}', [Categories_topics_controller::class, 'edit']);
  Route::put('/update/categories_topics/{id}', [Categories_topics_controller::class, 'update'])->name('/categories_topics_update');

  // categories_topics route end

  // categories  route Start
  Route::get('/add/categories', [CategoriesController::class, 'index'])->name('/categories');
  Route::post('/add/categories', [CategoriesController::class, 'store'])->name('/add_categories');
  Route::get('/delete/categories/{id}', [CategoriesController::class, 'destroy']);
  Route::get('/edit/categories/{id}', [CategoriesController::class, 'edit']);
  Route::put('/update/categories/{id}', [CategoriesController::class, 'update'])->name('/categories_update');
  // categories  route end


  // Add_job_post  route start
Route::get('/Add_job_post', [Add_job_post_Controller::class, 'index'])->name('/Add_job_post');

Route::get('/delete/add_job_post/{id}', [Add_job_post_Controller::class, 'destroy']);
Route::get('/edit/add_job_post/{id}', [Add_job_post_Controller::class, 'edit']);
Route::put('/update_job_post/{id}', [Add_job_post_Controller::class, 'update'])->name('/update_job_post');

  // Add_job_post  route end

  // student and tutor  route startF


Route::get('/delete/student/{id}', [Add_job_post_Controller::class, 'dlt_student']);
Route::get('/delete/tutore/{id}', [Add_job_post_Controller::class, 'dlt_tutore']);

// student and tutor  route end


Route::get('/message', [Add_job_post_Controller::class, 'message']);
Route::get('/complain_message', [Add_job_post_Controller::class, 'complain_message']);
Route::get('hire_a_tutor', [Add_job_post_Controller::class, 'hire_a_tutor']);
Route::get('/inactive/{id}', [Add_job_post_Controller::class, 'inactive']);
Route::get('/active/{id}', [Add_job_post_Controller::class, 'active']);





});

Route::get('Dashboard/student', [Add_job_post_Controller::class, 'student_dashboard']);
Route::get('Dashboard/tutore', [Add_job_post_Controller::class, 'tutor_dashboard']);

Route::get('Dashboard/inactive/{id}', [HomeController::class, 'inactive']);
Route::get('Dashboard/active/{id}', [HomeController::class, 'active']);
Route::get('Dashboard/delete/{id}', [HomeController::class, 'destroy']);
Route::post('Backend/add_job_posts_insert', [Add_job_post_Controller::class, 'store'])->name('Backend/add_job_posts_insert');
// Backend route all end

Route::get('Backend/add_information', [BackendController::class, 'add_information']);
Route::post('Backend/add_information_insert', [BackendController::class, 'add_information_insert'])->name('Backend/add_information_insert');
Route::get('Dashboard/edit_information/{id}', [BackendController::class, 'edit_information']);
Route::post('Backend/information_update', [BackendController::class, 'information_update']);


Route::get('complain/{id}', [Add_job_post_Controller::class, 'complain']);
Route::post('complain_insert', [Add_job_post_Controller::class, 'complain_insert']);

Route::get('rating/{id}', [Add_job_post_Controller::class, 'rating']);
Route::post('rating_insert', [Add_job_post_Controller::class, 'rating_insert']);
