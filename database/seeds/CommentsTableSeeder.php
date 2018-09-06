<?php

use Illuminate\Database\Seeder;

class CommentsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('comments')->delete();
        
        \DB::table('comments')->insert(array (
            0 => 
            array (
                'id' => 1,
                'post_id' => 1,
                'user_id' => 1,
                'body' => 'This is my first comment using tinker',
                'created_at' => '2018-09-05 12:56:05',
                'updated_at' => '2018-09-05 12:56:05',
            ),
        ));
        
        
    }
}