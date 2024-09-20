<?php

namespace Modules\MasterData\Http\Controllers;

use App\Exports\SiswaExport;
use App\Imports\SiswaImport;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Exports\SiswaCategoryExport;
use Maatwebsite\Excel\Facades\Excel;
use Modules\MasterData\Entities\Kelas;
use Modules\MasterData\Entities\Siswa;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Modules\MasterData\Entities\Category;
use Modules\MasterData\Entities\TahunMasuk;
use Illuminate\Contracts\Support\Renderable;

class SiswaController extends Controller
{
  /**
   * Display a listing of the resource.
   * @return Renderable
   */
  public function index(Request $request)
  {
    $title = 'Data Siswa';
    $search = $request->input('search');

    if ($search) {
      $data = Siswa::with(['tahunMasuk', 'category'])
        ->where('category_id', 'like', '%' . $search . '%')
        ->latest()
        ->get();
    } else {
      $data = Siswa::with(['tahunMasuk', 'category'])->get();
    }

    return view('masterdata::siswa.index', [
      'data' => $data,
      'title' => $title
    ]);
  }


  /**
   * Show the form for creating a new resource.
   * @return Renderable
   */
  public function create()
  {
    $title = "Siswa Baru";
    $data = TahunMasuk::latest()->get();
    $data_category = Category::with('kelas')->get();
    $data_kelas = Kelas::latest()->get();

    return view('masterdata::siswa.create', [
      'data' => $data,
      'title' => $title,
      'data_category' => $data_category,
      'data_kelas' => $data_kelas
    ]);
  }
  /**
   * Store a newly created resource in storage.
   * @param Request $request
   * @return Renderable
   */
  public function store(Request $request)
  {
    $validator = Validator::make($request->all(), [
      'tahun_masuk_id' => 'required|exists:tahun_masuks,id',
    ], [
      'name.required' => 'Nama wajib diisi.',
      'tahun_masuk_id.required' => 'Tahun Masuk wajib dipilih.',
      'tahun_masuk_id.exists' => 'Tahun Masuk yang dipilih tidak valid.',
    ]);

    if ($validator->fails()) {
      return redirect()->back()
        ->withErrors($validator)
        ->withInput();
    }

    list($category_id, $kelas_id) = explode('_', $request->input('category_id_kelas_id'));

    $newData = Siswa::create([
      'name' => $request->input('name'),
      'nisn' => $request->input('nisn'),
      'no_urut' => $request->input('no_urut'),
      'tahun_masuk_id' => $request->input('tahun_masuk_id'),
      'category_id' => $category_id,
      'kelas_id' => $kelas_id,
    ]);

    Alert::success('Success', 'Data berhasil disimpan');
    return redirect()->route('siswa.index');
  }



  /**
   * Show the specified resource.
   * @param int $id
   * @return Renderable
   */
  public function show($id)
  {
    return view('masterdata::siswa.show');
  }

  /**
   * Show the form for editing the specified resource.
   * @param int $id
   * @return Renderable
   */
  public function edit($id)
  {
    $title = "Update Siswa";
    $data = Siswa::findOrFail($id);
    $tahun_masuk = TahunMasuk::latest()->get();
    $data_category = Category::with('kelas')->get(); // Pastikan juga mengirim data category dan kelas
    return view('masterdata::siswa.edit', [
      'tahun_masuk' => $tahun_masuk,
      'data' => $data,
      'title' => $title,
      'data_category' => $data_category
    ]);
  }


  /**
   * Update the specified resource in storage.
   * @param Request $request
   * @param int $id
   * @return Renderable
   */
  public function update(Request $request, $id)
  {
    $validator = Validator::make($request->all(), [
      'tahun_masuk_id' => 'required|exists:tahun_masuks,id',
    ], [
      'name.required' => 'Nama wajib diisi.',
      'tahun_masuk_id.required' => 'Tahun Masuk wajib dipilih.',
      'tahun_masuk_id.exists' => 'Tahun Masuk yang dipilih tidak valid.',
    ]);

    if ($validator->fails()) {
      return redirect()->back()
        ->withErrors($validator)
        ->withInput();
    }

    $updateData = Siswa::findOrFail($id);

    list($category_id, $kelas_id) = explode('_', $request->input('category_id_kelas_id'));

    $updateData->update([
      'name' => $request->input('name'),
      'nisn' => $request->input('nisn'),
      'no_urut' => $request->input('no_urut'),
      'tahun_masuk_id' => $request->input('tahun_masuk_id'),
      'category_id' => $category_id,
      'kelas_id' => $kelas_id,
    ]);

    Alert::success('Success', 'Data berhasil diupdate');
    return redirect()->route('siswa.index');
  }


  /**
   * Remove the specified resource from storage.
   * @param int $id
   * @return Renderable
   */
  public function destroy($id)
  {
    $data = Siswa::findOrFail($id);
    if ($data->tagihans()->count() > 0) {
      Alert::error('Oops....', 'Data tidak dapat dihapus karena memiliki tagihan');
      return redirect()->route('siswa.index');
    }
    $data->delete();
    Alert::success('Success', 'Data berhasil dihapus');
    return redirect()->route('siswa.index');
  }

  public function createImport()
  {
    $title = 'Data Siswa';
    $tahun = TahunMasuk::latest()->get();
    $data_category = Category::with('kelas')->get();
    $data_kelas = Kelas::latest()->get();
    return view('masterdata::siswa.create-import', ['tahun' => $tahun, 'title' => $title, 'data_category' => $data_category, 'data_kelas' => $data_kelas]);
  }

  public function import(Request $request)
  {
    $validator = Validator::make($request->all(), [
      'file' => 'required|mimes:xlsx,csv,xls',
      'angkatan' => 'required',
      'kelas_id' => 'required',
    ]);

    if ($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput();
    }

    $kelas_id = $request->input('kelas_id');

    $kelas = Kelas::with('category')->findOrFail($kelas_id);
    $category_id = $kelas->category->id;

    try {
      Excel::import(new SiswaImport($request->angkatan, $category_id, $kelas_id), $request->file('file'));

      Alert::success('Success', 'Data berhasil diimpor');
    } catch (\Exception $e) {
      Alert::error('Oops...', 'Terjadi kesalahan: ' . $e->getMessage());
      return redirect()->route('siswa.createImport');
    }

    return redirect()->route('siswa.index');
  }





  public function export()
  {
    return Excel::download(new SiswaExport, 'siswa.xlsx');
  }

  public function exportKategori($id)
  {
    $category = Category::findOrFail($id);
    return Excel::download(new SiswaCategoryExport($id), 'siswa-' . $category->name . '.xlsx');
  }

}
