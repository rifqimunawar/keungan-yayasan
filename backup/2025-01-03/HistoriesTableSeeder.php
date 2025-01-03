<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class HistoriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('histories')->delete();
        
        \DB::table('histories')->insert(array (
            0 => 
            array (
                'id' => 22,
                'nominal' => 100000,
                'tanggal_transaksi' => '2024-12-27 15:00:06',
                'siswa_id' => 698,
                'tagihan_id' => 7,
                'siswa_tagihan_id' => 521,
                'user_id' => 1,
                'ketpembayaran_id' => 5,
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 15:00:06',
                'updated_at' => '2024-12-27 15:00:06',
            ),
            1 => 
            array (
                'id' => 23,
                'nominal' => 400000,
                'tanggal_transaksi' => '2024-12-27 15:02:09',
                'siswa_id' => 699,
                'tagihan_id' => 7,
                'siswa_tagihan_id' => 522,
                'user_id' => 1,
                'ketpembayaran_id' => 6,
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 15:02:09',
                'updated_at' => '2024-12-27 15:02:09',
            ),
            2 => 
            array (
                'id' => 24,
                'nominal' => 90000,
                'tanggal_transaksi' => '2024-12-27 15:03:51',
                'siswa_id' => 700,
                'tagihan_id' => 7,
                'siswa_tagihan_id' => 523,
                'user_id' => 1,
                'ketpembayaran_id' => 6,
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 15:03:51',
                'updated_at' => '2024-12-27 15:03:51',
            ),
        ));
        
        
    }
}