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
            {{-- <h2 class="section-title">{{ $title }}</h2> --}}
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Table {{ $title }}</h4>

                            <!-- Pilih Jenjang -->
                            <div class="btn-group col-lg-2">
                                <button id="dropdownJenjang" class="btn btn-info dropdown-toggle" type="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    Semua Jenjang
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="{{ route('pembayaran.index') }}"
                                        onclick="setJenjang('Semua Jenjang')">Semua Jenjang</a>
                                    <a class="dropdown-item" href="{{ route('pembayaran.index') }}?search=1"
                                        onclick="setJenjang('SD')">SD</a>
                                    <a class="dropdown-item" href="{{ route('pembayaran.index') }}?search=2"
                                        onclick="setJenjang('SMP')">SMP</a>
                                    <a class="dropdown-item" href="{{ route('pembayaran.index') }}?search=3"
                                        onclick="setJenjang('SMK')">SMK</a>
                                </div>
                            </div>

                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped" id="table-1">
                                    <thead>
                                        <tr>
                                            <th class="text-center">
                                                #
                                            </th>
                                            <th>Nama</th>
                                            <th>NISN</th>
                                            <th>Kategori</th>
                                            <th>Kelas</th>
                                            <th>Tahun Masuk</th>
                                            <th>Jumlah Tagihan</th>
                                            <th class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($data as $item)
                                            <tr>
                                                <td>
                                                    {{ $loop->iteration }}
                                                </td>
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->nisn }}</td>
                                                <td>{{ $item->category->name }}</td>
                                                <td>{{ $item->kelas->name }}</td>
                                                <td>{{ $item->tahunMasuk->tahun }}</td>
                                                <td>
                                                    @php
                                                        $totalNominal = $item->tagihans->sum('nominal');
                                                        $totalTerbayar = $item->tagihans->sum(
                                                            'pivot.nominal_tagihan_terbayar',
                                                        );
                                                        $totalSisa = $totalNominal - $totalTerbayar;
                                                    @endphp
                                                    {{ Fungsi::rupiah($totalSisa) }}
                                                </td>
                                                <td class="text-center">
                                                    <a href="{{ route('pembayaran.show', $item->id) }}"
                                                        class="btn btn-primary"
                                                        style="font-size: 10px; padding: 10px 20px;">
                                                        <i class="fa fa-money" style="font-size: 10px;"></i>
                                                        Tagihan</a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
<script>
    // Function to set the selected jenjang in localStorage
    function setJenjang(jenjang) {
        localStorage.setItem('selectedJenjang', jenjang);
        document.getElementById('dropdownJenjang').innerText = jenjang;
    }

    // Load the selected jenjang from localStorage on page load
    document.addEventListener('DOMContentLoaded', function() {
        var selectedJenjang = localStorage.getItem('selectedJenjang');
        if (selectedJenjang) {
            document.getElementById('dropdownJenjang').innerText = selectedJenjang;
        }
    });
</script>
