<?php

namespace Modules\History\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\History\Entities\History;
use Modules\MasterData\Entities\Siswa;
use Illuminate\Contracts\Support\Renderable;

class HistoryController extends Controller
{
  /**
   * Display a listing of the resource.
   * @return Renderable
   */
  public function index(Request $request)
  {
    $title = 'Tagihan Pembayaran Siswa';
    $search = $request->input('search');
    $from_date = $request->input('from_date');
    $to_date = $request->input('to_date');

    $query = History::with(['siswa.tagihans', 'users']);

    if ($search) {
      if ($search == 1) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 'like', '%SD%');
        });
      } elseif ($search == 2) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 'like', '%SMP%');
        });
      } elseif ($search == 3) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 'like', '%SMK%');
        });
      } elseif ($search == 'custom' && $from_date && $to_date) {
        $query->whereBetween('tanggal_transaksi', [$from_date, $to_date]);
      } else {
        $query->whereDate('tanggal_transaksi', $search);
      }
    }

    $data = $query->latest()->get();

    // Passing 'from_date' and 'to_date' to the view
    return view('history::index', [
      'data' => $data,
      'title' => $title,
      'search' => $search,
      'from_date' => $from_date,
      'to_date' => $to_date
    ]);
  }

}
