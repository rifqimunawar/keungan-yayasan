<?php

namespace Modules\History\Exports;

use App\Helpers\Fungsi;
use Illuminate\Http\Request;
use Modules\History\Entities\History;
use Modules\MasterData\Entities\Siswa;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;

class HistoryExport implements FromCollection, WithHeadings
{
  /**
   * @return \Illuminate\Support\Collection
   */
  protected $request;

  public function __construct(Request $request)
  {
    $this->request = $request;
  }


  public function collection()
  {
    $search = $this->request->input('search');
    $from_date = $this->request->input('from_date');
    $to_date = $this->request->input('to_date');

    $query = History::with(['siswa.tagihans', 'users']);

    if ($search) {
      if ($search == 1) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 1);
        });
      } elseif ($search == 2) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 2);
        });
      } elseif ($search == 3) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 3);
        });
      }
    }
    if ($from_date && $to_date) {
      $query->whereBetween('tanggal_transaksi', [$from_date, $to_date]);
    }
    $data = $query->latest()->get();
    return $data->map(function ($history) {
      return [
        'ID' => $history->id,
        'Nama' => $history->siswa->name ?? 'N/A',
        'Kelas' => $history->siswa->kelas->name ?? 'Tidak Ada Kelas',
        'NISN' => $history->siswa->nisn ?? 'Tidak Ada NISN',
        'Tahun Masuk' => $history->siswa->tahunMasuk->tahun ?? 'Tidak Ada Tahun',
        'Tagihan' => $history->tagihan->name ?? 'Tidak Ada Tagihan',
        'Tgl Transaksi' => \Carbon\Carbon::parse($history->tanggal_transaksi)->translatedFormat('d F Y') ?? 'Tidak Ada Tanggal',
        'Nominal' => Fungsi::rupiah($history->nominal) ?? 'Tidak Ada Nominal',
        'TU Penerima' => $history->users->name ?? 'Tidak Ada TU Penerima',
      ];
    });
  }

  public function headings() : array
  {
    $search = $this->request->input('search');

    $headerTitle = 'Laporan Pembayaran - ';
    switch ($search) {
      case 1:
        $headerTitle .= 'SD';
        break;
      case 2:
        $headerTitle .= 'SMP';
        break;
      case 3:
        $headerTitle .= 'SMK';
        break;
      default:
        $headerTitle .= 'Semua Jenjang';
        break;
    }
    ;
    return [
      'ID',
      'Nama',
      'Kelas',
      'NISN',
      'Tahun Masuk',
      'Tagihan',
      'Tgl Transaksi',
      'Nominal',
      'TU Penerima',
    ];
  }
  public function title() : string
  {
    return 'Laporan Pembayaran';
  }
}
