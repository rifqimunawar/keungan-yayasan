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
        ));
        
        
    }
}