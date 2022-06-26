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
    <!-- <body class="bg-gradient-warning bg-opacity-75"> -->
    <!-- <nav class="navbar navbar-expand-lg navbar-dark py-1 font-weight-bold alert-warning shadow-lg"> -->
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

    <div class="content container" style=" margin-top: 10px;">
        <div class="row justify-content-center">
            <div class="col-xl-12 col-lg-12 col-md-12">
                <div class="card o-hidden border-0 my-5">
                    <div class="card-body  p-5 mx-auto">
                        <h4 align="center" class="modal-title" id="myModalLabel" style="color: black;"> <b>Silahkan Mengisi Form Rekomendasi Perumahan</b> </h4>
                        <p style="text-align: center; margin: 0 auto; width:80%; font-size: 15px; padding-top: 10px;">Silahkan mengisi formulir dibawah ini untuk mendapatkan rekomendasi
                            lokasi perumahan yang cocok untuk anda. Website ini menyediakan begitu banyak perumahan yang mungkin bisa cocok dengan anda.</p align-"center">
                    </div>
                    <?= form_open('Login/hasil') ?>
                    <div class="card-body container">
                        <div class="row" style="color: black;">
                            <div class="form-group col-xl-6 col-lg-6 col-md-6 col-xs-12 my-3">
                                <label class="font-weight-bold" for="nama">Nama</label>
                                <input class="form-control rounded-0 border-white" type="text" name="nama" placeholder=" Nama Anda" required style="background-color: #f2f5f3;">
                            </div>
                            <div class="form-group col-xl-6 col-lg-6 col-md-6 col-xs-12">
                                <label class="font-weight-bold mt-3" for="email">Email</label>
                                <input class="form-control mb-3 rounded-0 border-white" type="email" name="email" placeholder=" Email Anda" required style="background-color: #f2f5f3;">
                            </div>


                            <?php foreach ($kriteria as $key) : ?>
                                <?php
                                $sub_kriteria = $this->Penilaian_model->data_sub_kriteria($key->id_kriteria);
                                ?>
                                <?php if ($sub_kriteria != NULL) : ?>
                                    <div class="form-group col-xl-6 col-lg-6 col-md-6 col-xs-12">
                                        <label class="font-weight-bold" for="<?= $key->id_kriteria ?>"><?= $key->keterangan ?></label>
                                        <select name="nilai[]" class="form-control rounded-0 border-white" id="<?= $key->id_kriteria ?>" required style="background-color: #f2f5f3;">
                                            <option value="">--Pilih--</option>
                                            <?php foreach ($sub_kriteria as $subs_kriteria) : ?>
                                                <option value="<?= $subs_kriteria['id_sub_kriteria'] ?>"><?= $subs_kriteria['deskripsi'] ?></option>
                                            <?php endforeach ?>
                                        </select>
                                    </div>
                                <?php endif ?>
                            <?php endforeach ?>
                        </div>



                        <div class="modal-footer">
                            <div class="text-center">

                            </div>
                            <div class="text-center">
                                <button type="button" class="btn btn-danger" data-dismiss="modal"><a href="<?= base_url('login/'); ?>" style="text-decoration: none; color: white;">Batal</a> </button>
                                <button type="submit" class="btn btn-primary">Hitung</button>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- Bootstrap core JavaScript-->
    <script src="<?= base_url('assets/') ?>vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url('assets/') ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url('assets/') ?>vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url('assets/') ?>js/sb-admin-2.min.js"></script>
</body>

</html>