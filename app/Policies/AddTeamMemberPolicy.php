<?php

namespace App\Policies;

use App\Team;
use App\User;

class AddTeamMemberPolicy
{
    protected $team;
    public function __construct(Team $team)
    {
        $this->team = $team;
    }

    public function allows() {
        // if you are not signed in , no way.
        if(auth()->guest()) {
            abort(403, 'you are not signed in.');
        }
        // if you are not the owner of the team no way.
        $this->team->owner_id = 1;
        if($this->team->owner_id !== auth()->user()->id) {
            abort(403, 'you are not the owner of this team');
        }
        // if the team is maxed out , no way.
        if($this->team->isMaxedOut()){
            abort(403, 'your team is maxed out');
        }

    }
}
