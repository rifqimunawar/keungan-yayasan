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
                        <div class="card-header d-flex">
                            <h4>Table {{ $title }}</h4>
                            <a href="{{ route('siswa.create') }}" class="ml-2 btn btn-primary"> Tambah <ion-icon
                                    name="add-circle-outline"></ion-icon><i class="ml-2 fa fa-plus"></i></a>
                            <?php $search = request()->query('search'); ?>
                            <div class="d-flex justify-content-end">
                                <!-- Export -->
                                @if (is_null($search))
                                    <a href="{{ route('siswa.export') }}" class="ml-2 btn btn-info">
                                        <ion-icon name="document-export-outline mx-2"></ion-icon>
                                        <i class="fa fa-file-excel-o"></i> Export Semua
                                    </a>
                                @elseif ($search == 1)
                                    <a href="{{ route('siswa.exportKategori', 1) }}" class="ml-2 btn btn-info">
                                        <ion-icon name="document-export-outline mx-2"></ion-icon>
                                        <i class="fa fa-file-excel-o"></i> Export SD
                                    </a>
                                @elseif ($search == 2)
                                    <a href="{{ route('siswa.exportKategori', 2) }}" class="ml-2 btn btn-info">
                                        <ion-icon name="document-export-outline mx-2"></ion-icon>
                                        <i class="fa fa-file-excel-o"></i> Export SMP
                                    </a>
                                @elseif ($search == 3)
                                    <a href="{{ route('siswa.exportKategori', 3) }}" class="ml-2 btn btn-info">
                                        <ion-icon name="document-export-outline mx-2"></ion-icon>
                                        <i class="fa fa-file-excel-o"></i> Export SMK
                                    </a>
                                @endif

                                <!-- Import Excel -->
                                <a href="{{ route('siswa.createImport') }}" class="ml-2 btn btn-primary">
                                    <ion-icon name="document-export-outline mx-2"></ion-icon>
                                    <i class="fa fa-file-excel-o"></i> Import Excel
                                </a>

                                <!-- Pilih Jenjang -->
                                <div class="btn-group ml-2">
                                    <button id="dropdownJenjang" class="btn btn-info dropdown-toggle" type="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        Semua Jenjang
                                    </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="{{ route('siswa.index') }}"
                                            onclick="setJenjang('Semua Jenjang')">Semua Jenjang</a>
                                        <a class="dropdown-item" href="{{ route('siswa.index') }}?search=1"
                                            onclick="setJenjang('SD')">SD</a>
                                        <a class="dropdown-item" href="{{ route('siswa.index') }}?search=2"
                                            onclick="setJenjang('SMP')">SMP</a>
                                        <a class="dropdown-item" href="{{ route('siswa.index') }}?search=3"
                                            onclick="setJenjang('SMK')">SMK</a>
                                    </div>
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
                                            <th>Nama Siswa</th>
                                            <th>Kategori</th>
                                            <th>Kelas</th>
                                            <th>Tahun Masuk</th>
                                            <th>NISN</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($data as $item)
                                            <tr>
                                                <td>
                                                    {{ $loop->iteration }}
                                                </td>
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->category->name }}</td>
                                                <td>{{ $item->kelas->name }}</td>
                                                <td>{{ $item->tahunMasuk->tahun }}</td>
                                                <td>
                                                    {{ $item->nisn }}
                                                </td>
                                                <td>
                                                    <a href="{{ route('siswa.edit', $item->id) }}">
                                                        <i class="fa fa-pencil-square-o ml-2"></i>
                                                    </a>
                                                    <a href="{{ route('siswa.destroy', $item->id) }}"
                                                        data-confirm-delete="true">
                                                        <i class="fa fa-trash ml-2"></i>
                                                    </a>
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
