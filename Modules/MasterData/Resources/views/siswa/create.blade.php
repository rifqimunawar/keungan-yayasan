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
                            <h4> {{ $title }}</h4>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('siswa.store') }}" method="post">
                                @csrf
                                <div class="form-group col-lg-6">
                                    <label>Nama Siswa</label>
                                    <input type="text" name="name" required class="form-control ">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>NISN</label>
                                    <input type="number" name="nisn" class="form-control ">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>Nomor Urut</label>
                                    <input type="number" name="no_urut" class="form-control ">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>Tahun Masuk</label>
                                    <select name="tahun_masuk_id" class="form-control select2">
                                        <option selected disabled>-- pilih --</option>
                                        @foreach ($data as $item)
                                            <option value="{{ $item->id }}">{{ $item->tahun }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>Category & Kelas</label>
                                    <select name="category_id_kelas_id" id="category_id_kelas_id"
                                        class="form-control select2">
                                        <option selected disabled>-- pilih --</option>
                                        @foreach ($data_category as $category)
                                            <optgroup label="{{ $category->name }}">
                                                <!-- Menampilkan nama kategori sebagai grup -->
                                                @foreach ($category->kelas as $kelas)
                                                    <!-- Looping kelas terkait dengan kategori -->
                                                    <option value="{{ $category->id }}_{{ $kelas->id }}">
                                                        {{ $kelas->name }}</option>
                                                @endforeach
                                            </optgroup>
                                        @endforeach
                                    </select>
                                </div>


                                @if ($errors->any())
                                    <div class="alert alert-danger pt-3 col-lg-6" role="alert">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                                <div class="d-flex justify-content-center col-lg-6">
                                    <a href="{{ route('siswa.index') }}" class="btn btn-warning mr-2">Kembali</a>
                                    <button type="submit" class="btn btn-primary">Simpan</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        $(document).ready(function() {
            $('#category_id').on('change', function() {
                var categoryId = $(this).val(); // Ambil nilai kategori yang dipilih
                if (categoryId) {
                    $.ajax({
                        url: '{{ route('get_data_kelas', ':id') }}'.replace(':id',
                            categoryId), // Panggil route
                        type: 'GET',
                        dataType: 'json',
                        success: function(data) {
                            console.log(data)
                            $('#kelas_id').empty(); // Kosongkan opsi kelas sebelumnya
                            $('#kelas_id').append(
                                '<option selected disabled>-- pilih --</option>'
                            ); // Tambahkan opsi default

                            $.each(data, function(key, value) {
                                $('#kelas_id').append('<option value="' + value.id +
                                    '">' + value.name + '</option>'
                                ); // Tambahkan data kelas
                            });
                        },
                        error: function() {
                            alert('Gagal memuat data kelas.');
                        }
                    });
                } else {
                    $('#kelas_id').empty();
                    $('#kelas_id').append('<option selected disabled>-- pilih --</option>');
                }
            });
        });
    </script>
@endsection
