<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class LandingPageSetting extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = [
        'option_key',
        'option_value'
    ];
}
