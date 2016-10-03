<?php

namespace App\Policies;

use App\User;
use App\Team;
use Illuminate\Auth\Access\HandlesAuthorization;

class TeamMemberPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /*public function before(User $user){
        if($user->isAdmin())
            return true;
    }*/

    public function store(User $user, Team $team) {
        if(auth()->guest()) {
            abort(403, 'you are not signed in.');
        }
        // if you are not the owner of the team no way.
        $team->owner_id = 1;
        if(!$team->isOwenedBy($user)) {
            abort(403, 'you are not the owner of this team');
        }
        // if the team is maxed out , no way.
        if($team->isMaxedOut()){
            abort(403, 'your team is maxed out');
        }
        return true;
    }
}
