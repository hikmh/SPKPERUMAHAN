-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2022 pada 12.11
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_roc_ocra_ci`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `lokasi` text NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `angsuran` varchar(100) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `luastanah` varchar(100) NOT NULL,
  `listrik` varchar(220) NOT NULL,
  `air` varchar(220) NOT NULL,
  `jalan` varchar(220) NOT NULL,
  `keamanan` varchar(200) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`, `lokasi`, `kategori`, `harga`, `angsuran`, `tipe`, `luastanah`, `listrik`, `air`, `jalan`, `keamanan`, `gambar`) VALUES
(38, 'BTN Nurlinda Graha Reksa Kencana', 'https://goo.gl/maps/DbfNsDjSkGbhEBQL9', 'Subsidi', '175.000.000', '1.200.000', '36', '91 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Ada', 'df6e1e2ef76c31d98f6137546b6f31a5.PNG'),
(39, 'BTN Graha Reksa Kencana', 'https://goo.gl/maps/DbfNsDjSkGbhEBQL9', 'Komersil', '265.000.000', '2.000.000', '45', '112 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Ada', 'c62c6df9b82c343e48634e5c37f1bb89.PNG'),
(40, 'BTN Bumi Arum 1', 'https://goo.gl/maps/dW55UVNnDgW2R6wEA', 'Komersil', '250.000.000', '2.000.000', '45', '135 m2', '900 watt', 'Sumur Bor', 'Paving Blok', 'Tidak Ada', '06b8e107f88fe1841491cc3adc469371.PNG'),
(41, 'Btn Bumi Arum 4', 'https://goo.gl/maps/dW55UVNnDgW2R6wEA', 'Subsidi', '185.000.000', '1.200.000', '36', '108 m2', '900 watt', 'Sumur Bor', 'Paving Blok', 'tidak ada', 'ddf572131c50323f12e0326b734e8a4f.PNG'),
(42, 'Btn Pradana Residence', 'https://goo.gl/maps/jDFdyHGZVmfGD1Ry8', 'Subsidi', '165.000.000', '1.200.000', '36', '104 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Tidak Ada', '229cf22d1fa03bc8d5a6bbf00a896e29.PNG'),
(43, 'Btn Pradana Residence', 'https://goo.gl/maps/jDFdyHGZVmfGD1Ry8', 'Komersil', '360.000.000', '2.998.346', '45', '135 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Tidak Ada', 'cf55667ad5acddee9a6de4184e2d3081.jpg'),
(44, 'Gemilang Residence 2', 'https://goo.gl/maps/8tffz6yBXvWc7kM17', 'Subsidi', '156.500.000', '1.200.000', '36', '99 m2', '900 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', 'f013fb84e39b91e7c34d8e68eb80e1bb.PNG'),
(45, 'Perumahan Jambu Regency', 'https://goo.gl/maps/X3CPksQsVJgYtfop6', 'Subsidi', '156.000.000', '1.127.000', '36', '91 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Ada', '2e4757d687fa24bd4acdad6a3a6d27f8.PNG'),
(46, 'Btn Green Anugrah Regency', 'https://goo.gl/maps/qWj5PrvtS6GJ5oVL9', 'Subsidi', '165.000.000', '1.193.700', '36', '91 m2', '1300 watt', 'Sumur Bor', 'Rabat', 'Tidak Ada', '8cc41b2aee7aace98572197a7a9b9e24.PNG'),
(47, 'BTN Bumi Royal Isthin Shifa ', 'https://goo.gl/maps/yiMFrKrCdgmHSTUX8', 'Subsidi', '190.000.000', '1.130.277', '36', '92 m2', '1300 watt', 'Sumur Bor', 'Tanah ', 'Tidak Ada', '643b081c2436498b6ea35a29f113cd2c.PNG'),
(51, 'BTN Shifa Perdana', 'https://goo.gl/maps/TGL1TxQD3nheyATv8', 'Subsidi', '156.500.000', '1.130.277', '36', '93 m2', '1300 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', '372d0333bbf96e8bfb9853c3b19e06b6.PNG'),
(52, 'BTN Mutiara Atira', 'https://goo.gl/maps/mkr2boKEU7PdJci39', 'Subsidi', '156.500.000', '1.130.277', '36', '91 m2', '1300 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', '76fd123e34e64ca0308ab40b0054ce09.PNG'),
(55, 'BTN Adam Tal Hafidz', 'https://goo.gl/maps/eMDdgKMETz7DvMjh8', 'Subsidi', '156.500.000', '1.130.277', '36', '91 m2', '1300 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', '6c7c2721ed185cee8f7ce3080f8e02f1.PNG'),
(56, 'BTN Arrizky Perdana Residence', 'https://goo.gl/maps/Dwa85gmZMYkvXdXY6', 'Subsidi', '156.500.000', '1.130.277', '36', '98 m2', '1300 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', '9f2fbe0a87fc82a5ba18e506041c3ba4.PNG'),
(57, 'Perumahan Green Anugrah Regency', 'https://goo.gl/maps/WDpfjuSnUVyKCH336', 'Komersil', '280.000.000', '2.498.662', '45', '112 m2', '1300 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', '9a13a8f7eab79d65bbe46904ba5aa37e.PNG'),
(58, 'BTN Green Anugrah Regency', 'https://goo.gl/maps/WDpfjuSnUVyKCH336', 'Komersil', '350.000.000', '2.998.346', '60', '135 m2', '1300 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', '026b2562600ef2175d7c4cf90ea8f14c.PNG'),
(59, 'BTN Blue Hils', 'https://goo.gl/maps/nKu6BJ8BAYue6iby8', 'Komersil', '300.000.000', '2.498,662', '45', '120 m2', '1300 watt', 'Sumur Bor', 'Rabat', 'Tidak Ada', 'dca3550698fad918141f846d643f5b6f.jpeg'),
(60, 'BTN Gianna Regency', 'https://goo.gl/maps/afTd7kb58k7g4znC7', 'Subsidi', '156.000.000', '1.193.700', '36', '91 m2', '1300 watt', 'Sumur Bor', 'Tanah', 'TIdak Ada', '786edec2d5774380a174411b06abddc4.PNG'),
(61, 'BTN Madinah City Square', 'https://goo.gl/maps/dRhm3EzghtT1vKccA', 'Subsidi', '200.000.000', '1.193.700', '36', '91 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Ada', '0471daf5fddf5d8c1abb8a5cd9648482.PNG'),
(62, 'PERUMAHAN GRIYA ACI INDAH', 'https://goo.gl/maps/BzGCnQSfSAXQEReA8', 'Subsidi', '156.000.000', '1.193.700', '36', '98 m2', '1300 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', '2627bf0f46bdc7cffacb8161eb4f8937.PNG'),
(63, 'Perumahan Bestari Indah', 'https://goo.gl/maps/v5qDhjkw9yVGVFfN6', 'Subsidi', '160.000.000', '1.193.700', '36', '91 m2', '900 watt', 'Sumur Bor', 'Paving Blok', 'Tidak ada', 'f130a542850aba94ea8ed137ed2b1850.PNG'),
(64, 'CItraLand', 'https://goo.gl/maps/uz3fPmBJHhysMikC8', 'Komersil', '662.441.023', '5.996.692', '45', '90 m2', '2200 watt', 'Sumur Bor', 'Aspal', 'Ada', '1f4b8c893fdcc9d2a3a9edd25e6a75a3.PNG'),
(65, 'Perumahan Singapore Golden', 'https://goo.gl/maps/xzgQEAz1BCg5pdL7A', 'Subsidi', '165.000.000', '1.193.700', '36', '97 m2', '1300 ', 'Sumur Bor', 'Pengerasan Tanah', 'Tidak Ada', 'c198c54fb27daf34f9025bf1ebd57928.PNG'),
(66, 'Perumahan Olive Halu Oleo', 'https://maps.app.goo.gl/YLS4yrUNEumVuYHG6', 'Subsidi', '184.000.000', '1.175.000', '36', '91 m2', '900 watt', 'Sumur Bor', 'Paving Blok', 'Ada', '29602be025a95451b9365e16dc92bb13.PNG'),
(67, 'Perumahan Olive Halu Oleo', 'https://maps.app.goo.gl/YLS4yrUNEumVuYHG6', 'Komersil', '225.000.000', '1.998.897', '45', '135 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Ada', '50e38af965e4733b314ceed1d8375737.PNG'),
(69, 'BTN Villa Mutiara', 'https://goo.gl/maps/zChSQmEY8QeeJNnk8', 'Subsidi', '146.000.000', '1.193.700', '36', '104 m2', '900 watt', 'Sumur Bor', 'Tanah', 'Tidak ada', '2de71ed4214c8ef3579299c751540cef.PNG'),
(70, 'Afika Residence', 'https://goo.gl/maps/VnfHe5EenSkLqEa1A', 'Subsidi', '175.000.000', '1.200.000', '36', '102 m2', '1300 Watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', 'b459586a28ab1e6d42645af41ede95da.PNG'),
(71, 'Maharani Poasia ', 'https://goo.gl/maps/hxmHBZ2oC5wFjDFE9', 'Subsidi', '183.000.000', '1.200.000', '36', '91 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Tidak Ada', '66302a76fdfb047bb77c639b640e551d.PNG'),
(73, 'Grand Boulevard Regency', 'https://goo.gl/maps/5LJBjRMqk4m7Tw9U6', 'Subsidi', '156.750.000', '1.200.000', '36', '91 m2', '1300  watt', 'Sumur Bor', 'Tanah', 'Ada', 'fa17b69d00c78920da453b1924cb1de0.PNG'),
(75, 'BTN Griya Sinaji ', 'https://goo.gl/maps/9fsP6cJPBArZEgXF9', 'Subsidi', '140.000.000', '1.200.000', '36', '91 m2', '900 watt', 'Tidak ada', 'tanah', 'tidak ada', '130429786cc5a06ec1b9184a0ef8befe.PNG'),
(76, 'Fahmi Residence', 'https://goo.gl/maps/ZP4R8WAaRUjz6LyQ8', 'Subsidi', '156.500.000', '1.193.700', '36', '104 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Tidak ada', '0818a58a299c22697a44fa0858473add.PNG'),
(77, 'Tita Indah Residence', 'https://goo.gl/maps/9x1vCcZhs8GknSQ37', 'Subsidi ', '175.000.000', '1.200.000', '36', '91 m2', '900 watt', 'Sumur Bor', 'Paving Blok', 'Tidak ada', '4e116845a39c6f9dd57a949c7e3bdaf9.PNG'),
(79, 'Perumahan Delta Griya Permai', 'https://goo.gl/maps/xzBAct4Y5qX7RBsV9', 'Subsidi', '148.000.000', '1.200.000', '36', '84 m2', '900 watt', 'Sumur Bor', 'Paving Blok', 'Tidak Ada', 'ab20fe3a2a88b3f9048cd8fd6962ecfe.PNG'),
(80, 'Kadar Punggolaka Residence', 'https://goo.gl/maps/DRCHq3KFFQsPKmGdA', 'Subsidi', '168.000.000', '1.175.702', '36', '96 m2', '900 watt', 'Sumur Bor', 'Tanah', 'Tidak ada', '70fed049cee71cfa5d4149eb6b6eb690.PNG'),
(81, 'Margahayu Regency', 'https://goo.gl/maps/modVZKFwSVgKcRsj8', 'Subsidi', '154.935.000', '1.256.465', '36', '91 m2', '900 watt', 'Sumur Bor', 'Tanah', 'Tidak ada', '3089a2de07431035b37cc0b53d212e34.PNG'),
(82, 'Hombis Residence', 'https://goo.gl/maps/dExKT7go5hCtrgjWA', 'subsidi', '156.500.000', '1.198.000', '36', '98 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Tidak ada', '0d5bab7d1f00171fff93ecd439afc95c.PNG'),
(83, 'Griya Rafasya Anawai', 'https://goo.gl/maps/9cvVDLoPGvb4vsbLA', 'Subsidi', '156.500.000', '1.175.712', '36', '91', '900 watt', 'sumur bor', 'Tanah', 'Tidak ada', '8ff47f743ae3962685be95f7737f63a2.PNG'),
(84, 'Wonua Marini', 'https://goo.gl/maps/23i6B8ifiojeC4B5A', 'Subsidi', '156.500.000', '1.175.712	', '36', '98 m2', '900 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', '49f8fae88f608c44b53d65e2c70ab38b.PNG'),
(85, 'Afika Land', 'https://goo.gl/maps/3Bdg2cFMjyot3x6F8', 'Subsidi', '185.000.000', '1.200.000', '36', '102 m2', '1300 watt', 'Sumur Bor', 'Paving Blok', 'Tidak Ada', 'bbf70d13160244af17b91499f4a21a05.PNG'),
(86, 'Zavier Anugrah Residence', 'https://goo.gl/maps/LFYWbZJPG6KEdKWT9', 'Subsidi', '156.000.000', '1.300.000', '36', '91 m2', '900 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', '25190b0267808ee4e9f51bf1da63eb27.PNG'),
(87, 'Alsyifa Regency', 'https://goo.gl/maps/Wf4Eb5DcwYAWkAGn7', 'Subsidi', '157.000.000', '1.339.246', '36', '91 m2', '900 watt', 'Sumur Bor', 'Tanah', 'Tidak ada', 'c76f0fc606f05702232ba0956328e098.PNG'),
(88, 'BTN Griya Anoa residence', 'https://goo.gl/maps/dZ1x5utJhkeBHLjA6', 'Subsidi', '140.000.000', '1.100.000', '36', '84 m2', '900 watt', 'Sumur Bor', 'Tanah', 'Tidak ada', '9149d6d4218dd17c63f67680cdf7ef5a.PNG'),
(89, 'Pradana Residence IX', 'https://goo.gl/maps/G29pe48JddeUGVaC7', 'Subsidi ', '185.000.000', '1.200.000', '36', '104 m2', '1300 watt', 'Sumur Bor', 'Rabat', 'Tidak Ada', '5516b69062f022ba6ad9467987de18eb.PNG'),
(91, 'BTN Graha Mulya', 'https://goo.gl/maps/BACfRKcrL2MPgrhv8', 'Subsidi', '175.000.000', '1.101.000', '36', '104 m2', '900 watt', 'Sumur Bor', 'Paving Blok', 'Tidak Ada', '47d86496596b2313a8ade3c55a759351.PNG'),
(94, 'BTN Tapalosa Residence', 'https://goo.gl/maps/NFTMS1b1UABxsN2K6', 'subsidi', '161.500.000', '1.200.000', '36', '98 m2', '900 watt', 'sumur bor', 'Tanah', 'Tidak ada', '047947c122e514ea0d7c9a950f1473b1.PNG'),
(95, 'Perumahan Tapera Kendari', 'https://goo.gl/maps/x2qTh2vPGd9KjdYx8', 'Subsidi', '156.500.000', '1.200.000', '36', '104 m2', '1300 watt', 'sumur bor', 'Tanah', 'Tidak ada', 'd56885bf3990bcbeeb58122da874ab1d.PNG'),
(96, 'BTN Nur Empat', 'https://goo.gl/maps/FV41A13GyHj85mVB7', 'Subsidi', '156.500.000', '1.193.900', '36', '105 m2', '1300 watt', 'Sumur Bor', 'Tanah', 'Tidak ada', '99c3ce8d5a25e75e74f435913efc387f.PNG'),
(99, 'PILAR KING ADHAM', 'https://goo.gl/maps/KMYvbsWthigwQ4eG8', 'Subsidi', '156.500.000', '1.200.000', '36', '91 m2', '900 watt', 'sumur bor', 'Tanah', 'Tidak ada', 'd5d971d8ce4b14533eb5519d9aee81cb.PNG'),
(100, 'Graha Teratai Indah', 'https://goo.gl/maps/GrjxaVkZ1byXGaN78', 'Subsidi', '150.000.000', '1.183.300', '36', '96 m2', '900 watt', 'Sumur Bor', 'Tanah', 'Tidak Ada', '9f989790cc2904f76a541d0c137fd8cc.PNG'),
(101, 'Grand Andika', 'https://goo.gl/maps/gbtNTPZtWecFdJsk7', 'Subsidi', '185.000.000', '1.200.000', '36', '105 m2', '1300 watt', 'Sumur Bor', 'tanah', 'Ada', 'ddff68368c9d2a61349c7c23da828a4a.PNG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `rekomendasi` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`, `rekomendasi`) VALUES
(1, 38, 1.1616, 1.0113),
(2, 39, 0.9763, 1.4113),
(3, 40, 0.924, 1.5813),
(4, 41, 1.367, 1.2863),
(5, 42, 1.5883, 1.4813),
(6, 43, 0.6653, 1.8123),
(7, 44, 1.657, 1.1863),
(8, 45, 1.8816, 0.4943),
(9, 46, 1.3263, 1.6883),
(10, 47, 1.3423, 1.3803),
(11, 51, 1.9703, 0.7523),
(12, 52, 1.8223, 0.6043),
(13, 55, 1.8223, 0.6043),
(14, 56, 2.1183, 0.9003),
(15, 57, 0.9373, 1.5823),
(16, 58, 0.5863, 1.7853),
(17, 59, 0.9583, 1.5403),
(18, 60, 1.6193, 1.4163),
(19, 61, 1.0506, 1.9343),
(20, 62, 1.9153, 1.7123),
(21, 63, 1.292, 1.7293),
(22, 64, 0, 1.8093),
(23, 65, 1.6013, 2.0263),
(24, 66, 0.9953, 2.0173),
(25, 67, 1.1996, 1.2693),
(26, 69, 2.322, 3.1993),
(27, 70, 1.5463, 1.5653),
(28, 71, 0.8303, 1.3513),
(29, 73, 1.4336, 0.7813),
(30, 75, 1.6343, 2.0243),
(31, 76, 2.1053, 1.7763),
(32, 77, 1.089, 1.1203),
(33, 79, 1.717, 2.0623),
(34, 80, 1.567, 2.0673),
(35, 81, 1.361, 0.8903),
(36, 82, 1.564, 1.4993),
(37, 83, 1.564, 1.4993),
(38, 84, 1.86, 1.7953),
(39, 85, 1.2743, 1.7953),
(40, 86, 1.158, 1.0933),
(41, 87, 1.158, 1.0933),
(42, 88, 2.081, 1.9433),
(43, 89, 1.2533, 1.8373),
(44, 91, 1.939, 1.3613),
(45, 94, 1.343, 1.5003),
(46, 95, 1.8603, 1.2513),
(47, 96, 2.0633, 1.8603),
(48, 99, 1.361, 0.8903),
(49, 100, 1.86, 1.7953),
(50, 101, 1.2496, 1.8533);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `kode_kriteria` varchar(100) NOT NULL,
  `bobot` float NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `prioritas` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `keterangan`, `kode_kriteria`, `bobot`, `jenis`, `prioritas`) VALUES
