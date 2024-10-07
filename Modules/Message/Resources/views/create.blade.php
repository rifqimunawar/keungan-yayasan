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
        <div class="section-body">

            <!-- Form untuk mengirim pesan -->
            <form action="{{ route('message.store') }}" method="post" class="my-4 py-4 col-lg-6 card">
                @csrf
                <div class="mb-4">
                    <label for="no_target">Nomor Tujuan</label>
                    <input type="text" class="form-control" placeholder="085......" name="no_target" id="no_target"
                        required>
                </div>
                <div class="mb-3">
                    <label for="message">Pesan</label>
                    <textarea class="form-control" name="message" id="message" rows="9" placeholder="Tulis pesan..." required></textarea>
                </div>
                <div style="margin-top: 10px;">
                    <button type="submit" class="btn btn-primary">Kirim Pesan</button>
                </div>
            </form>

        </div>

        <!-- Untuk Print -->
        <iframe id="printFrame" style="display:none;"></iframe>
    </section>
@endsection
