<?php

namespace Modules\MasterData\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\History\Entities\History;

class KetPembayaran extends Model
{
  use HasFactory, SoftDeletes;

  protected $guarded = [];

  public function histories()
  {
    return $this->hasMany(History::class, 'ketpembayaran_id');
  }
}
