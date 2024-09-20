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
                            <form action="{{ route('kelas.store') }}" method="post">
                                @csrf
                                <div class="form-group col-lg-6">
                                    <label>Kelas Baru</label>
                                    <input type="text" required placeholder="Nama Kelas" name="name" required
                                        class="form-control" inputmode="numeric">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>Category</label>
                                    <select name="category_id" class="form-control select2" required>
                                        <option selected disabled value="">-- pilih --</option>
                                        @foreach ($data as $item)
                                            <option value="{{ $item->id }}">{{ $item->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="d-flex justify-content-center col-lg-6">
                                    <a href="{{ route('kelas.index') }}" class="btn btn-warning mr-2">Kembali</a>
                                    <button type="submit" class="btn btn-primary">Simpan</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
<script>
    document.querySelector('form').addEventListener('submit', function(event) {
        const categorySelect = document.querySelector('select[name="category_id"]');
        if (categorySelect.value === "") {
            alert("Silakan pilih kategori terlebih dahulu.");
            event.preventDefault(); // Mencegah form dikirim jika kategori tidak dipilih
        }
    });
</script>
