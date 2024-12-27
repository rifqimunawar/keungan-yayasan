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
                'id' => 1,
                'title' => 'Beasiswa Update',
                'deskripsi' => 'beasiswa 50% Update',
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 10:38:32',
                'updated_at' => '2024-12-27 10:44:01',
            ),
            1 => 
            array (
                'id' => 2,
                'title' => 'beasiswa anak pintar indonesia',
                'deskripsi' => 'bla bla bla',
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 10:55:59',
                'updated_at' => '2024-12-27 10:55:59',
            ),
            2 => 
            array (
                'id' => 3,
                'title' => 'BPJS Kesehatan',
                'deskripsi' => 'bps',
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 11:17:43',
                'updated_at' => '2024-12-27 11:17:43',
            ),
            3 => 
            array (
                'id' => 4,
                'title' => 'UMUM',
                'deskripsi' => 'siswa umum',
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 11:17:57',
                'updated_at' => '2024-12-27 11:17:57',
            ),
        ));
        
        
    }
}