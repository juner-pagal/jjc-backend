<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\TeamMembers;
use App\Http\Requests\TeamMembersRequest;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;


class TeamMembersController extends Controller
{
    public function TeamMembersDetails(){
        $result = TeamMembers::get();
        return $result;

    }//end of method

    public function store(TeamMembersRequest $request)
    {
        
        try{
            $imageName = Str::random(32).".".$request->image->getClientOriginalExtension();
            
            //Create Services
            TeamMembers::create([
                'image' => $imageName,
                'name' => $request->name,
                'position' => $request->position,
                'desc' => $request->desc,
                
            ]);
            /**
             * Save Image in Storage folder
             */
            Storage::disk('public')->put($imageName, file_get_contents($request->image));

            //Return Json Response
            return response()->json([
                'message' => "Team member Successfully added."
            ],200);

        } catch (\Exception $e){
            //Return Json Response
            return response()->json([
                'message' => "Something went wrong!"
            ],500);
        }
    }

}
