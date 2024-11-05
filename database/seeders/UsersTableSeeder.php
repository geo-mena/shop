<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = array(
            array(
                'name' => 'Geovanni Mena',
                'email' => 'admin@mail.com',
                'password' => Hash::make('admin123/*'),
                'role' => 'admin',
                'status' => 'active'
            ),
            array(
                'name' => 'Customer A',
                'email' => 'customer@mail.com',
                'password' => Hash::make('customer123/*'),
                'role' => 'user',
                'status' => 'active'
            ),
        );

        DB::table('users')->insert($data);
    }
}
