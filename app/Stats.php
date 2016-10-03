<?php

namespace App;

use App\User;

class Stats
{
    protected $user;
    public function __construct(User $user)
    {
        $this->user = $user;
    }

    public function experience() {
        return 24332;
    }

    public function completions() {
       return 324;
    }

    public function favorites() {
       return 23;
    }


}