-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Feb 2021 pada 03.39
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alhrfcju_db_elearning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `alamat`, `username`, `password`, `pass`) VALUES
(1, 'Muhammad Farhan ', 'Jl Cifor Griya Melati Blok D3-6', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'Arsal Hakiem', 'Puri Kencana Asri', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'admin1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_file_materi`
--

CREATE TABLE `tb_file_materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `id_kelas` int(4) NOT NULL,
  `id_mapel` int(4) NOT NULL,
  `nama_file` varchar(250) NOT NULL,
  `tgl_posting` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `hits` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_file_materi`
--

INSERT INTO `tb_file_materi` (`id_materi`, `judul`, `id_kelas`, `id_mapel`, `nama_file`, `tgl_posting`, `pembuat`, `hits`) VALUES
(2, 'BAB 3 Fungsi dan Tugas Keluarga', 1, 19, 'bab_3_fungsi_dan_tugas_keluarga_1598338675.docx', '2020-11-01', '38', 0),
(3, 'bab_3_fungsi_dan_tugas_keluarga_1598338675', 2, 19, 'bab_3_fungsi_dan_tugas_keluarga_1598338675.docx', '2020-11-23', '38', 0),
(4, 'BAB 3 Fungsi dan Tugas Keluarga	', 3, 19, 'bab_3_fungsi_dan_tugas_keluarga_1598338675.docx', '2020-11-23', '38', 0),
(5, 'BAB 4 Keluarga di hadapan tuhan', 1, 19, 'bab_4_keluarga_di_hadapan_tuhan_1598338810.docx', '2020-11-23', '38', 0),
(6, 'BAB 4 Keluarga di hadapan tuhan', 2, 19, 'bab_4_keluarga_di_hadapan_tuhan_1598338810.docx', '2020-11-23', '38', 0),
(7, 'BAB 4 Keluarga di hadapan tuhan', 3, 19, 'bab_4_keluarga_di_hadapan_tuhan_1598338810.docx', '2020-11-23', '38', 0),
(8, 'test', 1, 18, '0c1e0451126d9738683e9c05ed91d417129921.pdf', '2020-11-23', '20', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jawaban`
--

CREATE TABLE `tb_jawaban` (
  `id` int(11) NOT NULL,
  `id_tc` int(4) NOT NULL,
  `id_soal` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id`, `id_tc`, `id_soal`, `id_siswa`, `jawaban`) VALUES
(1, 11, 2, 30, '<p>test</p>'),
(2, 11, 2, 17, '<p>test</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jawaban_upload`
--

CREATE TABLE `tb_jawaban_upload` (
  `id` int(11) NOT NULL,
  `id_tu` int(4) NOT NULL,
  `id_soal` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `jawaban` varchar(250) NOT NULL,
  `tgl_mengumpulkan` varchar(50) NOT NULL,
  `waktu_mengumpulkan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jawaban_upload`
--

INSERT INTO `tb_jawaban_upload` (`id`, `id_tu`, `id_soal`, `id_siswa`, `jawaban`, `tgl_mengumpulkan`, `waktu_mengumpulkan`) VALUES
(3, 1, 1, 1, '0b6af648239ebc8970051865d5f997ad555604.jpg', '23/11/2020', '03:37:33'),
(4, 4, 4, 1, '0c1e0451126d9738683e9c05ed91d417129921.pdf', '23/11/2020', '03:40:55'),
(5, 7, 7, 1, '0cdeba099ff451cc9c65f001e6bb710d571567.jpg', '23/11/2020', '03:41:40'),
(6, 1, 1, 2, '0d1752409132d2ee95fd81a14d52b9bc107735.jpeg', '23/11/2020', '03:51:28'),
(7, 4, 4, 2, '0e0316262fe4b037ff771a7b0f885656932535.jpeg', '23/11/2020', '03:51:51'),
(8, 7, 7, 2, '0f8f0ac38871f57689399da605e1bf4c287787.jpg', '23/11/2020', '03:52:13'),
(9, 2, 2, 37, '1abf1c17b314df6523d2b7088ec05a89645087.jpeg', '23/11/2020', '03:59:04'),
(10, 5, 5, 37, '2bc59d8435324d828d0467152dee7dc8529151.jpg', '23/11/2020', '03:59:23'),
(11, 8, 8, 37, '2b8628e94030c3c643273f923a5c50cd800842.jpg', '23/11/2020', '03:59:40'),
(12, 1, 1, 30, '0cdeba099ff451cc9c65f001e6bb710d571567.jpg', '23/11/2020', '01:36:23'),
(13, 1, 1, 17, '0cdeba099ff451cc9c65f001e6bb710d571567.jpg', '24/11/2020', '02:48:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurnal_harian`
--

CREATE TABLE `tb_jurnal_harian` (
  `id_pengajar` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `tgl_jurnal` varchar(50) NOT NULL,
  `waktu_jurnal` varchar(50) NOT NULL,
  `uraian_kegiatan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `wali_kelas` int(5) NOT NULL,
  `ketua_kelas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `wali_kelas`, `ketua_kelas`) VALUES
(1, 'XI-IPA1', 57, 1),
(2, 'XI-IPA2', 16, 52),
(3, 'XI-IPA3', 22, 92),
(4, 'XI-IPA4', 0, 0),
(5, 'XI-IPA5', 0, 0),
(6, 'XI-IPA6', 0, 0),
(7, 'XI-IPS1', 0, 0),
(8, 'XI-IPS2', 0, 0),
(9, 'XI-IPS3', 0, 0),
(10, 'X-IPA1', 0, 0),
(11, 'X-IPA2', 0, 0),
(12, 'X-IPA3', 0, 0),
(13, 'X-IPA4', 0, 0),
(14, 'X-IPA5', 0, 0),
(15, 'X-IPA6', 0, 0),
(16, 'X-IPS1', 0, 0),
(17, 'X-IPS2', 0, 0),
(18, 'X-IPS3', 0, 0),
(19, 'XII-IPA1', 0, 0),
(20, 'XII-IPA2', 0, 0),
(22, 'XII-IPA4', 0, 0),
(23, 'XII-IPA5', 0, 0),
(24, 'XII-IPA6', 0, 0),
(25, 'XII-IPS1', 0, 0),
(26, 'XII-IPS2', 0, 0),
(27, 'XII-IPS3', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas_ajar`
--

CREATE TABLE `tb_kelas_ajar` (
  `id` int(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas_ajar`
--

INSERT INTO `tb_kelas_ajar` (`id`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
(1, 1, 20, 'Bahasa Sunda'),
(2, 2, 20, 'Bahasa Sunda'),
(3, 3, 20, 'Bahasa Sunda'),
(13, 1, 38, 'Pendidikan Agama Kristen'),
(14, 2, 38, 'Pendidikan Agama Kristen'),
(15, 3, 38, 'Pendidikan Agama Kristen'),
(16, 4, 38, 'Pendidikan Agama Kristen'),
(17, 5, 38, 'Pendidikan Agama Kristen'),
(18, 6, 38, 'Pendidikan Agama Kristen'),
(19, 7, 38, 'Pendidikan Agama Kristen'),
(20, 8, 38, 'Pendidikan Agama Kristen'),
(21, 9, 38, 'Pendidikan Agama Kristen'),
(22, 5, 20, 'Bahasa Sunda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `mapel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mapel`
--

INSERT INTO `tb_mapel` (`id`, `kode_mapel`, `mapel`) VALUES
(2, 'A2', 'PKN'),
(3, 'A3', 'Bahasa Indonesia'),
(4, 'A4', 'Matematika'),
(5, 'A5', 'Sejarah Indonesia'),
(6, 'A6', 'Bahasa Inggris'),
(7, 'B1', 'Seni Budaya'),
(8, 'B2', 'Penjas'),
(9, 'B3', 'Prakarya dan Kewirausahaan'),
(10, 'C1', 'Matematika Peminatan'),
(11, 'C2', 'Biologi'),
(12, 'C3', 'Fisika'),
(13, 'C4', 'Kimia'),
(14, 'C5', 'Geografi'),
(15, 'C6', 'Sejarah Peminatan'),
(16, 'C7', 'Sosiologi'),
(17, 'C8', 'Ekonomi'),
(18, 'B4', 'Bahasa Sunda'),
(19, 'A7', 'Pendidikan Agama Kristen'),
(20, 'C9', 'Bahasa Inggris Peminatan'),
(22, 'B5', 'Bimbingan TIK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel_ajar`
--

CREATE TABLE `tb_mapel_ajar` (
  `id` int(11) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mapel_ajar`
--

INSERT INTO `tb_mapel_ajar` (`id`, `id_mapel`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
(1, 18, 7, 20, 'Bahasa Sunda'),
(2, 18, 8, 20, 'Bahasa Sunda'),
(3, 18, 9, 20, 'Bahasa Sunda'),
(4, 8, 1, 15, 'Pendidikan Jasmani, Olahraga dan Kesehatan	'),
(5, 8, 2, 15, 'Pendidikan Jasmani, Olahraga dan Kesehatan	'),
(6, 8, 3, 15, 'Pendidikan Jasmani, Olahraga dan Kesehatan	'),
(7, 8, 4, 15, 'Pendidikan Jasmani, Olahraga dan Kesehatan	'),
(8, 8, 5, 15, 'Pendidikan Jasmani, Olahraga dan Kesehatan	'),
(9, 8, 6, 15, 'Pendidikan Jasmani, Olahraga dan Kesehatan	'),
(10, 5, 7, 16, 'Sejarah'),
(11, 5, 8, 16, 'Sejarah'),
(12, 5, 9, 16, 'Sejarah'),
(13, 15, 7, 16, 'Sejarah Peminatan	'),
(14, 15, 8, 16, 'Sejarah Peminatan	'),
(15, 15, 9, 16, 'Sejarah Peminatan	'),
(16, 19, 1, 38, 'Pendidikan Agama Kristen'),
(17, 19, 2, 38, 'Pendidikan Agama Kristen'),
(18, 19, 3, 38, 'Pendidikan Agama Kristen'),
(19, 19, 4, 38, 'Pendidikan Agama Kristen'),
(20, 19, 5, 38, 'Pendidikan Agama Kristen'),
(21, 19, 6, 38, 'Pendidikan Agama Kristen'),
(22, 19, 7, 38, 'Pendidikan Agama Kristen'),
(23, 19, 8, 38, 'Pendidikan Agama Kristen'),
(24, 19, 9, 38, 'Pendidikan Agama Kristen'),
(25, 18, 5, 20, 'Bahasa Sunda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai_essay`
--

CREATE TABLE `tb_nilai_essay` (
  `id` int(11) NOT NULL,
  `id_tc` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai_essay`
--

INSERT INTO `tb_nilai_essay` (`id`, `id_tc`, `id_siswa`, `nilai`) VALUES
(1, 11, 30, 80),
(2, 11, 17, 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai_pilgan`
--

CREATE TABLE `tb_nilai_pilgan` (
  `id` int(11) NOT NULL,
  `id_tc` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `tidak_dikerjakan` int(4) NOT NULL,
  `presentase` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai_pilgan`
--

INSERT INTO `tb_nilai_pilgan` (`id`, `id_tc`, `id_siswa`, `benar`, `salah`, `tidak_dikerjakan`, `presentase`) VALUES
(2, 11, 30, 0, 2, 0, 0),
(3, 11, 17, 1, 1, 0, 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai_upload`
--

CREATE TABLE `tb_nilai_upload` (
  `id` int(11) NOT NULL,
  `id_tu` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai_upload`
--

INSERT INTO `tb_nilai_upload` (`id`, `id_tu`, `id_siswa`, `nilai`) VALUES
(3, 1, 30, 80),
(4, 8, 37, 70),
(5, 4, 1, 60),
(6, 4, 2, 50),
(7, 7, 1, 70);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengajar`
--

CREATE TABLE `tb_pengajar` (
  `id_pengajar` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengajar`
--

INSERT INTO `tb_pengajar` (`id_pengajar`, `nip`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `foto`, `username`, `password`, `pass`, `status`) VALUES
(60, '3432423', 'Ervin', 'Bogor', '2018-11-27', 'L', 'test', 'anonim.png', 'ervin', 'e10adc3949ba59abbe56e057f20f883e', '123456', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `judul` text NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `isi` longtext NOT NULL,
  `tgl_posting` date NOT NULL,
  `penerbit` varchar(10) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id_pengumuman`, `judul`, `kelas`, `isi`, `tgl_posting`, `penerbit`, `status`) VALUES
(2, 'Test 2 ', '1', '<p>contoh pengumuman 2</p>', '2020-11-03', '20', 'aktif'),
(3, 'test 5', '2', '<p>test</p>', '2020-11-23', '20', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_presensi`
--

CREATE TABLE `tb_presensi` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `tgl_presensi` varchar(50) NOT NULL,
  `waktu_presensi` varchar(50) NOT NULL,
  `hasil_pembelajaran` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_presensi`
--

INSERT INTO `tb_presensi` (`id_siswa`, `nis`, `nama_lengkap`, `kelas`, `mapel`, `tgl_presensi`, `waktu_presensi`, `hasil_pembelajaran`) VALUES
(5, '192010167', 'Rizqi ramlan fadillah', '1', '18', '23/11/2020', '07:57:54', 'test'),
(6, '192010987', 'Ahmad Rizki Rifanni', '1', '18', '23/11/2020', '07:58:30', 'test'),
(7, '192010173', 'Windie Amanda', '1', '18', '23/11/2020', '07:59:09', 'test'),
(8, '192010173', 'Windie Amanda', '1', '18', '23/11/2020', '07:59:20', 'sad'),
(9, '192010147', 'Dela fizrianti', '1', '18', '23/11/2020', '08:02:41', 'asd'),
(10, '192010249', 'Alya noviyana', '1', '18', '23/11/2020', '08:03:25', 'asd'),
(11, '192010001', 'Adnin Majiid Kusuma Pratama', '1', '18', '23/11/2020', '08:03:54', 'asd'),
(12, '20220392', 'Arya Juliyana Rahman', '1', '18', '23/11/2020', '08:56:12', 'test'),
(13, '192010018', 'Lasgiwi Prasiska', '1', '18', '23/11/2020', '08:56:43', 'asd'),
(14, '192010006', 'Daffa Althaf Carisa Alamsyah', '1', '18', '23/11/2020', '08:57:10', 'asd'),
(15, '192010062', 'Ni Luh Kadek Ardhia Swari Pradnyani', '2', '18', '23/11/2020', '08:57:41', 'asd'),
(16, '192010062', 'Ni Luh Kadek Ardhia Swari Pradnyani', '2', '18', '23/11/2020', '08:57:50', 'asd'),
(17, '192010041', 'ARYA HIFNI HERIAWAN', '2', '18', '23/11/2020', '08:59:55', 'test'),
(18, '192010043', 'Dedy Supryadi', '2', '18', '23/11/2020', '09:00:21', 'asd'),
(19, '192010067', 'Salfa Nur Raudhoh', '2', '18', '23/11/2020', '09:00:46', 'asd'),
(20, '192010110', 'Anis Adinda Putri', '2', '18', '23/11/2020', '09:01:14', 'asd'),
(21, '192010159', 'Maedellin', '2', '18', '23/11/2020', '09:01:44', 'asd'),
(22, '301026104002', 'Fauziah Amanda Rahmat', '2', '18', '23/11/2020', '09:02:06', 'test'),
(23, '192010013', 'Ghina Rafifah Zulfiani', '2', '18', '23/11/2020', '09:02:35', 'test'),
(24, '192010298', 'Aghy Mochammad Alghifary Maulana', '3', '18', '23/11/2020', '09:03:14', 'asd'),
(25, '192010237', 'Nova Safitri', '3', '18', '23/11/2020', '09:04:27', 'asd'),
(26, '0045984894', 'Nadia dwi purnama', '3', '18', '23/11/2020', '09:04:49', 'asd'),
(27, '0045984894', 'Nadia dwi purnama', '3', '18', '23/11/2020', '09:06:43', 'asd'),
(28, '192010069', 'Vela Estrelita Johannis', '1', '19', '23/11/2020', '09:13:50', 'ads'),
(29, '192010159', 'Maedellin', '2', '19', '23/11/2020', '09:14:22', 'asd'),
(30, '192010258', 'Felicia Rangkoratat', '2', '19', '23/11/2020', '09:14:58', 'asd'),
(31, '192010122', 'Miracle Patrick Aden Ponamon', '2', '19', '23/11/2020', '09:15:23', 'asd'),
(32, '161707056', 'Ricky Syahputra Tarigan', '2', '19', '23/11/2020', '09:15:47', 'asd'),
(33, '192010069', 'Vela Estrelita Johannis', '1', '18', '23/11/2020', '07:34:49', 'test'),
(34, '19201003800000', 'Annisa Sholihah', '1', '18', '24/11/2020', '08:44:42', 'test');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `thn_masuk` int(5) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `alamat`, `id_kelas`, `thn_masuk`, `foto`, `username`, `password`, `pass`, `status`) VALUES
(95, '301026104002', 'Ervin', 'Bogor', '2020-11-01', 'L', 'Islam', 'test', '1', 2019, 'anonim.png', 'ervin', '81dc9bdb52d04dc20036dbd8313ed055', '1234', 'aktif'),
(96, '32423423423', 'Farhan', 'Bogor', '2020-07-02', 'L', 'Islam', 'test', '1', 2019, 'anonim.png', 'farhan', '202cb962ac59075b964b07152d234b70', '123', 'aktif'),
(97, 'afcasdffffffffefffff', 'Ervin', 'Jakarta', '2020-11-25', 'L', 'Islam', 'qefeqfqe', '16', 2008, 'anonim.png', 'testing', 'ae2b1fca515949e5d54fb22b8ed95575', 'testing', 'tidak aktif'),
(98, '4545467676645555', 'Ervin', 'Bogor', '2020-12-04', 'L', 'Islam', 'test', '3', 2019, 'anonim.png', 'testing1', '6b7330782b2feb4924020cc4a57782a9', 'testing1', 'tidak aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_essay`
--

CREATE TABLE `tb_soal_essay` (
  `id_essay` int(11) NOT NULL,
  `id_tc` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_soal_essay`
--

INSERT INTO `tb_soal_essay` (`id_essay`, `id_tc`, `pertanyaan`, `gambar`, `tgl_buat`) VALUES
(1, 12, '<p>test 123</p>', '', '2020-11-07'),
(2, 11, '<p>test 123</p>', '', '2020-11-07'),
(3, 13, '<p>test</p>', '', '2020-11-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_pilgan`
--

CREATE TABLE `tb_soal_pilgan` (
  `id_pilgan` int(11) NOT NULL,
  `id_tc` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `pil_a` text NOT NULL,
  `pil_b` text NOT NULL,
  `pil_c` text NOT NULL,
  `pil_d` text NOT NULL,
  `pil_e` text NOT NULL,
  `kunci` varchar(2) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_soal_pilgan`
--

INSERT INTO `tb_soal_pilgan` (`id_pilgan`, `id_tc`, `pertanyaan`, `gambar`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `tgl_buat`) VALUES
(1, 11, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Ngaran lain tina Biantara nyaeta â€¦</span><br></p>', '', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Guneman</span><br></p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Ngadongeng</span><br></p>', '<p><span style=\"font-family: Arial;\">ï»¿</span><span style=\"font-family: undefined;\">ï»¿</span><span style=\"font-family: undefined;\">ï»¿</span><span style=\"font-family: Arial;\">ï»¿</span><span style=\"font-family: Arial;\">Pidato</span><span style=\"font-family: &quot;Arial Black&quot;;\">ï»¿</span><span style=\"font-family: &quot;Comic Sans MS&quot;;\">ï»¿</span></p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Sawala</span><br></p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Sajak</span><br></p>', 'C', '2020-11-02'),
(2, 12, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Ngaran lain tina Biantara nyaeta â€¦</span><br></p>', '', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Guneman</span><br></p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Ngadongeng</span><br></p>', '<p><span style=\"font-family: Arial;\">ï»¿</span><span style=\"font-family: undefined;\">ï»¿</span><span style=\"font-family: undefined;\">ï»¿</span><span style=\"font-family: Arial;\">ï»¿</span><span style=\"font-family: Arial;\">Pidato</span><span style=\"font-family: &quot;Arial Black&quot;;\">ï»¿</span><span style=\"font-family: &quot;Comic Sans MS&quot;;\">ï»¿</span></p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Sawala</span><br></p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Sajak</span><br></p>', 'C', '2020-11-02'),
(4, 11, '<p>Kalemahan biantara make metode ngapalkeun nyaeta<br></p>', '', '<p>Babari inget<br></p>', '<p>Ngaguluyur<br></p>', '<p>Sok poho dei<br></p>', '<p>Bisa maca deui<br></p>', '<p>Komunikatif<br></p>', 'D', '2020-11-02'),
(5, 12, '<p>Kalemahan biantara make metode ngapalkeun nyaeta<br></p>', '', '<p>Babari inget<br></p>', '<p>Ngaguluyur<br></p>', '<p>Sok poho dei<br></p>', '<p>Bisa maca deui<br></p>', '<p>Komunikatif<br></p>', 'D', '2020-11-02'),
(6, 13, '<p>test</p>', '', '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', '<p>5</p>', 'A', '2020-11-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_upload`
--

CREATE TABLE `tb_soal_upload` (
  `id_upload` int(11) NOT NULL,
  `id_tu` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_soal_upload`
--

INSERT INTO `tb_soal_upload` (`id_upload`, `id_tu`, `pertanyaan`, `gambar`, `tgl_buat`) VALUES
(1, 2, '<p><br></p><table class=\"table\" style=\"max-width: 100%; border-spacing: 0px; width: 837.778px; margin-bottom: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><tbody><tr id=\"pertanyaan-35\"><td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-width: 1px; border-top-style: solid; border-color: rgb(213, 213, 213) !important;\"><div class=\"pertanyaan\"><div class=\"btn-group pull-right\" style=\"display: inline-block; font-size: 0px; white-space: nowrap; float: right; margin-left: 10px;\">&nbsp;<a href=\"http://localhost/el_11/index.php/tugas/hapus_soal/3/35/http%3A%252F%252Flocalhost%252Fel_11%252Findex.php%252Ftugas%252Fmanajemen_soal%252F3\" class=\"btn btn-small btn-default\" data-toggle=\"tooltip\" title=\"\" data-original-title=\"Hapus Pertanyaan\" style=\"color: rgb(118, 118, 118); padding: 4px 10px; margin-bottom: 0px; font-size: 13px; line-height: 1.42857; text-shadow: rgba(255, 255, 255, 0.75) 0px 1px 1px; background-color: rgb(250, 250, 250); background-image: none; background-repeat: repeat-x; border-color: rgb(237, 237, 237); border-radius: 0px 3px 3px 0px; box-shadow: rgba(255, 255, 255, 0.2) 0px 1px 0px inset, rgba(0, 0, 0, 0.05) 0px 1px 2px; font-weight: 400; margin-left: -1px;\"><span class=\"icon-trash\" style=\"display: inline; width: auto; height: auto; line-height: 20px; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; margin-top: 0px; font-family: FontAwesome; text-decoration: inherit; -webkit-font-smoothing: antialiased; font-size: 14px; min-width: 16px;\"></span></a></div><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">1. Dihandap ieu nyaeta salah sahiji faktor/unsur anu penting dina kagiatan pidato, pek jelaakeun sing jentre!</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">a. Tatag nyaritana</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">b. Aktual temana</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">c. Munel eusina</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">d. Alus basana</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">e. Ngandung wirahma&nbsp;</p></div></td></tr></tbody></table>', '', '2020-11-02'),
(2, 3, '<p><br></p><table class=\"table\" style=\"max-width: 100%; border-spacing: 0px; width: 837.778px; margin-bottom: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><tbody><tr id=\"pertanyaan-35\"><td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-width: 1px; border-top-style: solid; border-color: rgb(213, 213, 213) !important;\"><div class=\"pertanyaan\"><div class=\"btn-group pull-right\" style=\"display: inline-block; font-size: 0px; white-space: nowrap; float: right; margin-left: 10px;\">&nbsp;<a href=\"http://localhost/el_11/index.php/tugas/hapus_soal/3/35/http%3A%252F%252Flocalhost%252Fel_11%252Findex.php%252Ftugas%252Fmanajemen_soal%252F3\" class=\"btn btn-small btn-default\" data-toggle=\"tooltip\" title=\"\" data-original-title=\"Hapus Pertanyaan\" style=\"color: rgb(118, 118, 118); padding: 4px 10px; margin-bottom: 0px; font-size: 13px; line-height: 1.42857; text-shadow: rgba(255, 255, 255, 0.75) 0px 1px 1px; background-color: rgb(250, 250, 250); background-image: none; background-repeat: repeat-x; border-color: rgb(237, 237, 237); border-radius: 0px 3px 3px 0px; box-shadow: rgba(255, 255, 255, 0.2) 0px 1px 0px inset, rgba(0, 0, 0, 0.05) 0px 1px 2px; font-weight: 400; margin-left: -1px;\"><span class=\"icon-trash\" style=\"display: inline; width: auto; height: auto; line-height: 20px; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; margin-top: 0px; font-family: FontAwesome; text-decoration: inherit; -webkit-font-smoothing: antialiased; font-size: 14px; min-width: 16px;\"></span></a></div><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">1. Dihandap ieu nyaeta salah sahiji faktor/unsur anu penting dina kagiatan pidato, pek jelaakeun sing jentre!</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">a. Tatag nyaritana</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">b. Aktual temana</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">c. Munel eusina</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">d. Alus basana</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">e. Ngandung wirahma&nbsp;</p></div></td></tr></tbody></table>', '', '2020-11-02'),
(6, 1, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">1. Dihandap ieu nyaeta salah sahiji faktor/unsur anu penting dina kagiatan pidato, pek jelaakeun sing jentre!</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">a. Tatag nyaritana</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">b. Aktual temana</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">c. Munel eusina</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">d. Alus basana</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">e. Ngandung wirahma&nbsp;</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">2. Pek jieun conto bagian eusi pidato anu temana ngeunaan\"Ngajalanjeun kahirupan sapopoe dina kaayan New Normal\"</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">3. Cek hideup, saha wae tokoh di Indonesia anu dianggap boga kaparigeulan anu alus lamun keur pidato?</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">4. Dina teknik/metode pidato aya nu disebut metode ngapalkeun naskah (ditalar), sebutkeun kaleuwihan&nbsp;jeung kakuranganana&nbsp;lamun urang ngagunakeun metode eta?</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">5. Jeulaskeun naon bedana biantara resmi jeung teu resmi?</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">6. Dihandap ieu nyaeta salah sahiji faktor/unsur anu penting dina kagiatan pidato, pek jelaakeun sing jentre!</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">a. Tatag nyaritana</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">b. Aktual temana</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">c. Munel eusina</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">d. Alus basana</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">e. Ngandung wirahma&nbsp;</p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><br></p>', '', '2020-11-02'),
(7, 5, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">MALURUH HARTI BABASAN JEUNG PARIBASA</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Ieu dihandap aya babasan jeung paribasa, pek ku hideup teangan hartina. Sanggeus kitu tuluy larapkeun kana kalimah.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Conto&nbsp;&nbsp;&nbsp; : Buntut kasiran</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Harti&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Pedit, koret, medit</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kalimat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Nyai endit teh kacida buntut kasiran na, teu daek pisan barang bere kabatur.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp;</p><ol style=\"padding: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 25px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"line-height: 20px;\">Jauh ka bedug</li><li style=\"line-height: 20px;\">Bodo alewoh</li><li style=\"line-height: 20px;\">Hampang birit</li><li style=\"line-height: 20px;\">Ceuli lentaheun</li><li style=\"line-height: 20px;\">Laer gado</li><li style=\"line-height: 20px;\">Sahaok kadua gaplok</li><li style=\"line-height: 20px;\">Elmu tungtut dunya siar</li><li style=\"line-height: 20px;\">Adean ku kuda bereum</li><li style=\"line-height: 20px;\">Ngaliarkeun taleus ateul</li><li style=\"line-height: 20px;\">Lamun keuyeung tangtu pareng</li></ol>', '', '2020-11-02'),
(8, 6, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">MALURUH HARTI BABASAN JEUNG PARIBASA</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Ieu dihandap aya babasan jeung paribasa, pek ku hideup teangan hartina. Sanggeus kitu tuluy larapkeun kana kalimah.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Conto&nbsp;&nbsp;&nbsp; : Buntut kasiran</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Harti&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Pedit, koret, medit</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kalimat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Nyai endit teh kacida buntut kasiran na, teu daek pisan barang bere kabatur.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp;</p><ol style=\"padding: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 25px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"line-height: 20px;\">Jauh ka bedug</li><li style=\"line-height: 20px;\">Bodo alewoh</li><li style=\"line-height: 20px;\">Hampang birit</li><li style=\"line-height: 20px;\">Ceuli lentaheun</li><li style=\"line-height: 20px;\">Laer gado</li><li style=\"line-height: 20px;\">Sahaok kadua gaplok</li><li style=\"line-height: 20px;\">Elmu tungtut dunya siar</li><li style=\"line-height: 20px;\">Adean ku kuda bereum</li><li style=\"line-height: 20px;\">Ngaliarkeun taleus ateul</li><li style=\"line-height: 20px;\">Lamun keuyeung tangtu pareng</li></ol>', '', '2020-11-02'),
(9, 4, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">MALURUH HARTI BABASAN JEUNG PARIBASA</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Ieu dihandap aya babasan jeung paribasa, pek ku hideup teangan hartina. Sanggeus kitu tuluy larapkeun kana kalimah.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Conto&nbsp;&nbsp;&nbsp; : Buntut kasiran</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Harti&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Pedit, koret, medit</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kalimat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Nyai endit teh kacida buntut kasiran na, teu daek pisan barang bere kabatur.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp;</p><ol style=\"padding: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 25px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"line-height: 20px;\">Jauh ka bedug</li><li style=\"line-height: 20px;\">Bodo alewoh</li><li style=\"line-height: 20px;\">Hampang birit</li><li style=\"line-height: 20px;\">Ceuli lentaheun</li><li style=\"line-height: 20px;\">Laer gado</li><li style=\"line-height: 20px;\">Sahaok kadua gaplok</li><li style=\"line-height: 20px;\">Elmu tungtut dunya siar</li><li style=\"line-height: 20px;\">Adean ku kuda bereum</li><li style=\"line-height: 20px;\">Ngaliarkeun taleus ateul</li><li style=\"line-height: 20px;\">Lamun keuyeung tangtu pareng</li></ol>', '', '2020-11-02'),
(10, 8, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">1. Naon nu dimaksud sisindiran tÃ©h?</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">2.Ditilik tina wangunna sisindiran tÃ©h dibagi jadi sabaraha bagian? Sebutkeun!</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">3.Sebutkeun naon waÃ© ciri-ciri sisindiran tÃ©h?</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">4.Ditilik tina eusina sisindiran dibagi jadi sabaraha bagian? Sebutkeun!</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">5.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Naon eusi tina wawangsalan ieu di handap!</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">a. Belut sisit sabadarat</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp;kapiraray siang weungi</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">b. Gedong ngambang di sagara</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp; Ulah kapalang nya bela</p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><br></p>', '', '2020-11-02'),
(11, 9, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">1. Naon nu dimaksud sisindiran tÃ©h?</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">2.Ditilik tina wangunna sisindiran tÃ©h dibagi jadi sabaraha bagian? Sebutkeun!</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">3.Sebutkeun naon waÃ© ciri-ciri sisindiran tÃ©h?</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">4.Ditilik tina eusina sisindiran dibagi jadi sabaraha bagian? Sebutkeun!</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">5.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Naon eusi tina wawangsalan ieu di handap!</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">a. Belut sisit sabadarat</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp;kapiraray siang weungi</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">b. Gedong ngambang di sagara</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp; Ulah kapalang nya bela</p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><br></p>', '', '2020-11-02'),
(12, 7, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">1. Naon nu dimaksud sisindiran tÃ©h?</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">2.Ditilik tina wangunna sisindiran tÃ©h dibagi jadi sabaraha bagian? Sebutkeun!</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">3.Sebutkeun naon waÃ© ciri-ciri sisindiran tÃ©h?</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">4.Ditilik tina eusina sisindiran dibagi jadi sabaraha bagian? Sebutkeun!</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">5.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">Naon eusi tina wawangsalan ieu di handap!</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">a. Belut sisit sabadarat</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp;kapiraray siang weungi</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">b. Gedong ngambang di sagara</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\">&nbsp; &nbsp; Ulah kapalang nya bela</p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><br></span><br></p>', '', '2020-11-02'),
(13, 8, '<p>test<img src=\"./img-uploads/1606183644.jpg\" style=\"width: 25%;\"></p>', '', '2020-11-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_topik_cbt`
--

CREATE TABLE `tb_topik_cbt` (
  `id_tc` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `tgl_buat` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `waktu_soal` int(8) NOT NULL,
  `info` varchar(250) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_topik_cbt`
--

INSERT INTO `tb_topik_cbt` (`id_tc`, `judul`, `id_kelas`, `id_mapel`, `tgl_buat`, `pembuat`, `waktu_soal`, `info`, `status`) VALUES
(11, 'Ulangan Harian 1 Bahasa Sunda', 1, 18, '2020-11-23', '20', 3600, 'Kerjakeun soal dihandap ieu!', 'aktif'),
(12, 'Ulangan Harian 1 Bahasa Sunda', 2, 18, '2020-11-23', '20', 3600, 'Kerjakeun soal dihandap ieu!', 'aktif'),
(13, 'Test', 1, 18, '2020-11-23', '20', 5400, 'test', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_topik_tugas`
--

CREATE TABLE `tb_topik_tugas` (
  `id_tu` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `tgl_buat` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `tgl_pengumpulan` date NOT NULL,
  `info` varchar(250) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_topik_tugas`
--

INSERT INTO `tb_topik_tugas` (`id_tu`, `judul`, `id_kelas`, `id_mapel`, `tgl_buat`, `pembuat`, `tgl_pengumpulan`, `info`, `status`) VALUES
(1, 'Biantara (pidato)', 1, 18, '2020-11-02', '20', '0000-00-00', '<p>Biantara (pidato)<br></p>', 'aktif'),
(2, 'Biantara (pidato)', 2, 18, '2020-11-02', '20', '0000-00-00', '<p>Biantara (pidato)<br></p>', 'aktif'),
(3, 'Biantara (pidato)', 3, 18, '2020-11-02', '20', '0000-00-00', '<p>Biantara (pidato)<br></p>', 'aktif'),
(4, 'PAKEMAN BASA (BABASAN JEUNG PARIBASA)', 1, 18, '2020-11-09', '20', '2020-11-29', '<p>PAKEMAN BASA (BABASAN JEUNG PARIBASA)<br></p>', 'aktif'),
(5, 'PAKEMAN BASA (BABASAN JEUNG PARIBASA)', 2, 18, '2020-11-09', '20', '0000-00-00', '<p>PAKEMAN BASA (BABASAN JEUNG PARIBASA)<br></p>', 'aktif'),
(6, 'PAKEMAN BASA (BABASAN JEUNG PARIBASA)', 3, 18, '2020-11-09', '20', '0000-00-00', '<p>PAKEMAN BASA (BABASAN JEUNG PARIBASA)<br></p>', 'aktif'),
(7, 'TUGAS SISINDIRAN', 1, 18, '2020-11-01', '20', '0000-00-00', '<p>TUGAS SISINDIRAN<br></p>', 'aktif'),
(8, 'TUGAS SISINDIRAN', 2, 18, '2020-11-16', '20', '0000-00-00', '<p>TUGAS SISINDIRAN<br></p>', 'aktif'),
(9, 'TUGAS SISINDIRAN', 3, 18, '2020-11-01', '20', '0000-00-00', '<p>TUGAS SISINDIRAN<br></p>', 'aktif'),
(10, 'Test Tugas', 1, 18, '2020-11-30', '20', '0000-00-00', '<p>test</p>', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indeks untuk tabel `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_jawaban_upload`
--
ALTER TABLE `tb_jawaban_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_jurnal_harian`
--
ALTER TABLE `tb_jurnal_harian`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_nilai_upload`
--
ALTER TABLE `tb_nilai_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indeks untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indeks untuk tabel `tb_presensi`
--
ALTER TABLE `tb_presensi`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  ADD PRIMARY KEY (`id_essay`);

--
-- Indeks untuk tabel `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  ADD PRIMARY KEY (`id_pilgan`);

--
-- Indeks untuk tabel `tb_soal_upload`
--
ALTER TABLE `tb_soal_upload`
  ADD PRIMARY KEY (`id_upload`);

--
-- Indeks untuk tabel `tb_topik_cbt`
--
ALTER TABLE `tb_topik_cbt`
  ADD PRIMARY KEY (`id_tc`);

--
-- Indeks untuk tabel `tb_topik_tugas`
--
ALTER TABLE `tb_topik_tugas`
  ADD PRIMARY KEY (`id_tu`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_jawaban_upload`
--
ALTER TABLE `tb_jawaban_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_jurnal_harian`
--
ALTER TABLE `tb_jurnal_harian`
  MODIFY `id_pengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai_upload`
--
ALTER TABLE `tb_nilai_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  MODIFY `id_pengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_presensi`
--
ALTER TABLE `tb_presensi`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT untuk tabel `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  MODIFY `id_essay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  MODIFY `id_pilgan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_soal_upload`
--
ALTER TABLE `tb_soal_upload`
  MODIFY `id_upload` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_topik_cbt`
--
ALTER TABLE `tb_topik_cbt`
  MODIFY `id_tc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_topik_tugas`
--
ALTER TABLE `tb_topik_tugas`
  MODIFY `id_tu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
