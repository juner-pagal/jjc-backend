<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubServices extends Model
{
    use HasFactory;
    protected $fillable = [
        'services_id',
        'services_name', 
        'subservices', 
        'subservices_desc',
    ];
}
