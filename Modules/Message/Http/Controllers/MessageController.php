<?php

namespace Modules\Message\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\MasterData\Entities\Siswa;
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
    $token = env('WHATSAPP_TOKEN');
    $message = $request->input('message');
    $target = $request->input('no_target');
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => env('WHATSAPP_URL'),
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS => array(
        'target' => $target,
        'message' => $message,
      ),
      CURLOPT_HTTPHEADER => array(
        "Authorization: $token",
      ),
    ));

    $response = curl_exec($curl);
    if (curl_errno($curl)) {
      $error_msg = curl_error($curl);
    }
    curl_close($curl);
    if (isset($error_msg)) {
      Alert::error('Oops...', $error_msg);
      return redirect()->route('message.create');
    }
    Alert::success('Success', 'Pesan sudah dikirim');
    return redirect()->route('message.create');
  }

  public function storePengumuman(Request $request)
  {

    $siswas = Siswa::all();
    $numbers = [];

    foreach ($siswas as $siswa) {
      // Skip jika telp null, kosong, atau panjangnya kurang dari 9 angka
      if (empty($siswa->telp) || strlen($siswa->telp) < 9) {
        continue;
      }
      $numbers[] = '+62' . $siswa->telp;
    }
    $no_target = implode(',', $numbers);

    $token = env('WHATSAPP_TOKEN');
    $message = $request->input('message');
    $target = $no_target;
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => env('WHATSAPP_URL'),
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS => array(
        'target' => $target,
        'message' => $message,
        'delay' => 5 - 10,
      ),
      CURLOPT_HTTPHEADER => array(
        "Authorization: $token",
      ),
    ));

    $response = curl_exec($curl);
    if (curl_errno($curl)) {
      $error_msg = curl_error($curl);
    }
    curl_close($curl);
    if (isset($error_msg)) {
      Alert::error('Oops...', $error_msg);
      return redirect()->route('message.create');
    }
    Alert::success('Success', 'Pesan sudah dikirim ke ' . count($numbers) . ' Nomor');
    return redirect()->route('message.create');
  }
}
