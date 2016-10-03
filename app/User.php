<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use App\Completable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable,Completable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function stats() {
        return new Stats($this);
    }

    public function isAdmin() {
        return $this->id == 1;
    }

    // consider view model
    public function present() {
       return new UserPresenter($this);
    }
}
