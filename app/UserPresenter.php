<?php
/**
 * Created by PhpStorm.
 * User: shiftdeveloper
 * Date: 14/09/16
 * Time: 04:09 م
 */

namespace App;
use App\User;
use App\Presenter;

class UserPresenter extends Presenter
{
    public function welcomeMessage() {
        return sprintf('welcome, %s you are signed in for %s.',
                   $this->user->name,
                   $this->user->created_at->diffForHumans()
               );
    }
}