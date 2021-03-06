<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Sub_Kriteria_model extends CI_Model
{

    public function tampil()
    {
        $query = $this->db->get('sub_kriteria');
        return $query->result();
    }
    public function view($id_kriteria)
    {
        $query = $this->db->query("SELECT * FROM sub_kriteria WHERE id_kriteria='$id_kriteria'  ORDER BY bobot ASC");
        return $query->result();
    }

    public function update_bobot($id_sub_kriteria, $data = [])
    {
        $ubah = array(
            'nilai' => $data['nilai']
        );

        $this->db->where('id_sub_kriteria', $id_sub_kriteria);
        $this->db->update('sub_kriteria', $ubah);
    }
    //costbenefit
    public function get_max_min($id_kriteria)
    {
        $query = $this->db->query("SELECT max(sub_kriteria.nilai) as max, min(sub_kriteria.nilai) as min, sub_kriteria.nilai as nilai, 
			kriteria.jenis FROM `penilaian` 
			JOIN sub_kriteria ON penilaian.nilai=sub_kriteria.id_sub_kriteria 
			JOIN kriteria ON penilaian.id_kriteria=kriteria.id_kriteria 
			WHERE penilaian.id_kriteria='$id_kriteria'");
        return $query->row_array();
    }

    public function getTotal()
    {
        return $this->db->count_all('sub_kriteria');
    }

    public function insert($data = [])
    {
        $result = $this->db->insert('sub_kriteria', $data);
        return $result;
    }

    public function show($id_sub_kriteria)
    {
        $this->db->where('id_sub_kriteria', $id_sub_kriteria);
        $query = $this->db->get('sub_kriteria');
        return $query->row();
    }

    public function update($id_sub_kriteria, $data = [])
    {
        $ubah = array(
            'id_kriteria' => $data['id_kriteria'],
            'deskripsi' => $data['deskripsi'],
            'bobot'  => $data['bobot']
        );

        $this->db->where('id_sub_kriteria', $id_sub_kriteria);
        $this->db->update('sub_kriteria', $ubah);
    }

    public function delete($id_sub_kriteria)
    {
        $this->db->where('id_sub_kriteria', $id_sub_kriteria);
        $this->db->delete('sub_kriteria');
    }

    public function get_kriteria()
    {
        $query = $this->db->get('kriteria');
        return $query->result();
    }

    public function count_kriteria()
    {
        $query =  $this->db->query("SELECT id_kriteria,COUNT(deskripsi) AS jml_setoran FROM sub_kriteria GROUP BY id_kriteria")->result();
        return $query;
    }

    public function data_sub_kriteria($id_kriteria)
    {
        $query = $this->db->query("SELECT * FROM sub_kriteria WHERE id_kriteria='$id_kriteria'  ORDER BY bobot ASC;");
        return $query->result_array();
    }

    public function update_rekomendasi_sub_kriteria($id_sub_kriteria, $rekomendasi)
    {
        $result = $this->db->query("UPDATE sub_kriteria SET rekomendasi = '$rekomendasi' WHERE sub_kriteria.id_sub_kriteria = '$id_sub_kriteria';");
        return $result;
    }

    public function get_spesific_sub_kriteria($id_sub_kriteria)
    {
        $result = $this->db->query("SELECT * FROM sub_kriteria JOIN kriteria ON kriteria.id_kriteria = sub_kriteria.id_kriteria WHERE id_sub_kriteria = '$id_sub_kriteria';");
        return $result->row_array();
    }

    public function get_other_sub_kriteria($id_kriteria, $id_sub_kriteria)
    {
        $result = $this->db->query("SELECT * FROM sub_kriteria WHERE id_kriteria = '$id_kriteria' AND NOT id_sub_kriteria = '$id_sub_kriteria' ORDER BY id_sub_kriteria;");
        return $result->result_array();
    }
}
    
    /* End of file Kategori_model.php */
