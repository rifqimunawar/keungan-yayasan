<?php

namespace App\Exports;

use Modules\MasterData\Entities\Siswa;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;

class SiswaExport implements FromCollection, WithHeadings
{
  /**
   * @return \Illuminate\Support\Collection
   */
  public function collection()
  {
    $siswas = Siswa::with(['kelas', 'tahunMasuk'])->get();

    return $siswas->map(function ($siswa) {
      return [
        'ID' => $siswa->id,
        'No Urut' => $siswa->no_urut,
        'Nama' => $siswa->name,
        'Kelas' => $siswa->kelas->name ?? 'Tidak Ada Kelas',
        'NISN' => $siswa->nisn,
        'Tahun Masuk' => $siswa->tahunMasuk->tahun ?? 'Tidak Ada Tahun',
      ];
    });
  }

  public function headings() : array
  {
    return [
      'ID',
      'No Urut',
      'Nama',
      'Kelas',
      'NISN',
      'Tahun Masuk',
    ];
  }

}