(32, 'Harga', 'C1', 0.314, 'Cost', 1),
(33, 'Angsuran', 'C2', 0.203, 'Cost', 2),
(36, ' Luas Tanah', 'C3', 0.148, 'Benefit', 3),
(37, 'Tipe rumah', 'C4', 0.111, 'Benefit', 4),
(38, 'Listrik', 'C5', 0.083, 'Benefit', 5),
(39, 'Air', 'C6', 0.061, 'Benefit', 6),
(41, 'Akses Jalan', 'C7', 0.042, 'Benefit', 7),
(42, 'Keamanan', 'C8', 0.026, 'Benefit', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_b`
--

CREATE TABLE `nilai_b` (
  `id_nilai_b` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_b`
--

INSERT INTO `nilai_b` (`id_nilai_b`, `id_alternatif`, `nilai`) VALUES
(1, 38, 0.2503),
(2, 39, 0.785),
(3, 40, 0.7327),
(4, 41, 0.7697),
(5, 42, 0.677),
(6, 43, 0.788),
(7, 44, 0.4317),
(8, 45, 0.2503),
(9, 46, 0.212),
(10, 47, 0.339),
(11, 51, 0.339),
(12, 52, 0.191),
(13, 55, 0.191),
(14, 56, 0.487),
(15, 57, 0.746),
(16, 58, 0.709),
(17, 59, 0.767),
(18, 60, 0.191),
(19, 61, 0.2503),
(20, 62, 0.487),
(21, 63, 0.1777),
(22, 64, 0.1227),
(23, 65, 0.487),
(24, 66, 0.195),
(25, 67, 0.8053),
(26, 69, 0.5797),
(27, 70, 0.635),
(28, 71, 0.233),
(29, 73, 0.2083),
(30, 75, 0.095),
(31, 76, 0.677),
(32, 77, 0.1777),
(33, 79, 0.1777),
(34, 80, 0.4527),
(35, 81, 0.1357),
(36, 82, 0.1357),
(37, 83, 0.1357),
(38, 84, 0.4317),
(39, 85, 0.677),
(40, 86, 0.1357),
(41, 87, 0.1357),
(42, 88, 0.1357),
(43, 89, 0.656),
(44, 91, 0.6217),
(45, 94, 0.4317),
(46, 95, 0.635),
(47, 96, 0.635),
(48, 99, 0.1357),
(49, 100, 0.4317),
(50, 101, 0.6523);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_bc`
--

CREATE TABLE `nilai_bc` (
  `id_nilai_bc` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_bc`
--

INSERT INTO `nilai_bc` (`id_nilai_bc`, `id_alternatif`, `nilai`) VALUES
(1, 38, 1.1893),
(2, 39, 1.004),
(3, 40, 0.9517),
(4, 41, 1.3947),
(5, 42, 1.616),
(6, 43, 0.693),
(7, 44, 1.6847),
(8, 45, 1.9093),
(9, 46, 1.354),
(10, 47, 1.37),
(11, 51, 1.998),
(12, 52, 1.85),
(13, 55, 1.85),
(14, 56, 2.146),
(15, 57, 0.965),
(16, 58, 0.614),
(17, 59, 0.986),
(18, 60, 1.647),
(19, 61, 1.0783),
(20, 62, 1.943),
(21, 63, 1.3197),
(22, 64, 0.0277),
(23, 65, 1.629),
(24, 66, 1.023),
(25, 67, 1.2273),
(26, 69, 2.3497),
(27, 70, 1.574),
(28, 71, 0.858),
(29, 73, 1.4613),
(30, 75, 1.662),
(31, 76, 2.133),
(32, 77, 1.1167),
(33, 79, 1.7447),
(34, 80, 1.5947),
(35, 81, 1.3887),
(36, 82, 1.5917),
(37, 83, 1.5917),
(38, 84, 1.8877),
(39, 85, 1.302),
(40, 86, 1.1857),
(41, 87, 1.1857),
(42, 88, 2.1087),
(43, 89, 1.281),
(44, 91, 1.9667),
(45, 94, 1.3707),
(46, 95, 1.888),
(47, 96, 2.091),
(48, 99, 1.3887),
(49, 100, 1.8877),
(50, 101, 1.2773);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_c`
--

CREATE TABLE `nilai_c` (
  `id_nilai_c` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_c`
--

INSERT INTO `nilai_c` (`id_nilai_c`, `id_alternatif`, `nilai`) VALUES
(1, 38, 1.034),
(2, 39, 0.314),
(3, 40, 0.314),
(4, 41, 0.72),
(5, 42, 1.034),
(6, 43, 0),
(7, 44, 1.348),
(8, 45, 1.754),
(9, 46, 1.237),
(10, 47, 1.126),
(11, 51, 1.754),
(12, 52, 1.754),
(13, 55, 1.754),
(14, 56, 1.754),
(15, 57, 0.314),
(16, 58, 0),
(17, 59, 0.314),
(18, 60, 1.551),
(19, 61, 0.923),
(20, 62, 1.551),
(21, 63, 1.237),
(22, 64, 0),
(23, 65, 1.237),
(24, 66, 0.923),
(25, 67, 0.517),
(26, 69, 1.865),
(27, 70, 1.034),
(28, 71, 0.72),
(29, 73, 1.348),
(30, 75, 1.662),
(31, 76, 1.551),
(32, 77, 1.034),
(33, 79, 1.662),
(34, 80, 1.237),
(35, 81, 1.348),
(36, 82, 1.551),
(37, 83, 1.551),
(38, 84, 1.551),
(39, 85, 0.72),
(40, 86, 1.145),
(41, 87, 1.145),
(42, 88, 2.068),
(43, 89, 0.72),
(44, 91, 1.44),
(45, 94, 1.034),
(46, 95, 1.348),
(47, 96, 1.551),
(48, 99, 1.348),
(49, 100, 1.551),
(50, 101, 0.72);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(1, 38, 32, 34),
(2, 38, 33, 37),
(3, 38, 36, 73),
(4, 38, 37, 49),
(5, 38, 38, 53),
(6, 38, 39, 56),
(7, 38, 41, 71),
(8, 38, 42, 65),
(9, 39, 32, 33),
(10, 39, 33, 35),
(11, 39, 36, 78),
(12, 39, 37, 50),
(13, 39, 38, 53),
(14, 39, 39, 57),
(15, 39, 41, 71),
(16, 39, 42, 65),
(17, 40, 32, 33),
(18, 40, 33, 35),
(19, 40, 36, 78),
(20, 40, 37, 50),
(21, 40, 38, 54),
(22, 40, 39, 56),
(23, 40, 41, 71),
(24, 40, 42, 66),
(25, 41, 32, 33),
(26, 41, 33, 37),
(27, 41, 36, 78),
(28, 41, 37, 49),
(29, 41, 38, 54),
(30, 41, 39, 56),
(31, 41, 41, 71),
(32, 41, 42, 66),
(33, 42, 32, 34),
(34, 42, 33, 37),
(35, 42, 36, 47),
(36, 42, 37, 49),
(37, 42, 38, 53),
(38, 42, 39, 56),
(39, 42, 41, 71),
(40, 42, 42, 66),
(41, 43, 32, 31),
(42, 43, 33, 35),
(43, 43, 36, 78),
(44, 43, 37, 50),
(45, 43, 38, 53),
(46, 43, 39, 56),
(47, 43, 41, 71),
(48, 43, 42, 66),
(49, 44, 32, 68),
(50, 44, 33, 37),
(51, 44, 36, 48),
(52, 44, 37, 49),
(53, 44, 38, 54),
(54, 44, 39, 56),
(55, 44, 41, 72),
(56, 44, 42, 66),
(57, 45, 32, 68),
(58, 45, 33, 77),
(59, 45, 36, 73),
(60, 45, 37, 49),
(61, 45, 38, 53),
(62, 45, 39, 56),
(63, 45, 41, 71),
(64, 45, 42, 65),
(65, 46, 32, 34),
(66, 46, 33, 74),
(67, 46, 36, 73),
(68, 46, 37, 49),
(69, 46, 38, 53),
(70, 46, 39, 56),
(71, 46, 41, 69),
(72, 46, 42, 66),
(73, 47, 32, 33),
(74, 47, 33, 77),
(75, 47, 36, 52),
(76, 47, 37, 49),
(77, 47, 38, 53),
(78, 47, 39, 56),
(79, 47, 41, 72),
(80, 47, 42, 66),
(81, 51, 32, 68),
(82, 51, 33, 77),
(83, 51, 36, 52),
(84, 51, 37, 49),
(85, 51, 38, 53),
(86, 51, 39, 56),
(87, 51, 41, 72),
(88, 51, 42, 66),
(89, 52, 32, 68),
(90, 52, 33, 77),
(91, 52, 36, 73),
(92, 52, 37, 49),
(93, 52, 38, 53),
(94, 52, 39, 56),
(95, 52, 41, 72),
(96, 52, 42, 66),
(97, 55, 32, 68),
(98, 55, 33, 77),
(99, 55, 36, 73),
(100, 55, 37, 49),
(101, 55, 38, 53),
(102, 55, 39, 56),
(103, 55, 41, 72),
(104, 55, 42, 66),
(105, 56, 32, 68),
(106, 56, 33, 77),
(107, 56, 36, 48),
(108, 56, 37, 49),
(109, 56, 38, 53),
(110, 56, 39, 56),
(111, 56, 41, 72),
(112, 56, 42, 66),
(113, 57, 32, 33),
(114, 57, 33, 35),
(115, 57, 36, 78),
(116, 57, 37, 50),
(117, 57, 38, 53),
(118, 57, 39, 56),
(119, 57, 41, 72),
(120, 57, 42, 66),
(121, 58, 32, 31),
(122, 58, 33, 35),
(123, 58, 36, 78),
(124, 58, 37, 51),
(125, 58, 38, 53),
(126, 58, 39, 56),
(127, 58, 41, 72),
(128, 58, 42, 66),
(129, 59, 32, 33),
(130, 59, 33, 35),
(131, 59, 36, 78),
(132, 59, 37, 50),
(133, 59, 38, 53),
(134, 59, 39, 56),
(135, 59, 41, 69),
(136, 59, 42, 66),
(137, 59, 32, 33),
(138, 59, 33, 35),
(139, 59, 36, 78),
(140, 59, 37, 50),
(141, 59, 38, 53),
(142, 59, 39, 56),
(143, 59, 41, 69),
(144, 59, 42, 66),
(145, 59, 32, 33),
(146, 59, 33, 35),
(147, 59, 36, 78),
(148, 59, 37, 50),
(149, 59, 38, 53),
(150, 59, 39, 56),
(151, 59, 41, 69),
(152, 59, 42, 66),
(153, 60, 32, 68),
(154, 60, 33, 74),
(155, 60, 36, 73),
(156, 60, 37, 49),
(157, 60, 38, 53),
(158, 60, 39, 56),
(159, 60, 41, 72),
(160, 60, 42, 66),
(161, 61, 32, 33),
(162, 61, 33, 74),
(163, 61, 36, 73),
(164, 61, 37, 49),
(165, 61, 38, 53),
(166, 61, 39, 56),
(167, 61, 41, 71),
(168, 61, 42, 65),
(169, 62, 32, 68),
(170, 62, 33, 74),
(171, 62, 36, 48),
(172, 62, 37, 49),
(173, 62, 38, 53),
(174, 62, 39, 56),
(175, 62, 41, 72),
(176, 62, 42, 66),
(177, 63, 32, 34),
(178, 63, 33, 74),
(179, 63, 36, 73),
(180, 63, 37, 49),
(181, 63, 38, 54),
(182, 63, 39, 56),
(183, 63, 41, 71),
(184, 63, 42, 66),
(185, 64, 32, 31),
(186, 64, 33, 35),
(187, 64, 36, 73),
(188, 64, 37, 50),
(189, 64, 38, 55),
(190, 64, 39, 56),
(191, 64, 41, 80),
(192, 64, 42, 65),
(193, 65, 32, 34),
(194, 65, 33, 74),
(195, 65, 36, 48),
(196, 65, 37, 49),
(197, 65, 38, 53),
(198, 65, 39, 56),
(199, 65, 41, 72),
(200, 65, 42, 66),
(201, 66, 32, 33),
(202, 66, 33, 74),
(203, 66, 36, 73),
(204, 66, 37, 49),
(205, 66, 38, 54),
(206, 66, 39, 56),
(207, 66, 41, 71),
(208, 66, 42, 65),
(209, 67, 32, 33),
(210, 67, 33, 36),
(211, 67, 36, 78),
(212, 67, 37, 50),
(213, 67, 38, 53),
(214, 67, 39, 56),
(215, 67, 41, 71),
(216, 67, 42, 65),
(217, 69, 32, 76),
(218, 69, 33, 74),
(219, 69, 36, 47),
(220, 69, 37, 49),
(221, 69, 38, 54),
(222, 69, 39, 56),
(223, 69, 41, 72),
(224, 69, 42, 66),
(225, 70, 32, 34),
(226, 70, 33, 37),
(227, 70, 36, 47),
(228, 70, 37, 49),
(229, 70, 38, 53),
(230, 70, 39, 56),
(231, 70, 41, 72),
(232, 70, 42, 66),
(233, 71, 32, 33),
(234, 71, 33, 37),
(235, 71, 36, 73),
(236, 71, 37, 49),
(237, 71, 38, 53),
(238, 71, 39, 56),
(239, 71, 41, 71),
(240, 71, 42, 66),
(241, 73, 32, 68),
(242, 73, 33, 37),
(243, 73, 36, 73),
(244, 73, 37, 49),
(245, 73, 38, 53),
(246, 73, 39, 56),
(247, 73, 41, 72),
(248, 73, 42, 65),
(249, 75, 32, 76),
(250, 75, 33, 37),
(251, 75, 36, 73),
(252, 75, 37, 49),
(253, 75, 38, 54),
(254, 75, 39, 58),
(255, 75, 41, 72),
(256, 75, 42, 66),
(257, 76, 32, 68),
(258, 76, 33, 74),
(259, 76, 36, 47),
(260, 76, 37, 49),
(261, 76, 38, 53),
(262, 76, 39, 56),
(263, 76, 41, 71),
(264, 76, 42, 66),
(265, 77, 32, 34),
(266, 77, 33, 37),
(267, 77, 36, 73),
(268, 77, 37, 49),
(269, 77, 38, 54),
(270, 77, 39, 56),
(271, 77, 41, 71),
(272, 77, 42, 66),
(273, 79, 32, 76),
(274, 79, 33, 37),
(275, 79, 36, 73),
(276, 79, 37, 49),
(277, 79, 38, 54),
(278, 79, 39, 56),
(279, 79, 41, 71),
(280, 79, 42, 66),
(281, 80, 32, 34),
(282, 80, 33, 74),
(283, 80, 36, 48),
(284, 80, 37, 49),
(285, 80, 38, 54),
(286, 80, 39, 56),
(287, 80, 41, 69),
(288, 80, 42, 66),
(289, 81, 32, 68),
(290, 81, 33, 37),
(291, 81, 36, 73),
(292, 81, 37, 49),
(293, 81, 38, 54),
(294, 81, 39, 56),
(295, 81, 41, 72),
(296, 81, 42, 66),
(297, 82, 32, 68),
(298, 82, 33, 74),
(299, 82, 36, 73),
(300, 82, 37, 49),
(301, 82, 38, 54),
(302, 82, 39, 56),
(303, 82, 41, 72),
(304, 82, 42, 66),
(305, 83, 32, 68),
(306, 83, 33, 74),
(307, 83, 36, 73),
(308, 83, 37, 49),
(309, 83, 38, 54),
(310, 83, 39, 56),
(311, 83, 41, 72),
(312, 83, 42, 66),
(313, 84, 32, 68),
(314, 84, 33, 74),
(315, 84, 36, 48),
(316, 84, 37, 49),
(317, 84, 38, 54),
(318, 84, 39, 56),
(319, 84, 41, 72),
(320, 84, 42, 66),
(321, 85, 32, 33),
(322, 85, 33, 37),
(323, 85, 36, 47),
(324, 85, 37, 49),
(325, 85, 38, 53),
(326, 85, 39, 56),
(327, 85, 41, 71),
(328, 85, 42, 66),
(329, 86, 32, 68),
(330, 86, 33, 36),
(331, 86, 36, 73),
(332, 86, 37, 49),
(333, 86, 38, 54),
(334, 86, 39, 56),
(335, 86, 41, 72),
(336, 86, 42, 66),
(337, 87, 32, 68),
(338, 87, 33, 36),
(339, 87, 36, 73),
(340, 87, 37, 49),
(341, 87, 38, 54),
(342, 87, 39, 56),
(343, 87, 41, 72),
(344, 87, 42, 66),
(345, 88, 32, 76),
(346, 88, 33, 77),
(347, 88, 36, 73),
(348, 88, 37, 49),
(349, 88, 38, 54),
(350, 88, 39, 56),
(351, 88, 41, 72),
(352, 88, 42, 66),
(353, 89, 32, 33),
(354, 89, 33, 37),
(355, 89, 36, 47),
(356, 89, 37, 49),
(357, 89, 38, 53),
(358, 89, 39, 56),
(359, 89, 41, 69),
(360, 89, 42, 66),
(361, 91, 32, 34),
(362, 91, 33, 77),
(363, 91, 36, 47),
(364, 91, 37, 49),
(365, 91, 38, 54),
(366, 91, 39, 56),
(367, 91, 41, 71),
(368, 91, 42, 66),
(369, 94, 32, 34),
(370, 94, 33, 37),
(371, 94, 36, 48),
(372, 94, 37, 49),
(373, 94, 38, 54),
(374, 94, 39, 56),
(375, 94, 41, 72),
(376, 94, 42, 66),
(377, 95, 32, 68),
(378, 95, 33, 37),
(379, 95, 36, 47),
(380, 95, 37, 49),
(381, 95, 38, 53),
(382, 95, 39, 56),
(383, 95, 41, 72),
(384, 95, 42, 66),
(385, 96, 32, 68),
(386, 96, 33, 74),
(387, 96, 36, 47),
(388, 96, 37, 49),
(389, 96, 38, 53),
(390, 96, 39, 56),
(391, 96, 41, 72),
(392, 96, 42, 66),
(393, 99, 32, 68),
(394, 99, 33, 37),
(395, 99, 36, 73),
(396, 99, 37, 49),
(397, 99, 38, 54),
(398, 99, 39, 56),
(399, 99, 41, 72),
(400, 99, 42, 66),
(401, 100, 32, 68),
(402, 100, 33, 74),
(403, 100, 36, 48),
(404, 100, 37, 49),
(405, 100, 38, 54),
(406, 100, 39, 56),
(407, 100, 41, 72),
(408, 100, 42, 66),
(409, 101, 32, 33),
(410, 101, 33, 37),
(411, 101, 36, 47),
(412, 101, 37, 49),
(413, 101, 38, 53),
(414, 101, 39, 56),
(415, 101, 41, 72),
(416, 101, 42, 65);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_responden` int(11) NOT NULL,
  `id_sub_kriteria` int(11) NOT NULL,
  `nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `id_responden`, `id_sub_kriteria`, `nilai`) VALUES
