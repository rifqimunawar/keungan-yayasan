<?php

namespace Modules\MasterData\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Kelas extends Model
{
  use SoftDeletes;

  protected $guarded = ([]);

  public function category()
  {
    return $this->belongsTo(Category::class, 'category_id');
  }

  public function siswa()
  {
    return $this->hasMany(Siswa::class, 'kelas_id');
  }

}
