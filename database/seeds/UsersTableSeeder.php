<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        \DB::table('users')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Shiblie Bshara',
                'email' => 'shb182@hotmail.com',
                'password' => '$2y$10$p1oImwKOSlWkzz0eLA0hYuPl.95Q0Dz5o.Ytlo9hkt.RI29NCltcS',
                'remember_token' => NULL,
                'created_at' => '2018-09-05 10:05:40',
                'updated_at' => '2018-09-05 10:05:40',
            ),
        ));
        
        
    }
}