(759, 100, 33, 0),
(760, 100, 35, 0),
(761, 100, 47, 0),
(762, 100, 50, 0),
(763, 100, 53, 0),
(764, 100, 56, 0),
(765, 100, 71, 0),
(766, 100, 65, 0),
(767, 101, 76, 0),
(768, 101, 74, 0),
(769, 101, 47, 0),
(770, 101, 49, 0),
(771, 101, 54, 0),
(772, 101, 56, 0),
(773, 101, 72, 0),
(774, 101, 66, 0),
(775, 102, 31, 0),
(776, 102, 35, 0),
(777, 102, 78, 0),
(778, 102, 49, 0),
(779, 102, 53, 0),
(780, 102, 56, 0),
(781, 102, 71, 0),
(782, 102, 65, 0),
(783, 102, 31, 0),
(784, 102, 35, 0),
(785, 102, 78, 0),
(786, 102, 49, 0),
(787, 102, 53, 0),
(788, 102, 56, 0),
(789, 102, 71, 0),
(790, 102, 65, 0),
(791, 102, 31, 0),
(792, 102, 35, 0),
(793, 102, 78, 0),
(794, 102, 49, 0),
(795, 102, 53, 0),
(796, 102, 56, 0),
(797, 102, 71, 0),
(798, 102, 65, 0),
(799, 105, 76, 0),
(800, 105, 74, 0),
(801, 105, 47, 0),
(802, 105, 49, 0),
(803, 105, 54, 0),
(804, 105, 56, 0),
(805, 105, 72, 0),
(806, 105, 66, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `responden`
--

CREATE TABLE `responden` (
  `id_responden` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `responden`
--

INSERT INTO `responden` (`id_responden`, `nama`, `email`) VALUES
(100, 'xasasdas', 'sadsadas@gmail.com'),
(101, 'h', 'ut@g'),
(102, 'jutu', 'f@h'),
(103, 'jutu', 'f@h'),
(104, 'jutu', 'f@h'),
(105, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `nilai` float NOT NULL,
  `rekomendasi` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `deskripsi`, `nilai`, `rekomendasi`) VALUES
(31, 32, 'Diatas 300 Juta', 5, 2),
(33, 32, '180 juta - 300 juta ', 4, 3),
(34, 32, '160 Juta - 179 Juta', 3, 4),
(35, 33, 'Angsuran Lebih Dari 2.000.000', 5, 2),
(36, 33, 'Angsuran 1.300.000 - 1.999.999', 4, 3),
(37, 33, 'Angsuran 1.200.000 - 1.299.999', 3, 4),
(47, 36, '100 m2 - 105 m2', 4, 5),
(48, 36, '96 m2 - 99 m2', 3, 4),
(49, 37, 'Tipe 36', 5, 3),
(50, 37, 'Tipe 45', 4, 2),
(51, 37, 'tipe 60', 3, 1),
(52, 36, '92 m2 - 95 m2', 2, 3),
(53, 38, '1300 watt', 5, 2),
(54, 38, '900 watt', 3, 3),
(55, 38, '2200 watt', 4, 1),
(56, 39, 'Sumur Bor', 5, 3),
(57, 39, 'PDAM', 4, 2),
(58, 39, 'TIdak Ada', 3, 1),
(65, 42, 'Ada Pos Security', 5, 1),
(66, 42, 'TIdak Ada Pos Security', 3, 2),
(68, 32, '150 Juta - 159 Juta', 2, 5),
(69, 41, 'Rabat', 4, 3),
(71, 41, 'Paving Blok', 5, 2),
(72, 41, 'Tanah', 3, 4),
(73, 36, 'Luas kurang dari 92 m2', 1, 2),
(74, 33, 'Angsuran 1.151.000 - 1.199.999', 2, 1),
(76, 32, 'Dibawah 150 Juta', 1, 1),
(77, 33, 'Angsuran Dibawah 1.150.000', 1, 5),
(78, 36, 'Luas lebih dari 105 m2', 5, 1),
(80, 41, 'Aspal', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `nama`, `email`, `username`, `password`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(8, 1, 'hikmah', 'hikmah@gmail.com', 'hikmah', 'fd898aa50dfe01d887c3b9ccb82d9f87');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `nilai_b`
--
ALTER TABLE `nilai_b`
  ADD PRIMARY KEY (`id_nilai_b`);

--
-- Indeks untuk tabel `nilai_bc`
--
ALTER TABLE `nilai_bc`
  ADD PRIMARY KEY (`id_nilai_bc`);

--
-- Indeks untuk tabel `nilai_c`
--
ALTER TABLE `nilai_c`
  ADD PRIMARY KEY (`id_nilai_c`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `nilai` (`nilai`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `pesan_ibfk_2` (`id_responden`),
  ADD KEY `pesan_ibfk_3` (`id_sub_kriteria`);

--
-- Indeks untuk tabel `responden`
--
ALTER TABLE `responden`
  ADD PRIMARY KEY (`id_responden`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user_level` (`id_user_level`);

--
-- Indeks untuk tabel `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `nilai_b`
--
ALTER TABLE `nilai_b`
  MODIFY `id_nilai_b` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `nilai_bc`
--
ALTER TABLE `nilai_bc`
  MODIFY `id_nilai_bc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `nilai_c`
--
ALTER TABLE `nilai_c`
  MODIFY `id_nilai_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=807;

--
-- AUTO_INCREMENT untuk tabel `responden`
--
ALTER TABLE `responden`
  MODIFY `id_responden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`nilai`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_ibfk_2` FOREIGN KEY (`id_responden`) REFERENCES `responden` (`id_responden`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesan_ibfk_3` FOREIGN KEY (`id_sub_kriteria`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user_level`) REFERENCES `user_level` (`id_user_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
