<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class KelasTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('kelas')->delete();
        
        \DB::table('kelas')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Kelas I',
                'category_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 16:31:56',
                'updated_at' => '2024-09-20 16:31:56',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'Kelas II',
                'category_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 16:32:24',
                'updated_at' => '2024-09-20 17:09:02',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'Kelas III',
                'category_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 16:32:48',
                'updated_at' => '2024-09-20 17:08:51',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'Kelas IV',
                'category_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 16:33:01',
                'updated_at' => '2024-09-20 17:08:42',
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'Kelas V',
                'category_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 16:33:10',
                'updated_at' => '2024-09-20 17:08:33',
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'Kelas VI',
                'category_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:04:02',
                'updated_at' => '2024-09-20 17:08:23',
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'Kelas VII',
                'category_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:05:13',
                'updated_at' => '2024-09-20 17:08:13',
            ),
            7 => 
            array (
                'id' => 8,
                'name' => 'Kelas VIII',
                'category_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:05:26',
                'updated_at' => '2024-09-20 17:08:03',
            ),
            8 => 
            array (
                'id' => 9,
                'name' => 'Kelas IX',
                'category_id' => 2,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:05:37',
                'updated_at' => '2024-09-20 17:07:54',
            ),
            9 => 
            array (
                'id' => 10,
                'name' => 'Kelas X TKR',
                'category_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:06:04',
                'updated_at' => '2024-09-20 17:07:43',
            ),
            10 => 
            array (
                'id' => 11,
                'name' => 'Kelas X TKJ 1',
                'category_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:07:01',
                'updated_at' => '2024-09-20 17:07:35',
            ),
            11 => 
            array (
                'id' => 12,
                'name' => 'Kelas X TKJ 2',
                'category_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:07:22',
                'updated_at' => '2024-09-20 17:07:22',
            ),
            12 => 
            array (
                'id' => 13,
                'name' => 'Kelas XI TKR',
                'category_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:09:34',
                'updated_at' => '2024-09-20 17:10:01',
            ),
            13 => 
            array (
                'id' => 14,
                'name' => 'Kelas XI TKJ',
                'category_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:09:53',
                'updated_at' => '2024-09-20 17:09:53',
            ),
            14 => 
            array (
                'id' => 15,
                'name' => 'Kelas XII TKR 1',
                'category_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:10:29',
                'updated_at' => '2024-09-20 17:10:29',
            ),
            15 => 
            array (
                'id' => 16,
                'name' => 'Kelas XII TKR 2',
                'category_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:10:50',
                'updated_at' => '2024-09-20 17:10:50',
            ),
            16 => 
            array (
                'id' => 17,
                'name' => 'Kelas XII TKJ 1',
                'category_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:11:07',
                'updated_at' => '2024-09-20 17:11:07',
            ),
            17 => 
            array (
                'id' => 18,
                'name' => 'Kelas XII TKJ 2',
                'category_id' => 3,
                'deleted_at' => NULL,
                'created_at' => '2024-09-20 17:11:27',
                'updated_at' => '2024-09-20 17:11:27',
            ),
        ));
        
        
    }
}