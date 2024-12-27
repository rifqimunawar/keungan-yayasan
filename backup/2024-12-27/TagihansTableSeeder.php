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
                'id' => 3,
                'name' => 'Uang Bangunan',
                'nominal' => 500000,
                'category_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-11-24 16:39:17',
                'updated_at' => '2024-11-24 16:39:17',
            ),
            1 => 
            array (
                'id' => 4,
                'name' => 'SPP SMP',
                'nominal' => 200000,
                'category_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2024-12-14 04:18:25',
                'updated_at' => '2024-12-14 04:18:25',
            ),
            2 => 
            array (
                'id' => 5,
                'name' => 'Hamba Allah',
                'nominal' => 300000,
                'category_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-12-25 05:45:20',
                'updated_at' => '2024-12-25 05:45:20',
            ),
            3 => 
            array (
                'id' => 6,
                'name' => 'prabowo',
                'nominal' => 50000,
                'category_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-12-25 05:47:58',
                'updated_at' => '2024-12-25 05:47:58',
            ),
        ));
        
        
    }
}