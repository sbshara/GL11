<?php

use Illuminate\Database\Seeder;

class PostsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('posts')->delete();
        
        \DB::table('posts')->insert(array (
            0 => 
            array (
                'id' => 1,
                'title' => 'Post (1)',
                'user_id' => 1,
                'body' => '<p>This is post 1</p>',
                'created_at' => '2018-09-05 12:35:21',
                'updated_at' => '2018-09-05 12:35:21',
            ),
        ));
        
        
    }
}