<?php

use App\Course;
use Illuminate\Database\Seeder;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=1; $i <=3 ; $i++) { 
            for ($j=1; $j <=6 ; $j++) { 
                Course::create([
                    'cat_id'=>"$i",
                    'trainer_id'=>rand(1,5),
                    'name'=>"course num $j cat num $i",
                    'small_desc'=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo tempus',
                    'desc'=>'Praesent scelerisque, sem et tristique volutpat, dui nunc faucibus nisi, vitae vulputate est lacus ac dui. Integer consectetur, dolor sit amet blandit porta, neque nunc fringilla massa, vitae auctor magna est vel metus. Etiam fermentum diam at tortor tincidunt congue nec at urna. Donec in nulla id augue iaculis feugiat a elementum ligula. Praesent malesuada elementum tellus et venenatis. Nam interdum quam ut turpis feugiat imperdiet. Cras sagittis augue arcu, in faucibus est ornare nec. Vivamus porttitor iaculis placerat. Mauris vel urna enim. Pellentesque non sem erat. Curabitur sollicitudin, ex at viverra suscipit, felis ligula aliquam est, a efficitur justo ipsum non ex. Pellentesque in pellentesque sem. Etiam consectetur venenatis diam, non tempor est tempor',
                    'price'=>rand(1000,5000),
                    'img'=>"$i$j.png",
                    ]);
            }
        }
    }
}
