<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Print Page</title>
    <style type="text/css">
        /* Styling for normal view */
        .print-preview {
            display: none;
        }

        /* Styling specifically for print preview */
        @media print {
            body {
                font-size: 12pt;
            }

            .no-print {
                display: none;
            }

            .print-preview {
                display: block;
            }
        }

        fieldset {
            border: 0px solid #ddd !important;
            margin: 0;
            xmin-width: 0;
            padding: 10px;
            position: relative;
            border-radius: 4px;
            background-color: #f5f5f5;
            padding-left: 10px !important;
        }

        legend {
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 0px;
            width: 35%;
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 5px 5px 5px 10px;
            background-color: #ffffff;
        }

            {
            box-sizing: border-box;
        }

        .header {
            border: 1px solid gray;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
        }

        tr,
        td:not(.header_text) {
            text-align: justify;
            vertical-align: top;
        }

        .table_td {
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            border-left: 1px solid gray;
            border-right: 1px solid gray;
        }

        input[type="checkbox"][readonly] {
            pointer-events: none;
        }

        tr,
        td {
            padding-left: 5px;
            padding-right: 5px;
        }

        td,
        tr,
        div {
            font-family: calibri;
        }

        /* } */
    </style>
</head>

<body>
    <div class="card-body">
        <div class="box-border">
            <fieldset>
                <div class="row">
                    <!-- HEADER -->
                    <table width="100%">
                        <tr>
                            <!-- Kolom untuk gambar dan judul -->
                            <td width="10%" align="center" style="text-align: center;">
                                <img alt="logo" src="{{ asset('assets/img/logo-arman.png') }}" height="70px"
                                    width="70px" style="margin-top: 20px">
                            </td>

                            <!-- Kolom untuk alamat -->
                            <td width="40%" valign="top" style="padding-left: 10px;">
                                <p style="margin: 5px 0 0; font-weight: bold; font-size:28px">YAYASAN ARMANIYAH</p>
                                <p style="margin: 0;">
                                    Kp. Tonjong RT 008 RW 004, Ds. Sukaragam<br>
                                    Kec. Serang Baru, Kab. Bekasi (17330) - Indonesia<br>
                                    Telp. : (021) 2215-4740
                                </p>
                            </td>
                            <td class=" header_text" width="25%">
                                <table border="0" class="" width="100%">
                                    <tr style="padding-top: 5px">
                                        <td style="color: transparent;">|||</td>
                                        <td> </td>
                                        <td> </td>
                                    </tr>
                                    {{-- <tr>
                                        <td width="40%">Nomor</td>
                                        <td width="1%">:</td>
                                        <td width="60%">
                                            {{ $data_siswa->id }}/{{ $data_siswa->nisn ? 'NISN' : '' }}
                                        </td>
                                    </tr> --}}
                                    <tr>
                                        <td>Tanggal </td>
                                        <td>:</td>
                                        <td>{{ \Carbon\Carbon::today()->format('d/m/Y') }}</td>
                                    </tr>
                                    <tr>
                                        <td>Unit</td>
                                        <td>:</td>
                                        <td>{{ $data_siswa->category->name }}</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                    <table border="0" style="width: 100%; border-collapse: collapse; margin-top: 1rem;">
                        <tr style="text-align: center;">
                            <td style="font-size: 16px; padding: 5px; text-align: center;">
                                <p style="margin: 5px 0 0; font-weight: bold; font-size:18px">BUKTI PEMBAYARAN</p>
                            </td>
                        </tr>
                    </table>


                    <!-- ISI KONTEN -->
                    <table style="width: 100%; border-collapse: collapse; margin-top:1rem">
                        <tr>
                            <td style="width: 50%; text-align: center; vertical-align: top; padding: 2px;">
                                <table border="0" style="width: 100%; border-collapse: collapse;">
                                    <tr>
                                        <td style="width: 15%; padding: 5px;">Nama Siswa</td>
                                        <td style="width: 3%; padding: 5px;">:</td>
                                        <td style="width: 80%; padding: 5px;">
                                            {{ $data_siswa->name }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 15%; padding: 5px;">Kelas</td>
                                        <td style="width: 3%; padding: 5px;">:</td>
                                        <td style="width: 80%; padding: 5px;">
                                            {{ $data_siswa->kelas->name }} {{ $data_siswa->category->name }}
                                        </td>
                                    </tr>
                                </table>
                                <table border="1" style="width: 100%; border-collapse: collapse;">
                                    <tr>
                                        <th style="text-align: center; vertical-align: middle;">No</th>
                                        <th style="text-align: center; vertical-align: middle;">Keterangan Pembayaran
                                        </th>
                                        <th style="text-align: center; vertical-align: middle;">Tgl Transaksi</th>
                                        <th style="text-align: center; vertical-align: middle;">Penerima</th>
                                        <th style="text-align: center; vertical-align: middle;">Jumlah</th>
                                    </tr>
                                    @foreach ($data as $item)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $item->tagihan_nama }}</td>
                                            <td>{{ Fungsi::format_tgl($item->tanggal_transaksi) }}</td>
                                            <td>{{ $item->penerima_transaksi }}</td>
                                            <td>{{ Fungsi::rupiah($item->nominal) }}</td>
                                        </tr>
                                    @endforeach
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &emsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Catatan
                            </td>
                        </tr>
                        <tr>
                            <td>
                                - Disimpan sebagai bukti pembayaran yang sah
                            </td>
                        </tr>
                    </table>

                    <!-- TTD -->
                    {{-- <table width="100%" style="margin-top: 1rem;">
                        <tr>
                            <td width="50%">
                            </td>
                            <td width="50%">
                                <table width="100%" border="0"
                                    style="text-align: center; border-collapse: collapse;">
                                    <tr>
                                        <td style="border: 1px solid gray; padding: 0; text-align: center; ">Penerima
                                        </td>
                                        <td style="border: 1px solid gray; padding: 0; text-align: center; ">TU Keuangan
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border: 1px solid gray; padding: 20px 0;">&emsp;</td>
                                        <td style="border: 1px solid gray; padding: 20px 0;">&emsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="border: 1px solid gray; padding: 0;"></td>
                                        <td style="border: 1px solid gray; padding: 0; text-align: center; ">
                                            @if (isset($data->users) && !empty($data->users))
                                                ({{ $data->users->name }} )
                                            @else
                                                Nama pengguna tidak tersedia
                                            @endif
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table> --}}

                </div>
            </fieldset>
        </div>
    </div>

    <script type="text/javascript">
        // window.print();
    </script>
</body>

</html>
