<?php

namespace Modules\MasterData\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\MasterData\Entities\Kelas;
use RealRashid\SweetAlert\Facades\Alert;
use Modules\MasterData\Entities\Category;
use Illuminate\Contracts\Support\Renderable;

class KelasController extends Controller
{
  /**
   * Display a listing of the resource.
   * @return Renderable
   */
  public function index()
  {
    $title = 'Data Kelas';
    $data = Kelas::with('siswa')->latest()->get();

    $alert = 'Delete Data!';
    $text = "Are you sure you want to delete?";
    confirmDelete($alert, $text);

    return view('masterdata::kelas.index', ['data' => $data, 'title' => $title]);
  }

  /**
   * Show the form for creating a new resource.
   * @return Renderable
   */
  public function create()
  {
    $title = "Create Kelas";
    $data = Category::all();
    return view('masterdata::kelas.create', ['title' => $title, 'data' => $data]);
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
    $newData = Kelas::create($data);

    Alert::success('Success', 'Data berhasil disimpan');
    return redirect()->route('kelas.index');
  }

  /**
   * Show the specified resource.
   * @param int $id
   * @return Renderable
   */
  public function show($id)
  {
    return view('masterdata::show');
  }

  /**
   * Show the form for editing the specified resource.
   * @param int $id
   * @return Renderable
   */
  public function edit($id)
  {
    $title = "Update Kelas";
    $data = Kelas::findOrFail($id);
    $data_category = Category::all();
    return view('masterdata::kelas.edit', ['data' => $data, 'title' => $title, 'data_category' => $data_category]);
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
    $updateData = Kelas::findOrFail($id);
    $updateData->update($data);
    Alert::success('Success', 'Data berhasil diupdate');
    return redirect()->route('kelas.index');
  }

  /**
   * Remove the specified resource from storage.
   * @param int $id
   * @return Renderable
   */
  public function destroy($id)
  {
    $data = Kelas::findOrFail($id);
    if ($data->siswa()->count() > 0) {
      Alert::error('Oops....', 'Data tidak dapat dihapus karena memiliki data siswa');
      return redirect()->route('kelas.index');
    }
    $data->delete();
    Alert::success('Success', 'Data berhasil dihapus');
    return redirect()->route('kelas.index');
  }
}
