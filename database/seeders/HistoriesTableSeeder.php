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
                'id' => 7,
                'nominal' => 300000,
                'tanggal_transaksi' => '2024-11-24 16:40:08',
                'siswa_id' => 1,
                'tagihan_id' => 3,
                'siswa_tagihan_id' => 296,
                'user_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-11-24 16:40:08',
                'updated_at' => '2024-11-24 16:40:08',
            ),
            1 => 
            array (
                'id' => 8,
                'nominal' => 90000,
                'tanggal_transaksi' => '2024-12-11 21:43:38',
                'siswa_id' => 1,
                'tagihan_id' => 3,
                'siswa_tagihan_id' => 296,
                'user_id' => 9,
                'deleted_at' => NULL,
                'created_at' => '2024-12-11 21:43:38',
                'updated_at' => '2024-12-11 21:43:38',
            ),
            2 => 
            array (
                'id' => 9,
                'nominal' => 100000,
                'tanggal_transaksi' => '2024-12-14 04:19:19',
                'siswa_id' => 768,
                'tagihan_id' => 4,
                'siswa_tagihan_id' => 385,
                'user_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-12-14 04:19:19',
                'updated_at' => '2024-12-14 04:19:19',
            ),
            3 => 
            array (
                'id' => 10,
                'nominal' => 100000,
                'tanggal_transaksi' => '2024-12-14 06:07:53',
                'siswa_id' => 1,
                'tagihan_id' => 3,
                'siswa_tagihan_id' => 296,
                'user_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-12-14 06:07:53',
                'updated_at' => '2024-12-14 06:07:53',
            ),
            4 => 
            array (
                'id' => 11,
                'nominal' => 10000,
                'tanggal_transaksi' => '2024-12-14 06:18:20',
                'siswa_id' => 1,
                'tagihan_id' => 3,
                'siswa_tagihan_id' => 296,
                'user_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-12-14 06:18:20',
                'updated_at' => '2024-12-14 06:18:20',
            ),
            5 => 
            array (
                'id' => 12,
                'nominal' => 100000,
                'tanggal_transaksi' => '2024-12-22 01:51:44',
                'siswa_id' => 5,
                'tagihan_id' => 3,
                'siswa_tagihan_id' => 300,
                'user_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-12-22 01:51:44',
                'updated_at' => '2024-12-22 01:51:44',
            ),
            6 => 
            array (
                'id' => 13,
                'nominal' => 100000,
                'tanggal_transaksi' => '2024-12-24 20:25:17',
                'siswa_id' => 10,
                'tagihan_id' => 3,
                'siswa_tagihan_id' => 305,
                'user_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-12-24 20:25:17',
                'updated_at' => '2024-12-24 20:25:17',
            ),
            7 => 
            array (
                'id' => 14,
                'nominal' => 90000,
                'tanggal_transaksi' => '2024-12-25 05:44:09',
                'siswa_id' => 2,
                'tagihan_id' => 3,
                'siswa_tagihan_id' => 297,
                'user_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-12-25 05:44:09',
                'updated_at' => '2024-12-25 05:44:09',
            ),
            8 => 
            array (
                'id' => 15,
                'nominal' => 50000,
                'tanggal_transaksi' => '2024-12-25 05:46:08',
                'siswa_id' => 2,
                'tagihan_id' => 5,
                'siswa_tagihan_id' => 398,
                'user_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-12-25 05:46:08',
                'updated_at' => '2024-12-25 05:46:08',
            ),
            9 => 
            array (
                'id' => 16,
                'nominal' => 90000,
                'tanggal_transaksi' => '2024-12-27 10:16:11',
                'siswa_id' => 1,
                'tagihan_id' => 5,
                'siswa_tagihan_id' => 397,
                'user_id' => 1,
                'deleted_at' => NULL,
                'created_at' => '2024-12-27 10:16:11',
                'updated_at' => '2024-12-27 10:16:11',
            ),
        ));
        
        
    }
}