<?php

use App\Trainer;
use Illuminate\Database\Seeder;

class Trainerseeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Trainer::create([
            'name'=>'Habiba Muhammad',
            'spec'=>'web development',
            'img'=>'1.jpg'
        ]);
        Trainer::create([
            'name'=>'Fatma Saad',
            'spec'=>'web development',
            'img'=>'2.jpg'
        ]);
        Trainer::create([
            'name'=>'Aya Mamdouh',
            'spec'=>'english',
            'img'=>'3.jpg'
        ]);
        Trainer::create([
            'name'=>'Ahmed Ali',
            'spec'=>'doctor',
            'img'=>'4.jpg'
        ]);
        Trainer::create([
            'name'=>'Muhammad Ahmed',
            'spec'=>'web design',
            'img'=>'5.jpg'
        ]);
    }
}
