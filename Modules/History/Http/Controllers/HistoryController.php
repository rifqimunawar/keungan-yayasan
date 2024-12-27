<?php

namespace Modules\History\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Maatwebsite\Excel\Facades\Excel;
use Modules\History\Entities\History;
use Modules\MasterData\Entities\Siswa;
use Modules\MasterData\Entities\Category;
use Modules\History\Exports\HistoryExport;
use Illuminate\Contracts\Support\Renderable;

class HistoryController extends Controller
{
  /**
   * Display a listing of the resource.
   * @return Renderable
   */
  public function index(Request $request)
  {
    $title = 'Semua Transaksi Siswa';
    $search = $request->input('search');
    $from_date = $request->input('from_date');
    $to_date = $request->input('to_date');

    $query = History::with(['siswa.tagihans', 'tagihan', 'users']);

    // Filter berdasarkan search
    if ($search) {
      if ($search == 1) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 'like', '%1%');
        });
      } elseif ($search == 2) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 'like', '%2%');
        });
      } elseif ($search == 3) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 'like', '%3%');
        });
      }
    }

    // Filter berdasarkan tanggal
    if ($from_date && $to_date) {
      $query->whereBetween('tanggal_transaksi', [$from_date, $to_date]);
    }

    $data = $query->latest()->get();

    // dd($data);
    return view('history::index', [
      'data' => $data,
      'title' => $title,
      'search' => $search,
      'from_date' => $from_date,
      'to_date' => $to_date
    ]);
  }



  public function transaksiPerSiswa(Request $request)
  {
    $title = 'Rekapitulasi Transaksi Siswa';
    $search = $request->input('search');

    $query = History::with(['siswa', 'users']);

    if ($search) {
      if ($search == 1) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 'like', '%1%');
        });
      } elseif ($search == 2) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 'like', '%2%');
        });
      } elseif ($search == 3) {
        $query->whereHas('siswa', function ($query) {
          $query->where('category_id', 'like', '%3%');
        });
      }
    }

    $data = $query->latest()->get()->unique('siswa_id');

    // dd($data);

    return view('history::transaksiPerSiswa', [
      'data' => $data,
      'title' => $title,
      'search' => $search,
    ]);
  }


  public function invoicePerSiswa(Request $request, $id)
  {
    $data = History::invoicePerSiswa($id);
    $data_siswa = Siswa::findOrFail($id);

    // return response()->json($data);
    return view('history::invoicePerSiswa', ['data' => $data, 'data_siswa' => $data_siswa]);
  }

  public function export(Request $request)
  {
    return Excel::download(new HistoryExport($request), 'pembayaran-siswa.xlsx');
  }

  public function exportKategori($id, Request $request)
  {
    $request->merge(['search' => $id]);
    $category = Category::findOrFail($id);
    return Excel::download(new HistoryExport($request), 'pembayaran-siswa-' . $category->name . '.xlsx');
  }


}
