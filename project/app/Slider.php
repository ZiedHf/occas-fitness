<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $fillable = ['title', 'text', 'link', 'image', 'text_position','status'];
    public $timestamps = false;
}
