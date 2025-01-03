<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TagihansTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tagihans')->delete();
        
        \DB::table('tagihans')->insert(array (
            0 => 
            array (
                'id' => 7,
                'name' => 'SPP SMP Januari 2024',
                'nominal' => 300000,
                'category_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 14:58:04',
                'updated_at' => '2024-12-27 14:58:04',
            ),
            1 => 
            array (
                'id' => 8,
                'name' => 'SPP SMP Februari 2024',
                'nominal' => 300000,
                'category_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 14:58:27',
                'updated_at' => '2024-12-27 14:58:27',
            ),
            2 => 
            array (
                'id' => 9,
                'name' => 'Denda',
                'nominal' => 100000,
                'category_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 15:03:12',
                'updated_at' => '2024-12-27 15:03:12',
            ),
        ));
        
        
    }
}