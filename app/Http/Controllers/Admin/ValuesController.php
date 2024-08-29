<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Values;

class ValuesController extends Controller
{
    public function OurValues(){
        $result = Values::get();
        return $result;

    }//end of method
}
