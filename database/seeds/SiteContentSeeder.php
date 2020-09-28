<?php

use App\SiteContent;
use Illuminate\Database\Seeder;

class SiteContentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // SiteContent::create([
        //     'name'=>'banner',
        //     'content'=>json_encode([
        //         'title'=>'EVERY CHILD YEARNS TO LEARN',
        //         'subtitle'=>'Making Your Childs World Better',
        //         'desc'=>"Replenish seasons may male hath fruit beast were seas saw you arrie said man beast whales his void unto last session for bite. Set have great you'll male grass yielding yielding man"
        //     ])
        // ]);

        // SiteContent::create([
        //     'name'=>'course',
        //     'content'=>json_encode([
        //         'title'=>'Awesome Feature',
        //         'desc'=>"Set have great you male grass yielding an yielding first their you're have called the abundantly fruit were man"
        //     ])
        // ]);

        // SiteContent::create([
        //     'name'=>'qualified',
        //     'content'=>json_encode([
        //         'title'=>'Qualified Trainers',
        //         'desc'=>"Set have great you male grass yielding an yielding first their you're have called the abundantly fruit were man"
        //     ])
        // ]);
        // SiteContent::create([
        //     'name'=>'oppurtunity',
        //     'content'=>json_encode([
        //         'title'=>'Job Oppurtunity',
        //         'desc'=>"Set have great you male grass yielding an yielding first their you're have called the abundantly fruit were man"
        //     ])
        // ]);
        // SiteContent::create([
        //     'name'=>'better',
        //     'content'=>json_encode([
        //         'title'=>'Better Future',
        //         'desc'=>"Set have great you male grasses yielding yielding first their to called deep abundantly Set have great you male"
        //     ])
        // ]);

         SiteContent::create([
            'name'=>'popularcourses',
            'content'=>json_encode([
                'title'=>'POPULAR COURSES',
                'subtitle'=>"Special Courses"
            ])
        ]);

        SiteContent::create([
            'name'=>'test',
            'content'=>json_encode([
                'title'=>'TESIMONIALS',
                'subtitle'=>" Happy Students"
            ])
        ]);


    }
}
