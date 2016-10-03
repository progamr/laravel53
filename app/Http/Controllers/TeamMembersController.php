<?php

namespace App\Http\Controllers;

use App\Policies\AddTeamMemberPolicy;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Team;

class TeamMembersController extends Controller
{
    /**
     * add a new member to a given team
     * @param Team $team
     */
    public function store(Team $team) {
        //(new AddTeamMemberPolicy($team))->allows(); manual policy
        $this->authorize('store',$team);// laravel policy
        return 'add the user to the team';
    }
}
