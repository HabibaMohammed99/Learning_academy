<?php

use App\Test;
use Illuminate\Database\Seeder;

class TestSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Test::create([
            'name'=>'Kenny Jakubowski',
            'desc'=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus',
            'img'=>'1.png'
        ]);
        Test::create([
            'name'=>'Torrance Reynolds',
            'desc'=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus',
            'img'=>'2.png'
        ]);
        Test::create([
            'name'=>'Hank Harber',
            'desc'=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus',
            'img'=>'3.png'
        ]);
    }
}
