<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NewsLetter extends Model
{
    protected $guarede = ['id'];

    protected $fillable = ['email'];
    
}
