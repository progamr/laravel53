<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    public function isMaxedOut() {
        return false;
    }

    public function isOwenedBy(User $user) {
        // hard code owner_id sense we don't have a database setup
        $this->owner_id = 1;
        return $this->owner_id == $user->id;
    }
}
