<?php

namespace Modules\Pembayaran\Http\Controllers;

use App\Helpers\Fungsi;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\MasterData\Entities\Siswa;
use Modules\MasterData\Entities\Tagihan;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Contracts\Support\Renderable;

class PembayaranController extends Controller
{
  /**
   * Display a listing of the resource.
   * @return Renderable
   */
  public function index()
  {
    $title = 'Data Siswa';
    $data = Siswa::with('tagihans')->get();
    return view('pembayaran::pembayaran.index', ['data' => $data, 'title' => $title]);
  }


  public function show($id)
  {
    $title = "Detail Tagihan";
    $siswa = Siswa::findOrFail($id);
    $tagihan = $siswa->tagihans;

    $alert = 'Anda Yakin!';
    $text = "Siswa tersebut sudah melunasi pembayaran?";
    confirmDelete($alert, $text);

    // dd($tagihan);
    return view('pembayaran::pembayaran.show', [
      'tagihan' => $tagihan,
      'siswa' => $siswa,
      'title' => $title
    ]);
  }

  public function lunas($tagihanId, $siswaId)
  {
    // Temukan tagihan dan siswa berdasarkan ID
    $tagihan = Tagihan::findOrFail($tagihanId);
    $siswa = Siswa::findOrFail($siswaId);

    // Update status di table pivot (siswa_tagihan) menjadi 1 (Lunas) dan simpan nominal yang sudah dibayarkan
    $siswa->tagihans()->updateExistingPivot($tagihan->id, [
      'status' => 1,
      'nominal_tagihan_terbayar' => $tagihan->nominal, // simpan nominal tagihan yang telah terbayar
    ]);

    // Berikan notifikasi keberhasilan
    Alert::success('Success', 'Siswa sudah melunasi tagihannya');

    // Redirect kembali ke halaman pembayaran
    return redirect()->route('pembayaran.show', $siswaId);
  }


  // untuk memasukan tagihan ke semua siswa function dibawha looping
  public function hubungkanTagihanDenganSiswa($tagihanId, $siswaId)
  {
    // Temukan tagihan dan siswa berdasarkan ID
    $tagihan = Tagihan::findOrFail($tagihanId);
    $siswa = Siswa::findOrFail($siswaId);

    // Periksa apakah siswa sudah terhubung dengan tagihan
    if (!$tagihan->siswas->contains($siswa->id)) {
      $tagihan->siswas()->attach($siswa);
    }

    return "Siswa berhasil dihubungkan dengan tagihan.";
  }

}
