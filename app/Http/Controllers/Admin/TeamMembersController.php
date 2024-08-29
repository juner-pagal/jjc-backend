<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\TeamMembers;

class TeamMembersController extends Controller
{
    public function TeamMembersDetails(){
        $result = TeamMembers::get();
        return $result;

    }//end of method
}
