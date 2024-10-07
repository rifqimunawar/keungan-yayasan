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
                            <div class="btn-group col-lg-3">
                                <button id="dropdownJenjang" class="btn btn-info dropdown-toggle" type="button"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    Semua Jenjang
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="{{ route('history.index') }}"
                                        onclick="setJenjang('Semua Jenjang')">Semua Jenjang</a>
                                    <a class="dropdown-item" href="{{ route('history.index') }}?search=1"
                                        onclick="setJenjang('SD')">SD</a>
                                    <a class="dropdown-item" href="{{ route('history.index') }}?search=2"
                                        onclick="setJenjang('SMP')">SMP</a>
                                    <a class="dropdown-item" href="{{ route('history.index') }}?search=3"
                                        onclick="setJenjang('SMK')">SMK</a>
                                </div>
                            </div>

                            <!-- Form Pilihan Tanggal -->
                            <form action="{{ route('history.index') }}" method="GET">
                                <div class="d-flex align-items-center">
                                    <div class="group me-2">
                                        <input type="date" name="from_date" id="fromDate"
                                            class="form-control form-control-sm" value="{{ old('from_date', $from_date) }}">
                                    </div>
                                    <div class="group me-2">
                                        <input type="date" name="to_date" id="toDate"
                                            class="form-control form-control-sm" value="{{ old('to_date', $to_date) }}">
                                    </div>
                                    <div class="group me-2">
                                        <button type="submit" class="btn btn-primary btn-sm">Filter</button>
                                    </div>
                                </div>
                            </form>
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
                                            <th>Kategori</th>
                                            <th>Kelas</th>
                                            <th>Tahun Masuk</th>
                                            <th>Tagihan</th>
                                            <th>Nominal Transaksi</th>
                                            <th>Tanggal Transaksi</th>
                                            <th class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($data as $item)
                                            <tr>
                                                <td>
                                                    {{ $loop->iteration }}
                                                </td>
                                                <td>{{ $item->siswa->name }}</td>
                                                <td>{{ $item->siswa->category->name }}</td>
                                                <td>{{ $item->siswa->kelas->name }}</td>
                                                <td>{{ $item->siswa->tahunMasuk->tahun }}</td>
                                                <td>{{ $item->siswa->tagihans->pluck('name')->implode(', ') }}</td>
                                                <td>{{ Fungsi::rupiah($item->nominal) }}</td>
                                                <td>{{ \Carbon\Carbon::parse($item->tanggal_transaksi)->translatedFormat('d F Y') }}
                                                </td>
                                                <td class="text-center">
                                                    <a href="javascript:void(0);" class="badge badge-info"
                                                        onclick="printInvoice('{{ route('pembayaran.invoice', $item->id) }}')"><i
                                                            class="fa fa-print" aria-hidden="true"></i>Invoice</a>
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
        <!-- Untuk Print -->
        <iframe id="printFrame" style="display:none;"></iframe>
    </section>
@endsection
<!-- script -->
<script>
    // Untuk Print
    function printInvoice(url) {
        var iframe = document.getElementById('printFrame');
        iframe.src = url;
        iframe.onload = function() {
            iframe.contentWindow.print();
        };
    }
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
