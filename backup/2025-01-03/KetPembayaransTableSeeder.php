<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class KetPembayaransTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('ket_pembayarans')->delete();
        
        \DB::table('ket_pembayarans')->insert(array (
            0 => 
            array (
                'id' => 5,
                'title' => 'Beasiswa',
                'deskripsi' => '---',
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 14:59:47',
                'updated_at' => '2024-12-27 14:59:47',
            ),
            1 => 
            array (
                'id' => 6,
                'title' => 'Reguler',
                'deskripsi' => '-',
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 15:01:44',
                'updated_at' => '2024-12-27 15:01:44',
            ),
        ));
        
        
    }
}