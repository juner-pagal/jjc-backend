<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhatWeDo;

class WhatWeDoController extends Controller
{
    public function WhatWeDoDetails(){
        $result = WhatWeDo::get();
        return $result;
    }//end of method
}
