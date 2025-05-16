<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Experience extends Model
{
    use HasFactory;

    protected $fillable = [
        'start_year',
        'end_year',
        'is_present',
        'position',
        'company',
        'location',
        'description',
    ];

    /**
     * The attributes that should be cast.
     */
    protected $casts = [
        'is_present' => 'boolean',
        'start_year' => 'integer',
        'end_year' => 'integer',
    ];
}
