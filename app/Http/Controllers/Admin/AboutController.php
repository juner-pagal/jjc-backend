<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\About;

class AboutController extends Controller
{
    public function AboutInfo(){
        $result = About::get();
        return $result;

    }//end of method
}
