<?php
use App\Notifications\LessonPublished;
use App\Notifications\SubscriptionCanceled;
use App\Notifications\LessonUpdated;
use \App\Http\Forms\PublishFormObject;  // consider form objects

$user = Auth::loginUsingId(1);
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/






Route::get('/', function () {
    //$lesson = \App\Lesson::first();
    //Auth::user()->notify(new LessonUpdated($lesson));
    //$users = \App\User::paginate(4);
    //return view('welcome', compact('users'));
    /**
     * whip monstrous code
     */
    // consider form object
    return view('formObj');

});
// consider form object
Route::post('/posts', function(\App\Http\Requests\PublishPostForm $form) {
   //PublishPostForm
    //$form = new $this->persist()t;

    $form->persist();

    return 'success';
});
// consider use cases
Route::get('purchases', 'PurchasesController@store');
// consider policies
Route::get('members', 'TeamMembersController@store');
// consider view model
Route::get('user', 'UsersController@home');















Route::post('avatars', function(){
    //request()->file('avatar')->store('pics'); // easy way
    // detailed way
    $file = request()->file('avatar');
    $ext = $file->extension();
    $path = $file->storeAs('avatars/'.auth()->id(), "avatar.{$ext}");
    back();
    session(['key', ]);
    cache();
});
