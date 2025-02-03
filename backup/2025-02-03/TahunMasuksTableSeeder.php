<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TahunMasuksTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tahun_masuks')->delete();
        
        \DB::table('tahun_masuks')->insert(array (
            0 => 
            array (
                'id' => 1,
                'tahun' => '2017/2018',
                'deleted_at' => '2024-09-20 21:28:22',
                'created_at' => '2024-08-21 09:38:34',
                'updated_at' => '2024-09-20 21:28:22',
            ),
            1 => 
            array (
                'id' => 2,
                'tahun' => '2018/2019',
                'deleted_at' => NULL,
                'created_at' => '2024-08-21 09:38:49',
                'updated_at' => '2024-08-21 09:40:09',
            ),
            2 => 
            array (
                'id' => 3,
                'tahun' => '2019/2020',
                'deleted_at' => NULL,
                'created_at' => '2024-08-21 09:39:00',
                'updated_at' => '2024-08-21 09:40:25',
            ),
            3 => 
            array (
                'id' => 4,
                'tahun' => '2020/2021',
                'deleted_at' => NULL,
                'created_at' => '2024-08-21 09:40:49',
                'updated_at' => '2024-08-21 09:40:49',
            ),
            4 => 
            array (
                'id' => 5,
                'tahun' => '2021/2022',
                'deleted_at' => NULL,
                'created_at' => '2024-08-21 09:41:02',
                'updated_at' => '2024-08-21 09:41:02',
            ),
            5 => 
            array (
                'id' => 6,
                'tahun' => '2022/2023',
                'deleted_at' => NULL,
                'created_at' => '2024-08-21 09:41:15',
                'updated_at' => '2024-08-21 09:41:15',
            ),
            6 => 
            array (
                'id' => 7,
                'tahun' => '2023/2024',
                'deleted_at' => NULL,
                'created_at' => '2024-08-21 09:41:38',
                'updated_at' => '2024-08-21 09:41:38',
            ),
            7 => 
            array (
                'id' => 8,
                'tahun' => '2024/2025',
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:28:19',
                'updated_at' => '2024-09-20 17:28:19',
            ),
        ));
        
        
    }
}