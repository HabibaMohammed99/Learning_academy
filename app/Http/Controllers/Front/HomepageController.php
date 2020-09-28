<?php

namespace App\Http\Controllers\Front;

use App\Course;
use App\Student;
use App\Trainer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SiteContent;
use App\Test;

class HomepageController extends Controller
{
    public function index()
    {
        $data ['banner'] = SiteContent::select('content')->where('name','banner')->first();
        $data ['better'] = SiteContent::select('content')->where('name','better')->first();
        $data ['course'] = SiteContent::select('content')->where('name','course')->first();
        $data ['qualified'] = SiteContent::select('content')->where('name','qualified')->first();
        $data ['oppurtunity'] = SiteContent::select('content')->where('name','oppurtunity')->first();
        $data ['popularcourses'] = SiteContent::select('content')->where('name','popularcourses')->first();
        $data ['test'] = SiteContent::select('content')->where('name','test')->first();

        $data['courses'] = Course::select('id','name','small_desc','cat_id','trainer_id','img','price')
        ->orderBy('id','desc')
        ->take(3)
        ->get();
        $data['courses_count']= Course::count();
        $data['trainers_count']= Trainer::count();
        $data['students_count']= Student::count();
        $data['tests'] = Test::select('name','spec','desc','img')->get();
        return view('front.index',$data);
    }
}
