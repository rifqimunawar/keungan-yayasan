<?php

namespace App\Imports;

use Modules\MasterData\Entities\Siswa;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\Importable;

class SiswaImport implements ToModel
{
  use Importable;

  protected $angkatan;
  protected $categoryId;
  protected $kelasId;

  public function __construct($angkatan, $categoryId, $kelasId)
  {
    $this->angkatan = $angkatan;
    $this->categoryId = $categoryId;
    $this->kelasId = $kelasId;
  }

  public function model(array $row)
  {
    // Data yang akan dimasukkan
    $data = [
      'no_urut' => isset($row[0]) ? $row[0] : null,
      'name' => $row[1],
      'nisn' => isset($row[2]) ? $row[2] : null,
      'tahun_masuk_id' => $this->angkatan,
      'category_id' => $this->categoryId,
      'kelas_id' => $this->kelasId,
    ];

    // dd($data);

    // Return the new Siswa object
    return new Siswa($data);
  }

}
