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
                'id' => 1,
                'nominal' => 100000,
                'tanggal_transaksi' => '2025-01-03 22:11:32',
                'siswa_id' => 710,
                'tagihan_id' => 7,
                'siswa_tagihan_id' => 533,
                'user_id' => 1,
                'ketpembayaran_id' => 6,
                'deleted_at' => NULL,
                'created_at' => '2025-01-03 22:11:32',
                'updated_at' => '2025-01-03 22:11:32',
            ),
            1 => 
            array (
                'id' => 2,
                'nominal' => 200000,
                'tanggal_transaksi' => '2025-01-04 01:09:05',
                'siswa_id' => 701,
                'tagihan_id' => 7,
                'siswa_tagihan_id' => 524,
                'user_id' => 1,
                'ketpembayaran_id' => 6,
                'deleted_at' => NULL,
                'created_at' => '2025-01-04 01:09:05',
                'updated_at' => '2025-01-04 01:09:05',
            ),
            2 => 
            array (
                'id' => 3,
                'nominal' => 200000,
                'tanggal_transaksi' => '2025-01-04 01:47:55',
                'siswa_id' => 705,
                'tagihan_id' => 7,
                'siswa_tagihan_id' => 528,
                'user_id' => 1,
                'ketpembayaran_id' => 6,
                'deleted_at' => NULL,
                'created_at' => '2025-01-04 01:47:55',
                'updated_at' => '2025-01-04 01:47:55',
            ),
            3 => 
            array (
                'id' => 4,
                'nominal' => 10000,
                'tanggal_transaksi' => '2025-01-04 03:27:36',
                'siswa_id' => 2,
                'tagihan_id' => 11,
                'siswa_tagihan_id' => 626,
                'user_id' => 1,
                'ketpembayaran_id' => 6,
                'deleted_at' => NULL,
                'created_at' => '2025-01-04 03:27:36',
                'updated_at' => '2025-01-04 03:27:36',
            ),
            4 => 
            array (
                'id' => 5,
                'nominal' => 20000,
                'tanggal_transaksi' => '2025-01-04 03:45:29',
                'siswa_id' => 2,
                'tagihan_id' => 11,
                'siswa_tagihan_id' => 626,
                'user_id' => 1,
                'ketpembayaran_id' => 6,
                'deleted_at' => NULL,
                'created_at' => '2025-01-04 03:45:29',
                'updated_at' => '2025-01-04 03:45:29',
            ),
            5 => 
            array (
                'id' => 6,
                'nominal' => 10000,
                'tanggal_transaksi' => '2025-01-04 04:17:44',
                'siswa_id' => 2,
                'tagihan_id' => 11,
                'siswa_tagihan_id' => 626,
                'user_id' => 1,
                'ketpembayaran_id' => 6,
                'deleted_at' => NULL,
                'created_at' => '2025-01-04 04:17:44',
                'updated_at' => '2025-01-04 04:17:44',
            ),
            6 => 
            array (
                'id' => 7,
                'nominal' => 5000,
                'tanggal_transaksi' => '2025-01-04 04:18:35',
                'siswa_id' => 2,
                'tagihan_id' => 11,
                'siswa_tagihan_id' => 626,
                'user_id' => 1,
                'ketpembayaran_id' => 6,
                'deleted_at' => NULL,
                'created_at' => '2025-01-04 04:18:35',
                'updated_at' => '2025-01-04 04:18:35',
            ),
        ));
        
        
    }
}