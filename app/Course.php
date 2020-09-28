<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use PhpParser\Node\Expr\FuncCall;

class Course extends Model
{
    protected $guarded = ['id'];
    
    public function cat(){
        return $this->belongsTo('App\Cat');
    }

    public function trainer(){
        return $this->belongsTo('App\Trainer');
    }

    public function students(){
        return $this->hasMany('App\Student');
    }
}
