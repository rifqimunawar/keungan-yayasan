<?php

namespace Modules\Message\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Contracts\Support\Renderable;

class MessageController extends Controller
{
  /**
   * Display a listing of the resource.
   * @return Renderable
   */
  public function index()
  {
    return view('message::index');
  }

  /**
   * Show the form for creating a new resource.
   * @return Renderable
   */

  public function create()
  {
    $title = 'Fitur Chat WhatsApp';
    return view('message::create', ['title' => $title,]);
  }

  public function store(Request $request)
  {
    // Token untuk otentikasi
    $token = env('WHATSAPP_TOKEN');

    // Mengambil input dari form
    $message = $request->input('message');
    $target = $request->input('no_target');

    // Inisialisasi cURL
    $curl = curl_init();

    // Set konfigurasi cURL
    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://api.fonnte.com/send',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS => array(
        'target' => $target,  // Nomor target dari input
        'message' => $message,  // Pesan dari input
      ),
      CURLOPT_HTTPHEADER => array(
        "Authorization: $token",  // Header otorisasi dengan token
      ),
    ));

    // Eksekusi cURL dan ambil response
    $response = curl_exec($curl);

    // Cek jika ada error di cURL
    if (curl_errno($curl)) {
      $error_msg = curl_error($curl);
    }

    // Tutup cURL
    curl_close($curl);

    // Jika ada error, tampilkan error
    if (isset($error_msg)) {
      Alert::error('Oops...', $error_msg);
      return redirect()->route('message.create');
    }

    Alert::success('Success', 'Pesan sudah dikirim');
    return redirect()->route('message.create');
  }

  /**
   * Show the specified resource.
   * @param int $id
   * @return Renderable
   */
  public function show($id)
  {
    return view('message::show');
  }

  /**
   * Show the form for editing the specified resource.
   * @param int $id
   * @return Renderable
   */
  public function edit($id)
  {
    return view('message::edit');
  }

  /**
   * Update the specified resource in storage.
   * @param Request $request
   * @param int $id
   * @return Renderable
   */
  public function update(Request $request, $id)
  {
    //
  }

  /**
   * Remove the specified resource from storage.
   * @param int $id
   * @return Renderable
   */
  public function destroy($id)
  {
    //
  }
}
