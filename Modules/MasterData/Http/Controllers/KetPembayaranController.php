<?php

namespace Modules\MasterData\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Contracts\Support\Renderable;
use Modules\MasterData\Entities\KetPembayaran;

class KetPembayaranController extends Controller
{
  public function index()
  {
    $title = 'Data Keterangan Pembayaran';
    $data = KetPembayaran::latest()->get();

    $alert = 'Delete Data!';
    $text = "Are you sure you want to delete?";
    confirmDelete($alert, $text);

    return view('masterdata::ket-pembayaran.index', ['data' => $data, 'title' => $title]);
  }

  /**
   * Show the form for creating a new resource.
   * @return Renderable
   */
  public function create()
  {
    $title = "Create Keterangan Pembayaran";
    $data = KetPembayaran::all();
    return view('masterdata::ket-pembayaran.create', ['title' => $title, 'data' => $data]);
  }

  /**
   * Store a newly created resource in storage.
   * @param Request $request
   * @return Renderable
   */
  public function store(Request $request)
  {

    // dd($request);

    $data = $request->all();
    KetPembayaran::create($data);

    Alert::success('Success', 'Data berhasil disimpan');
    return redirect()->route('ketpembayaran.index');
  }

  public function show($id)
  {
    $data = KetPembayaran::with('histories.siswa')->findOrFail($id);
    $title = "List data pembayaran dengan keterangan " . $data['title'];

    // dd($data);
    return view('masterdata::ket-pembayaran.show', ['data' => $data, 'title' => $title]);
  }

  /**
   * Show the form for editing the specified resource.
   * @param int $id
   * @return Renderable
   */
  public function edit($id)
  {
    $title = "Update Keterangan Pembayaran";
    $data = KetPembayaran::findOrFail($id);
    return view('masterdata::ket-pembayaran.edit', ['data' => $data, 'title' => $title]);
  }

  /**
   * Update the specified resource in storage.
   * @param Request $request
   * @param int $id
   * @return Renderable
   */
  public function update(Request $request, $id)
  {
    $data = $request->all();
    $updateData = KetPembayaran::findOrFail($id);
    $updateData->update($data);
    Alert::success('Success', 'Data berhasil diupdate');
    return redirect()->route('ketpembayaran.index');
  }

  /**
   * Remove the specified resource from storage.
   * @param int $id
   * @return Renderable
   */
  public function destroy($id)
  {
    $data = KetPembayaran::findOrFail($id);
    if ($data->histories()->count() > 0) {
      Alert::error('Oops....', 'Data tidak dapat dihapus karena memiliki data pembayaran');
      return redirect()->route('ketpembayaran.index');
    }
    $data->delete();
    Alert::success('Success', 'Data berhasil dihapus');
    return redirect()->route('ketpembayaran.index');
  }
}
