@extends('roles::layouts.master')
@section('content-module')
  <section class="section">
    <div class="section-header">
      <h1>{{ $title }}</h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="{{ route('dashboard.index') }}">Dashboard</a></div>
        <div class="breadcrumb-item"><a href="#">Modules</a></div>
        <div class="breadcrumb-item">{{ $title }}</div>
      </div>
    </div>
    <div class="section-body row">

      <!-- Form untuk mengirim pesan -->
      <form action="{{ route('message.store') }}" method="post" class="my-4 py-4 col-lg-6 card">
        @csrf
        <div class="text-center justify-content-center mb-4">
          <h4>Personal Chat</h4>
        </div>
        <div class="mb-4">
          <label for="no_target">Nomor Tujuan</label>
          <input type="number" class="form-control" placeholder="085......" name="no_target" id="no_target" required>
        </div>
        <div class="mb-3">
          <label for="message">Pesan</label>
          <textarea class="form-control" name="message" id="message" placeholder="Tulis pesan..." required
            style="height: 160px !important; width: 100% !important;"></textarea>
        </div>
        <div style="margin-top: 10px;" class="justify-content-center">
          <button type="submit" class="btn btn-primary">Kirim <i class="fa fa-paper-plane"
              aria-hidden="true"></i></button>
        </div>
      </form>

      <!-- Form untuk mengirim pesan -->
      <form action="{{ route('message.storePengumuman') }}" method="post" class="my-4 py-4 col-lg-6 card">
        @csrf
        <div class="text-center justify-content-center mb-4">
          <h4>Buat Pengumuman</h4>
        </div>

        <div class="mb-3">
          <label for="message">Pengumuman</label>
          <textarea class="form-control" name="message" id="message" placeholder="Tulis pengumuman..."
            style="height: 260px !important; width: 100% !important;" required></textarea>
        </div>

        <div style="margin-top: 10px;">
          <button type="submit" id="btn-pengumuman" class="btn btn-primary">Kirim Pengumuman <i class="fa fa-paper-plane"
              aria-hidden="true"></i></button>
        </div>
      </form>

    </div>

    <!-- Untuk Print -->
    <iframe id="printFrame" style="display:none;"></iframe>
  </section>


  <script>
    document.getElementById('btn-pengumuman').addEventListener('click', function(event) {
      event.preventDefault();

      Swal.fire({
        title: 'Apakah Anda yakin?',
        text: "Pengumuman akan dikirim ke semua orang tua siswa!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Ya, Kirim!',
        cancelButtonText: 'Batal'
      }).then((result) => {
        if (result.isConfirmed) {
          this.closest('form').submit();
        }
      });
    });
  </script>
@endsection
