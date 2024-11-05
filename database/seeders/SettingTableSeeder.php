<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SettingTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = array(
            'description' => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et quam in metus aliquet pharetra. Nullam nec purus ut nunc.",
            'short_des' => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            'photo' => "image.jpg",
            'logo' => 'logo.jpg',
            'address' => "115 Test Street, Test Country",
            'email' => "geomenacontact@gmail.com",
            'phone' => "1234567777",
        );
        DB::table('settings')->insert($data);
    }
}
