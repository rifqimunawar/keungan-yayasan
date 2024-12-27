<?php

namespace Modules\History\Entities;

use App\Models\User;
use Illuminate\Support\Facades\DB;
use Modules\MasterData\Entities\Siswa;
use Illuminate\Database\Eloquent\Model;
use Modules\MasterData\Entities\Tagihan;
use Modules\MasterData\Entities\TahunMasuk;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Modules\MasterData\Entities\KetPembayaran;

class History extends Model
{
  use HasFactory, SoftDeletes;

  protected $guarded = ([]);

  public function siswa()
  {
    return $this->belongsTo(Siswa::class, 'siswa_id');
  }

  public function tagihan()
  {
    return $this->belongsTo(Tagihan::class, 'tagihan_id');
  }
  public function tagihans()
  {
    return $this->siswa->tagihans();
  }

  public function users()
  {
    return $this->belongsTo(User::class, 'user_id');
  }

  public function ketPembayaran()
  {
    return $this->belongsTo(KetPembayaran::class, 'ketpembayaran_id');
  }


  // catatan cara mengambil data dari table pivot
//   $histories = History::with(['siswa', 'tahunMasuk', 'tagihan'])->latest()->get();

  // foreach ($histories as $history) {
//     echo 'Siswa: ' . $history->siswa->name;
//     echo 'Tahun Masuk: ' . $history->tahunMasuk->tahun;
//     echo 'Tagihan: ' . $history->tagihan->nama_tagihan;

  //     // Mengakses tagihan dari tabel pivot
//     foreach ($history->tagihans as $tagihan) {
//         echo 'Tagihan dari Pivot: ' . $tagihan->nama_tagihan; // Gantilah 'nama_tagihan' dengan kolom yang sesuai
//     }
// }



  public static function invoicePerSiswa($id)
  {
    return DB::table('histories as h')
      ->join('siswas as s', 'h.siswa_id', '=', 's.id')
      ->join('tagihans as t', 'h.tagihan_id', '=', 't.id')
      ->join('categories as c', 's.category_id', '=', 'c.id')
      ->join('tahun_masuks as tm', 's.tahun_masuk_id', '=', 'tm.id')
      ->join('kelas as k', 's.kelas_id', '=', 'k.id')
      ->join('users as u', 'h.user_id', '=', 'u.id')
      ->select(
        'h.siswa_id',
        'tanggal_transaksi',
        's.name as siswa_nama',
        't.name as tagihan_nama',
        'h.nominal',
        'c.name as siswa_category',
        'tm.tahun as siswa_tahun_masuk',
        'k.name as siswa_kelas',
        'u.name as penerima_transaksi'
      )
      ->where('h.siswa_id', '=', $id)
      ->get();

  }



  // public static function history_transaksi(){
  //   return DB:: ('histories as h')
  //   ->join('')
  // }

}
