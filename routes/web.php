<?php

use Illuminate\Support\Facades\Route;

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
Route::namespace('Front')->group(function(){
    
    Route::get('/','HomepageController@index')->name('front.homepage');
    
    Route::get('/cat/{id}','CourseController@cat')->name('front.cat');
    Route::get('/cat/{id}/course/{c_id}','CourseController@show')->name('front.show');
    
    Route::get('/contact','ContactController@index')->name('front.contact');
    
    Route::post('/message/newsletter','MessageController@newsletter')->name('front.message.newsletter');
    
    Route::post('/message/contact','MessageController@contact')->name('front.message.contact');
    
    Route::post('/message/enroll','MessageController@enroll')->name('front.message.enroll');

});

Route::namespace('Admin')->prefix('dashboard')->group(function(){

    Route::get('/login','AuthController@login')->name('admin.login');
    Route::post('/do-login','AuthController@doLogin')->name('admin.doLogin');
    
    Route::middleware('adminAuth:admin')->group(function(){

        Route::get('/logout','AuthController@logout')->name('admin.logout');      
        Route::get('/','HomeController@index')->name('admin.home');
       
        Route::get('/cats','CatController@index')->name('admin.cats.index');
        Route::get('/cats/create','CatController@create')->name('admin.cats.create');
        Route::post('/cats/store','CatController@store')->name('admin.cats.store');
        Route::get('/cats/edit/{id}','CatController@edit')->name('admin.cats.edit');
        Route::post('/cats/update','CatController@update')->name('admin.cats.update');
        Route::get('/cats/delete/{id}','CatController@delete')->name('admin.cats.delete');
   
        Route::get('/trainers','TrainerController@index')->name('admin.trainers.index');
        Route::get('/trainers/create','TrainerController@create')->name('admin.trainers.create');
        Route::post('/trainers/store','TrainerController@store')->name('admin.trainers.store');
        Route::get('/trainers/edit/{id}','TrainerController@edit')->name('admin.trainers.edit');
        Route::post('/trainers/update','TrainerController@update')->name('admin.trainers.update');
        Route::get('/trainers/delete/{id}','TrainerController@delete')->name('admin.trainers.delete');
   
        Route::get('/courses','CourseController@index')->name('admin.courses.index');
        Route::get('/courses/create','CourseController@create')->name('admin.courses.create');
        Route::post('/courses/store','CourseController@store')->name('admin.courses.store');
        Route::get('/courses/edit/{id}','CourseController@edit')->name('admin.courses.edit');
        Route::post('/courses/update','CourseController@update')->name('admin.courses.update');
        Route::get('/courses/delete/{id}','CourseController@delete')->name('admin.courses.delete');
        
        Route::get('/students','StudentController@index')->name('admin.students.index');
        Route::get('/students/create','StudentController@create')->name('admin.students.create');
        Route::post('/students/store','StudentController@store')->name('admin.students.store');
        Route::get('/students/edit/{id}','StudentController@edit')->name('admin.students.edit');
        Route::post('/students/update','StudentController@update')->name('admin.students.update');
        Route::get('/students/delete/{id}','StudentController@delete')->name('admin.students.delete');
        Route::get('/students/show-courses/{id}','StudentController@showCourses')->name('admin.students.showCourses');
        Route::get('/students/{id}/courses/{c_id}/approve','StudentController@approveCourse')->name('admin.students.approveCourse');
        Route::get('/students/{id}/courses/{c_id}/reject','StudentController@rejectCourse')->name('admin.students.rejectCourse');
        Route::get('/students/{id}/add-course','StudentController@addCourse')->name('admin.students.addCourse');
        Route::post('/students/{id}/store-course','StudentController@storeCourse')->name('admin.students.storeCourse');
   
    });

});