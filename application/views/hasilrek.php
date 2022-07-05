<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Sistem Pendukung Keputusan Metode ROC dan OCRA</title>

    <!-- Custom fonts for this template-->
    <link href="<?= base_url('assets/') ?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url('assets/') ?>css/style.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Anek+Malayalam:wght@400;600;700;800&display=swap" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?= base_url('assets/') ?>css/sb-admin-2.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="<?= base_url('assets/') ?>img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="<?= base_url('assets/') ?>img/favicon.ico" type="image/x-icon">
</head>

<body style="background-color: #FAFDFB;">
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: white; box-shadow: 0px -24px 40px rgba(0, 0, 0, 0.25);">
        <div class="container d-flex bd-highlight">
            <!-- <a class="p-2 flex-grow-1 bd-highlight navbar-brand text-dark" href="<?= base_url('/'); ?>"> <i class="fas fa-fw fa-database rotate-n-15 mr-1"></i>SPK Pemilihan Perumahan Terbaik Metode ROC & OCRA </a> -->
            <a class="p-2 flex-grow-1 bd-highlight navbar-brand text-dark" href="<?= base_url('/'); ?>"> <i class="fas fa-fw fa-database rotate-n-15 mr-1"></i>SIPEKA</a>

            <button class="bg-info navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="p-2 bd-highlight collapse navbar-collapse" style="flex-grow: 0;" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto my-auto">
                    <!-- <li class="navbar-active" ><a href="" style="padding: 10px;">Home</a></li> -->
                    <li class="navbar"><a href="<?= base_url('login/'); ?>" style="padding: 10px; ">Beranda</a></li>
                    <li class="navbar active"><a href="#" style="padding: 10px;">Cari Rumah</a></li>
                    <li class="navbar"><a href="<?= base_url('login/tentang'); ?>" style="padding: 10px; margin-right: 50px;">Tentang</a></li>

                    <li class="nav-item" style="padding-top: 10px;">
                        <a href="<?= base_url('Login/login'); ?>" class="btn btn-md" role="button" aria-disabled="true" style="background-color: #36b9cc; color: white;">Login</a>

                        <!-- <a class="text-dark nav-link active" href="<?= base_url('Login/login'); ?>">Login </a> -->
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container" style="margin-top: 10px;">
        <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-xl-12 col-lg-12 col-md-12">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body  p-5">
                        <div class="row">
                            <div class="col-12 mt-3">
                                <div class="alert alert-primary text-center"><b>Rekomendasi Perumahan Terbaik-1</b></div>
                                <!-- <div class="text-center mb-4 col-xl-6 col-lg-6 col-md-6">
                                    
                                </div> -->
                                <!-- <div class="text-center mb-4 col-xl-6 col-lg-6 col-md-6">
                                    Lokasi : <a href="<?= $rank1['lokasi'] ?>"><?= $rank1['lokasi'] ?></a>
                                </div> -->
                                <div class="row mb-4">
                                    <div class="col-lg-6">
                                        <?php
                                        $rank1 = $this->Perhitungan_model->get_hasil_rekomendasi_tertinggi();
                                        if (!empty($rank1['gambar'])) {
                                        ?>
                                            <img src="<?= base_url('assets/upload/' . $rank1['gambar']) ?>" width="100%" />
                                        <?php
                                        } else {
                                            echo "Tidak Ada Gambar";
                                        }
                                        ?>
                                    </div>
                                    <div class="col-lg-6 py-2">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                Nama
                                            </div>
                                            <div class="col-lg-6">
                                                : <?= $rank1['nama'] ?>
                                            </div>
                                            <div class="col-lg-6">
                                                Kategori
                                            </div>
                                            <div class="col-lg-6">
                                                : <?= $rank1['kategori'] ?>
                                            </div>
                                            <div class="col-lg-6">
                                                Harga
                                            </div>

                                            <div class="col-lg-6">
                                                : <?= $rank1['harga'] ?>
                                            </div>
                                            <div class="col-lg-6">
                                                Angsuran
                                            </div>

                                            <div class="col-lg-6">
                                                : <?= $rank1['angsuran'] ?>
                                            </div>
                                            <div class="col-lg-6">
                                                Tipe Rumah
                                            </div>

                                            <div class="col-lg-6">
                                                : <?= $rank1['tipe'] ?>
                                            </div>
                                            <div class="col-lg-6">
                                                Luas Tanah
                                            </div>
                                            <div class="col-lg-6">
                                                : <?= $rank1['luastanah'] ?>
                                            </div>
                                            <div class="col-lg-6">
                                                Listrik
                                            </div>
                                            <div class="col-lg-6">
                                                : <?= $rank1['listrik'] ?>
                                            </div>
                                            <div class="col-lg-6">
                                                Sumber Air
                                            </div>
                                            <div class="col-lg-6">
                                                : <?= $rank1['air'] ?>
                                            </div>
                                            <div class="col-lg-6">
                                                Jalan
                                            </div>
                                            <div class="col-lg-6">
                                                : <?= $rank1['jalan'] ?>
                                            </div>
                                            <div class="col-lg-6">
                                                Keamanan
                                            </div>
                                            <div class="col-lg-6">
                                                : <?= $rank1['keamanan'] ?>
                                            </div>
                                            <div class="col-lg-6">
                                                Nilai Preferensi
                                            </div>
                                            <div class="col-lg-6">
                                                : <?= $rank1['rekomendasi'] ?>
                                            </div>
                                            <div class="btn-group col-xl-12" role="group" style="margin-top: 15px">
                                                <a data-toggle="tooltip" data-placement="bottom" title="lihat Lokasi" href="<?= $rank1['lokasi'] ?>" class="btn rounded-0" style="background-color: #36b9cc; color: white;"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;Lihat Lokasi</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead class="bg-primary text-white">
                                            <tr align="center">
                                                <th width="5%">No</th>
                                                <th>Nama Alternatif</th>
                                                <th>Nilai Preferensi</th>
                                                <th width="15%">Peringkat</th>
                                                <th>Keterangan</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $no = 1;
                                            foreach ($hasil as $keys) :
                                                if ($no > "1") {
                                            ?>
                                                    <tr align="center">
                                                        <td><?= $no; ?></td>
                                                        <td class="text-left"><?= $keys['nama'] ?></td>
                                                        <td><?= $keys['rekomendasi'] ?></td>
                                                        <td><?= $no; ?></td>
                                                        <td>
                                                            <div class="btn-group" role="group">
                                                                <a data-toggle="tooltip" data-placement="bottom" title="Detail Data" href="<?= base_url('Login/detail/' . $keys['id_alternatif']) ?>" class="btn btn-success btn-sm" style="background-color: #36b9cc; color: white;"><i class="fa fa-eye"></i> Detail Data</a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                            <?php
                                                }
                                                $no++;
                                            endforeach ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>