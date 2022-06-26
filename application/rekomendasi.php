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
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="<?= base_url('assets/') ?>css/sb-admin-2.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="<?= base_url('assets/') ?>img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="<?= base_url('assets/') ?>img/favicon.ico" type="image/x-icon">
</head>

<body class="bg-gradient-warning bg-opacity-75">
    <nav class="navbar navbar-expand-lg navbar-dark py-1 font-weight-bold alert-warning shadow-lg">
        <div class="container d-flex bd-highlight">
            <a class="p-2 flex-grow-1 bd-highlight navbar-brand text-dark" href="<?= base_url('/'); ?>"> <i class="fas fa-fw fa-database rotate-n-15 mr-1"></i>SPK Pemilihan Perumahan Terbaik Metode ROC & OCRA </a>
            <button class="bg-info navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="p-2 bd-highlight collapse navbar-collapse" style="flex-grow: 0;" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="text-dark nav-link active" href="<?= base_url('Login/login'); ?>"> <i class="fas fa-fw fa-sign-in-alt mr-1"></i>Login </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container py-5">
        <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-xl-12 col-lg-12 col-md-12">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body  p-5">
                        <h5 align="center" class="modal-title" id="myModalLabel"><i class="fa fa-edit"></i> Silahkan Mengisi Form Rekomendasi Perumahan</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <?= form_open('Login/hasil') ?>
                    <div class="card-body">
                        <label class="font-weight-bold" for="nama">Nama</label>
                        <input class="form-control" type="text" name="nama" required>
                        <label class="font-weight-bold mt-3" for="email">Email</label>
                        <input class="form-control mb-3" type="email" name="email" required>
                        <?php foreach ($kriteria as $key) : ?>
                            <?php
                            $sub_kriteria = $this->Penilaian_model->data_sub_kriteria($key->id_kriteria);
                            ?>
                            <?php if ($sub_kriteria != NULL) : ?>
                                <div class="form-group">
                                    <label class="font-weight-bold" for="<?= $key->id_kriteria ?>"><?= $key->keterangan ?></label>
                                    <select name="nilai[]" class="form-control" id="<?= $key->id_kriteria ?>" required>
                                        <option value="">--Pilih--</option>
                                        <?php foreach ($sub_kriteria as $subs_kriteria) : ?>
                                            <option value="<?= $subs_kriteria['id_sub_kriteria'] ?>"><?= $subs_kriteria['deskripsi'] ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>
                            <?php endif ?>
                        <?php endforeach ?>
                        <div class="modal-footer">
                            <div class="text-center">

                            </div>
                            <div class="text-center">
                                <button type="button" class="btn btn-warning" data-dismiss="modal"><i class="fa fa-times"></i> Batal</button>
                                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i>Hitung</button>
                            </div>
                        </div>
                        </form>