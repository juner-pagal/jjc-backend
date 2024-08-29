<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\FuelingBrand;

class FuelingBrandController extends Controller
{
    public function FuelingBrand(){
        $result = FuelingBrand::get();
        return $result;

    }//end of method
}
