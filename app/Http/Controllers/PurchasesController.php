<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//use App\UseCases\PurchasePodcast;
use App\Jobs\PurchasePodcast;

use App\Http\Requests;

class PurchasesController extends Controller
{
    //

    public function store() {
        //PurchasePodcast::perform();
        // laravel way
        dispatch(new PurchasePodcast);
        return 'Done';
        // different
        //operations
        // for purchasing
        // the podcast
    }
}
