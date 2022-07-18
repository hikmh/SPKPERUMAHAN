<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model('Login_model');
        $this->load->model('User_model');
        $this->load->model('Penilaian_model');
        $this->load->model('Perhitungan_model');
        $this->load->model('Sub_Kriteria_model');
        $this->load->model('Pesan_model');
    }
    public function index()
    {
        if ($this->Login_model->logged_id()) {
            redirect('Login/home');
        } else {
            $nama = $this->input->post('nama');
            $email = $this->input->post('email');
            $nilai = $this->input->post('nilai');

            $data = [
                'nama' => $nama,
                'email' => $email,
                'nilai' => $nilai,
                'kriteria' => $this->Penilaian_model->get_kriteria(),
                'alternatif' => $this->Penilaian_model->get_alternatif(),
            ];
            $this->load->view('home', $data);
        }
    }
    public function rekomendasi()
    {
        $nama = $this->input->post('nama');
        $email = $this->input->post('email');
        $nilai = $this->input->post('nilai');

        $data = [
            'nama' => $nama,
            'email' => $email,
            'nilai' => $nilai,
            'kriteria' => $this->Penilaian_model->get_kriteria(),
            'alternatif' => $this->Penilaian_model->get_alternatif(),
        ];
        $this->load->view('rekomendasi', $data);
    }
    public function tentang()
    {
        $this->load->view('tentang');
    }
    public function hasil()
    {
        $nama = $this->input->post('nama');
        $email = $this->input->post('email');
        $nilai = $this->input->post('nilai');
        $kriteria = $this->Perhitungan_model->get_kriteria();
        $alternatif = $this->Perhitungan_model->get_alternatif();

        if ($nilai) {
            $this->Pesan_model->tambah_responden($nama, $email);
            $newResponden = $this->Pesan_model->get_spesific_responden($nama, $email);

            $min_b = $this->Perhitungan_model->get_min_b();
            $min_c = $this->Perhitungan_model->get_min_c();
            $min_bc = $this->Perhitungan_model->get_min_bc();

            foreach ($nilai as $element) :
                $this->Pesan_model->tambah_pesan($newResponden['id_responden'], $element);
                $data_spesific = $this->Sub_Kriteria_model->get_spesific_sub_kriteria($element);
                $data_lain = $this->Sub_Kriteria_model->get_other_sub_kriteria($data_spesific['id_kriteria'], $element);
                array_unshift($data_lain, $data_spesific);
                $jumlah_data = count($data_lain);
                if ($data_spesific['jenis'] == 'Cost') {
                    for ($i = $jumlah_data; $i >= 1; $i--) {
                        $sum = 0;
                        for ($j = $i; $j <= $jumlah_data; $j++) {
                            $sum += 1 / $j;
                        }
                        $this->Sub_Kriteria_model->update_rekomendasi_sub_kriteria($data_lain[$jumlah_data - $i]['id_sub_kriteria'], round($sum / $jumlah_data, 3));
                    }
                }
                if ($data_spesific['jenis'] == 'Benefit') {
                    for ($i = 1; $i <= $jumlah_data; $i++) {
                        $sum = 0;
                        for ($j = $i; $j <= $jumlah_data; $j++) {
                            $sum += 1 / $j;
                        }
                        $this->Sub_Kriteria_model->update_rekomendasi_sub_kriteria($data_lain[$i - 1]['id_sub_kriteria'], round($sum / $jumlah_data, 3));
                    }
                }
            endforeach;
            foreach ($alternatif as $keys) :
                $t_c = 0;
                $t_b = 0;
                foreach ($kriteria as $key) :
                    $data_pencocokan = $this->Perhitungan_model->data_nilai($keys->id_alternatif, $key->id_kriteria);
                    $min_max = $this->Perhitungan_model->get_max_min_rekomendasi($key->id_kriteria);
                    if ($min_max['jenis'] == 'Cost') {
                        $nilai_c = @($key->bobot * (($min_max['max'] - $data_pencocokan['rekomendasi']) / $min_max['min']));
                        $t_c += $nilai_c;
                    }
                    if ($min_max['jenis'] == 'Benefit') {
                        $nilai_b = @($key->bobot * (($data_pencocokan['rekomendasi'] - $min_max['min']) / $min_max['min']));
                        $t_b += $nilai_b;
                    }
                endforeach;
                $n_c = number_format(abs($t_c - $min_c['min_c']), 4);
                $n_b = number_format(abs($t_b - $min_b['min_b']), 4);
                $n_p = number_format(abs($n_c + $n_b), 4) - number_format($min_bc['min_bc'], 4);

                $this->Perhitungan_model->update_rekomendasi_hasil($keys->id_alternatif, $n_p);
            endforeach;
        }
        $data = [
            'nama' => $nama,
            'email' => $email,
            'nilai' => $nilai,
            'kriteria' => $this->Penilaian_model->get_kriteria(),
            'alternatif' => $this->Penilaian_model->get_alternatif(),
            'hasil' => $this->Perhitungan_model->get_hasil_rekomendasi_2_3()
        ];
        $this->load->view('hasilrek', $data);
    }


    public function detail($id_alternatif)
    {
        $detail = $this->Perhitungan_model->get_detail($id_alternatif);
        $data = [

            'detail' => $detail,
            'hasil' => $this->Perhitungan_model->get_hasil_rekomendasi_2_3(),
            'kriteria' => $this->Perhitungan_model->get_kriteria()

        ];


        $this->load->view('detail', $data);
    }

    public function login()
    {
        if ($this->Login_model->logged_id()) {
            redirect('Login/home');
        } else {
            $this->load->view('login');
        }
    }

    public function login_proses()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $passwordx = md5($password);
        $set = $this->Login_model->login($username, $passwordx);
        if ($set) {
            $log = [
                'id_user' => $set->id_user,
                'username' => $set->username,
                'id_user_level' => $set->id_user_level,
                'status' => 'Logged'
            ];
            $this->session->set_userdata($log);
            redirect('Login/home');
        } else {
            $this->session->set_flashdata('message', 'Username atau Password Salah');
            redirect('login/login');
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('login');
    }

    public function home()
    {
        $nama = $this->input->post('nama');
        $email = $this->input->post('email');
        $nilai = $this->input->post('nilai');

        $data = [
            'nama' => $nama,
            'email' => $email,
            'nilai' => $nilai,
            'page' => "Dashboard",
            'list' => $this->Penilaian_model->tampil(),
            'kriteria' => $this->Penilaian_model->get_kriteria(),
            'alternatif' => $this->Penilaian_model->get_alternatif(),
            'sub_kriteria' => $this->Penilaian_model->get_sub_kriteria(),
            'perhitungan' => $this->Penilaian_model->tampil()
        ];
        $this->load->view('admin/index', $data);
    }
}

/* End of file Login.php */
