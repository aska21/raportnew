-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11 Jan 2019 pada 18.33
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_raportsiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_catatan`
--

CREATE TABLE `tb_catatan` (
  `id` int(11) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `thnajaran` varchar(10) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `catatan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_catatan`
--

INSERT INTO `tb_catatan` (`id`, `nis`, `thnajaran`, `semester`, `catatan`) VALUES
(1, 'SIS001', '2017/2018', '1 - ganjil', 'Pengawasan terhadap belajar anak di rumah'),
(2, 'SIS009', '2018/2019', '2 - ganjil', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `idguru` int(11) NOT NULL,
  `kodeguru` varchar(30) DEFAULT NULL,
  `namaguru` varchar(30) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(12) DEFAULT NULL,
  `jk` varchar(20) DEFAULT NULL,
  `statuskepegawaian` varchar(100) DEFAULT NULL,
  `jenisptk` varchar(100) DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `tempatlahir` varchar(100) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`idguru`, `kodeguru`, `namaguru`, `alamat`, `telp`, `jk`, `statuskepegawaian`, `jenisptk`, `agama`, `tempatlahir`, `tgllahir`, `username`, `password`) VALUES
(1, 'GUR001', 'Guru', 'jhgfd', '0987654', 'Pria', 'Aktif', 'PNS', 'Islam', 'PU', '1991-06-19', 'guru', '$2y$10$CfSyFMmi8aGq8Bq7g7GyduJw1TBmZciQbrqoCMDKB/ioHTx4Z1lLK'),
(2, 'GUR002', 'Guru02', 'bandar lampung', '089', 'Pria', 'honor', '**', 'Islam', 'Bandar Lampung', '1986-12-31', 'guru02', '$2y$10$ZSfLJyp1UgM5PE9V4SeIr.zJ4zm.4q26heXr2beLo0X7bymrP1cA2'),
(3, 'GUR003', 'Guru03', 'bandar Lampung', '089', 'Pria', 'honor', '**', 'Islam', 'Lampung', '1992-11-01', 'guru03', '$2y$10$H8irEB.JuSZc/bl0xg0xwuM9pQSpjlFWVVlJ8z/mpKWz3c2kUZmJq'),
(4, 'GUR004', 'Guru04', 'bandar lampung', '089', 'Pria', 'honor', '**', 'Islam', 'Bandar Lampung', '1990-01-04', 'guru04', '$2y$10$6ZX/NBOPu0IwVibYW2pcQubcJgy99wWT33Heau2Wvb.pePHb62Ley');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `idkegiatan` int(11) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `thnajaran` varchar(10) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `namadu` varchar(40) DEFAULT NULL,
  `alamat` text,
  `lamadanwaktu` varchar(100) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `predikat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kegiatan`
--

INSERT INTO `tb_kegiatan` (`idkegiatan`, `nis`, `thnajaran`, `semester`, `namadu`, `alamat`, `lamadanwaktu`, `nilai`, `predikat`) VALUES
(3, 'SIS001', '2017/2018', '1 - ganjil', 'jsjsdj', 'djjdj', 'jdjd', 80, 'dxmxd'),
(4, 'SIS009', '2018/2019', '2 - ganjil', 'pabrik', 'lampung', '6 bulan', 80, '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `idkelas` int(11) NOT NULL,
  `kodekelas` varchar(30) DEFAULT NULL,
  `namakelas` varchar(20) DEFAULT NULL,
  `bidangstudi` varchar(100) DEFAULT NULL,
  `programstudikeahlian` varchar(100) DEFAULT NULL,
  `kompetensikeahlian` varchar(100) DEFAULT NULL,
  `namawalikelas` varchar(40) DEFAULT NULL,
  `semester` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`idkelas`, `kodekelas`, `namakelas`, `bidangstudi`, `programstudikeahlian`, `kompetensikeahlian`, `namawalikelas`, `semester`) VALUES
(1, 'OT001', 'Otomotif 1', 'Mesin', 'Teknik Mesin', 'Mesin Kendaraan Besar', '1', '1'),
(2, 'MM001', 'Multimedia', 'Multimedia', 'Multimedia', 'Multimedia', '2', 'Genap'),
(3, 'AP001', 'Administrasi Perkant', 'Administrasi Perkantoran', 'Perkantoran', 'Perkantoran', '1', 'Genap'),
(4, 'ANM001', 'Animasi', 'Animasi', 'Animasi', 'Animasi', '3', 'Genap'),
(5, 'TKJ001', 'Teknik Komputer dan ', 'TKJ', 'Perangkat Keras Komputer', 'Jaringan', '4', 'Genap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kepribadian`
--

CREATE TABLE `tb_kepribadian` (
  `id` int(11) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `thajaran` varchar(10) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `kelakuan` varchar(20) DEFAULT NULL,
  `kerajinan` varchar(20) DEFAULT NULL,
  `kerapian` varchar(20) DEFAULT NULL,
  `komponen` varchar(255) DEFAULT NULL,
  `predikat` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kepribadian`
--

INSERT INTO `tb_kepribadian` (`id`, `nis`, `thajaran`, `semester`, `kelakuan`, `kerajinan`, `kerapian`, `komponen`, `predikat`, `kategori`) VALUES
(6, 'SIS001', '2017/2018', '1 - ganjil', NULL, NULL, NULL, 'kelakuan', 'Baik', 'kepribadian'),
(7, 'SIS001', '2017/2018', '1 - ganjil', NULL, NULL, NULL, 'kerajinan', 'Sangat Baik', 'kepribadian'),
(8, 'SIS001', '2017/2018', '1 - ganjil', NULL, NULL, NULL, 'kerapian', 'Baik', 'kepribadian'),
(9, 'SIS001', '2017/2018', '1 - ganjil', NULL, NULL, NULL, 'osis', '-', 'pengembangan diri'),
(10, 'SIS001', '2017/2018', '1 - ganjil', NULL, NULL, NULL, 'sepak bola', '-', 'pengembangan diri'),
(11, 'SIS001', '2017/2018', '1 - ganjil', NULL, NULL, NULL, 'rohis', '-', 'pengembangan diri'),
(12, 'SIS001', '2017/2018', '1 - ganjil', NULL, NULL, NULL, 'pramuka', '-', 'pengembangan diri'),
(13, 'SIS009', '2018/2019', '2 - ganjil', NULL, NULL, NULL, 'sepak bola', '2', 'pengembangan diri'),
(14, 'SIS009', '2018/2019', '2 - ganjil', NULL, NULL, NULL, 'kelakuan', 'A', 'kepribadian'),
(15, 'SIS009', '2018/2019', '2 - ganjil', NULL, NULL, NULL, 'kerajinan', 'A', 'kepribadian'),
(16, 'SIS009', '2018/2019', '2 - ganjil', NULL, NULL, NULL, 'kerapian', 'B', 'kepribadian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `idmapel` int(11) NOT NULL,
  `kodemapel` varchar(20) DEFAULT NULL,
  `kategorimapel` varchar(30) DEFAULT NULL,
  `namamapel` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mapel`
--

INSERT INTO `tb_mapel` (`idmapel`, `kodemapel`, `kategorimapel`, `namamapel`) VALUES
(1, 'MTK 001', 'normatif', 'Matematika'),
(2, 'BHS001', 'normatif', 'Bahasa Indonesia'),
(3, 'BHS002', 'normatif', 'Bahasa Ingris'),
(4, 'IPA001', 'normatif', 'Ilmu Pengetahuan Alam'),
(5, 'FSK001', 'normatif', 'Fisika'),
(6, 'KM001', 'normatif', 'Kimia'),
(7, 'IPS001', 'normatif', 'Ilmu Pengetahuan Sosial');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `idnilai` int(11) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `kodemapel` varchar(20) DEFAULT NULL,
  `kodeguru` varchar(30) DEFAULT NULL,
  `thnajaran` varchar(10) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `sk7` int(11) DEFAULT NULL,
  `sk8` int(11) DEFAULT NULL,
  `sk9` int(11) DEFAULT NULL,
  `sk10` int(11) DEFAULT NULL,
  `uts` int(11) DEFAULT NULL,
  `us` int(11) DEFAULT NULL,
  `afaktif` int(11) DEFAULT NULL,
  `psycom` int(11) DEFAULT NULL,
  `kkm` int(11) DEFAULT NULL,
  `deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`idnilai`, `nis`, `kodemapel`, `kodeguru`, `thnajaran`, `semester`, `sk7`, `sk8`, `sk9`, `sk10`, `uts`, `us`, `afaktif`, `psycom`, `kkm`, `deskripsi`) VALUES
(5, 'SIS001', 'MTK 001', 'GUR001', '2017/2018', '1 - ganjil', 91, 91, 91, 91, 91, 91, 91, 91, 91, '-'),
(6, 'SIS001', 'MTK 001', 'GUR001', '2018/2019', '1 - ganjil', 0, 0, 0, 0, 0, 0, 0, 0, 0, '-'),
(7, 'SIS002', 'MTK 001', 'GUR001', '2018/2019', '1 - ganjil', 0, 0, 0, 0, 0, 0, 0, 0, 0, '-'),
(8, 'SIS003', 'MTK 001', 'GUR001', '2018/2019', '2 - ganjil', 75, 80, 80, 70, 85, 80, 75, 75, 65, '-'),
(9, 'SIS009', 'MTK 001', 'GUR004', '2018/2019', '2 - ganjil', 80, 80, 80, 80, 80, 80, 80, 80, 70, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `idpegawai` int(11) NOT NULL,
  `kodepegawai` varchar(20) DEFAULT NULL,
  `namapegawai` varchar(30) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(12) DEFAULT NULL,
  `jk` varchar(12) DEFAULT NULL,
  `agama` varchar(12) DEFAULT NULL,
  `tempatlahir` varchar(255) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `divisi` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`idpegawai`, `kodepegawai`, `namapegawai`, `alamat`, `telp`, `jk`, `agama`, `tempatlahir`, `tgllahir`, `divisi`, `username`, `password`) VALUES
(1, 'PEG001', 'Pegawai', 'Way Halim', '09876543', 'Pria', 'Islam', 'Way Halim', '1989-07-05', 'Kurikulum', 'pegawai', '$2y$10$5.kAbD9OdRyeVTORELD0q.IVPdJJMN96u6n8ND7qAE7vD0zVEg5ky');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_predikat`
--

CREATE TABLE `tb_predikat` (
  `idpredikat` int(11) NOT NULL,
  `angka` int(11) DEFAULT NULL,
  `huruf` varchar(3) DEFAULT NULL,
  `predikat` varchar(30) DEFAULT NULL,
  `idguru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_presensi`
--

CREATE TABLE `tb_presensi` (
  `id` int(11) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `thajaran` varchar(10) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `izin` varchar(20) DEFAULT NULL,
  `sakit` varchar(20) DEFAULT NULL,
  `tanpaketerangan` varchar(20) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_presensi`
--

INSERT INTO `tb_presensi` (`id`, `nis`, `thajaran`, `semester`, `izin`, `sakit`, `tanpaketerangan`, `jenis`, `jumlah`) VALUES
(4, 'SIS001', '2017/2018', '1 - ganjil', NULL, NULL, NULL, 'sakit', '0'),
(5, 'SIS001', '2017/2018', '1 - ganjil', NULL, NULL, NULL, 'izin', '0'),
(6, 'SIS001', '2017/2018', '1 - ganjil', NULL, NULL, NULL, 'tanpa keterangan', '0'),
(7, 'SIS009', '2018/2019', '2 - ganjil', NULL, NULL, NULL, 'izin', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `idsiswa` int(11) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `namasiswa` varchar(40) DEFAULT NULL,
  `tempatlahir` varchar(100) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `jk` varchar(30) DEFAULT NULL,
  `alamat` text,
  `namaayah` varchar(40) DEFAULT NULL,
  `namaibu` varchar(40) DEFAULT NULL,
  `namawali` varchar(40) DEFAULT NULL,
  `pekerjaanayah` varchar(100) DEFAULT NULL,
  `pekerjaanibu` varchar(100) DEFAULT NULL,
  `pekerjaanwali` varchar(100) DEFAULT NULL,
  `asalsekolah` varchar(100) DEFAULT NULL,
  `tglmasuksekolah` date DEFAULT NULL,
  `telpayah` varchar(12) DEFAULT NULL,
  `idkelas` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`idsiswa`, `nis`, `namasiswa`, `tempatlahir`, `tgllahir`, `agama`, `jk`, `alamat`, `namaayah`, `namaibu`, `namawali`, `pekerjaanayah`, `pekerjaanibu`, `pekerjaanwali`, `asalsekolah`, `tglmasuksekolah`, `telpayah`, `idkelas`, `username`, `password`) VALUES
(1, 'SIS001', 'Siswa', 'Kemiling', '1989-02-09', 'Islam', 'Pria', 'KEmiling', 'Blank', 'Blank', '-', 'Programmer', 'Pengajar', '-', 'SMA N 1 Palembang', '2016-02-09', '0987654321', 1, 'siswa', '$2y$10$3/p2tnihb4ge07V1O.HUIecfiu0LDaccD0Xuzlng4fvJ0fSRrW4QC'),
(2, 'SIS002', 'siapa', 'lampung', '1995-02-22', 'Islam', 'Pria', 'zz', 'zzzz', 'zz', 'zz', 'zz', 'zz', 'zz', 'zz', '2018-04-01', '0980', 1, 'siapa', '$2y$10$WbVkAsnOdXApm0lI7AvCd.0s9TlVBLL7ckTgiPvv7akuS5Pr4qZGS'),
(3, 'SIS003', 'Asep', 'Bandar Lampung', '1995-05-10', 'Islam', 'Pria', 'zz', 'zzz', 'yyy', 'zzz', 'hacker', 'programmer', 'nyimak', 'bandung', '2018-04-01', '089', 1, 'Asep', '$2y$10$rN8bCB6DORuOWGqUyZ15sO03T1TBp7nAuYHFGRqsqL1MADzR.w032'),
(4, 'SIS009', 'Bambang', 'Bandar Lampung', '2000-12-01', 'Islam', 'Pria', 'bandar lampung', 'Sensor', 'Sensor', '-', '-', '-', '-', 'SMP Bandar Lampung', '2018-06-10', '089', 5, 'bambang', '$2y$10$c/OJ60QMYZ4EBwe4H9tnBuNWasDPMvj26JEc2pJIODus30FX2rDS2');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_nilai`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vw_nilai` (
`idnilai` int(11)
,`nis` varchar(20)
,`kodemapel` varchar(20)
,`kodeguru` varchar(30)
,`thnajaran` varchar(10)
,`semester` varchar(20)
,`sk7` int(11)
,`sk8` int(11)
,`sk9` int(11)
,`sk10` int(11)
,`skrata` decimal(17,4)
,`uts` int(11)
,`us` int(11)
,`rata` decimal(23,8)
,`afaktif` int(11)
,`psycom` int(11)
,`nr` decimal(29,12)
,`kkm` int(11)
,`deskripsi` text
,`namasiswa` varchar(40)
,`tempatlahir` varchar(100)
,`tgllahir` date
,`agama` varchar(30)
,`alamat` text
,`namaayah` varchar(40)
,`namaibu` varchar(40)
,`namawali` varchar(40)
,`pekerjaanayah` varchar(100)
,`pekerjaanibu` varchar(100)
,`pekerjaanwali` varchar(100)
,`asalsekolah` varchar(100)
,`tglmasuksekolah` date
,`telpayah` varchar(12)
,`idkelas` int(11)
,`username` varchar(100)
,`password` varchar(100)
,`namakelas` varchar(20)
,`bidangstudi` varchar(100)
,`programstudikeahlian` varchar(100)
,`kompetensikeahlian` varchar(100)
,`namawalikelas` varchar(40)
,`smstr` varchar(30)
,`namaguru` varchar(30)
,`telp` varchar(12)
,`jk` varchar(20)
,`statuskepegawaian` varchar(100)
,`jenisptk` varchar(100)
,`agamaguru` varchar(30)
,`tempatlahirguru` varchar(100)
,`tgllahirguru` date
,`kategorimapel` varchar(30)
,`namamapel` varchar(40)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `vw_nilai`
--
DROP TABLE IF EXISTS `vw_nilai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_nilai`  AS  select `tb_nilai`.`idnilai` AS `idnilai`,`tb_nilai`.`nis` AS `nis`,`tb_nilai`.`kodemapel` AS `kodemapel`,`tb_nilai`.`kodeguru` AS `kodeguru`,`tb_nilai`.`thnajaran` AS `thnajaran`,`tb_nilai`.`semester` AS `semester`,`tb_nilai`.`sk7` AS `sk7`,`tb_nilai`.`sk8` AS `sk8`,`tb_nilai`.`sk9` AS `sk9`,`tb_nilai`.`sk10` AS `sk10`,((((`tb_nilai`.`sk7` + `tb_nilai`.`sk8`) + `tb_nilai`.`sk9`) + `tb_nilai`.`sk10`) / 4) AS `skrata`,`tb_nilai`.`uts` AS `uts`,`tb_nilai`.`us` AS `us`,(((((((`tb_nilai`.`sk7` + `tb_nilai`.`sk8`) + `tb_nilai`.`sk9`) + `tb_nilai`.`sk10`) / 4) + `tb_nilai`.`uts`) + `tb_nilai`.`us`) / 3) AS `rata`,`tb_nilai`.`afaktif` AS `afaktif`,`tb_nilai`.`psycom` AS `psycom`,((((((((((`tb_nilai`.`sk7` + `tb_nilai`.`sk8`) + `tb_nilai`.`sk9`) + `tb_nilai`.`sk10`) / 4) + `tb_nilai`.`uts`) + `tb_nilai`.`us`) / 3) + `tb_nilai`.`afaktif`) + `tb_nilai`.`psycom`) / 3) AS `nr`,`tb_nilai`.`kkm` AS `kkm`,`tb_nilai`.`deskripsi` AS `deskripsi`,`tb_siswa`.`namasiswa` AS `namasiswa`,`tb_siswa`.`tempatlahir` AS `tempatlahir`,`tb_siswa`.`tgllahir` AS `tgllahir`,`tb_siswa`.`agama` AS `agama`,`tb_siswa`.`alamat` AS `alamat`,`tb_siswa`.`namaayah` AS `namaayah`,`tb_siswa`.`namaibu` AS `namaibu`,`tb_siswa`.`namawali` AS `namawali`,`tb_siswa`.`pekerjaanayah` AS `pekerjaanayah`,`tb_siswa`.`pekerjaanibu` AS `pekerjaanibu`,`tb_siswa`.`pekerjaanwali` AS `pekerjaanwali`,`tb_siswa`.`asalsekolah` AS `asalsekolah`,`tb_siswa`.`tglmasuksekolah` AS `tglmasuksekolah`,`tb_siswa`.`telpayah` AS `telpayah`,`tb_siswa`.`idkelas` AS `idkelas`,`tb_siswa`.`username` AS `username`,`tb_siswa`.`password` AS `password`,`tb_kelas`.`namakelas` AS `namakelas`,`tb_kelas`.`bidangstudi` AS `bidangstudi`,`tb_kelas`.`programstudikeahlian` AS `programstudikeahlian`,`tb_kelas`.`kompetensikeahlian` AS `kompetensikeahlian`,`tb_kelas`.`namawalikelas` AS `namawalikelas`,`tb_kelas`.`semester` AS `smstr`,`tb_guru`.`namaguru` AS `namaguru`,`tb_guru`.`telp` AS `telp`,`tb_guru`.`jk` AS `jk`,`tb_guru`.`statuskepegawaian` AS `statuskepegawaian`,`tb_guru`.`jenisptk` AS `jenisptk`,`tb_guru`.`agama` AS `agamaguru`,`tb_guru`.`tempatlahir` AS `tempatlahirguru`,`tb_guru`.`tgllahir` AS `tgllahirguru`,`tb_mapel`.`kategorimapel` AS `kategorimapel`,`tb_mapel`.`namamapel` AS `namamapel` from ((((`tb_nilai` join `tb_siswa` on((`tb_nilai`.`nis` = `tb_siswa`.`nis`))) join `tb_guru` on((`tb_nilai`.`kodeguru` = `tb_guru`.`kodeguru`))) join `tb_mapel` on((`tb_nilai`.`kodemapel` = `tb_mapel`.`kodemapel`))) join `tb_kelas` on((`tb_siswa`.`idkelas` = `tb_kelas`.`idkelas`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_catatan`
--
ALTER TABLE `tb_catatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`idguru`),
  ADD UNIQUE KEY `NewIndex1` (`kodeguru`);

--
-- Indexes for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD PRIMARY KEY (`idkegiatan`),
  ADD KEY `FK_tb_kegiatan` (`nis`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indexes for table `tb_kepribadian`
--
ALTER TABLE `tb_kepribadian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_kepribadian` (`nis`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`idmapel`),
  ADD UNIQUE KEY `NewIndex1` (`kodemapel`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`idnilai`),
  ADD KEY `FK_tb_nilai` (`nis`),
  ADD KEY `FK_tb_nilai1` (`kodemapel`),
  ADD KEY `FK_tb_nilai2` (`kodeguru`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`idpegawai`);

--
-- Indexes for table `tb_predikat`
--
ALTER TABLE `tb_predikat`
  ADD PRIMARY KEY (`idpredikat`);

--
-- Indexes for table `tb_presensi`
--
ALTER TABLE `tb_presensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_presensi` (`nis`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`idsiswa`),
  ADD UNIQUE KEY `NewIndex1` (`nis`),
  ADD KEY `FK_tb_siswa` (`idkelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_catatan`
--
ALTER TABLE `tb_catatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `idguru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  MODIFY `idkegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `idkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_kepribadian`
--
ALTER TABLE `tb_kepribadian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `idmapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `idnilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `idpegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_predikat`
--
ALTER TABLE `tb_predikat`
  MODIFY `idpredikat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_presensi`
--
ALTER TABLE `tb_presensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `idsiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD CONSTRAINT `FK_tb_kegiatan` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_kepribadian`
--
ALTER TABLE `tb_kepribadian`
  ADD CONSTRAINT `FK_tb_kepribadian` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD CONSTRAINT `FK_tb_nilai` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_nilai1` FOREIGN KEY (`kodemapel`) REFERENCES `tb_mapel` (`kodemapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_nilai2` FOREIGN KEY (`kodeguru`) REFERENCES `tb_guru` (`kodeguru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_presensi`
--
ALTER TABLE `tb_presensi`
  ADD CONSTRAINT `FK_tb_presensi` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `FK_tb_siswa` FOREIGN KEY (`idkelas`) REFERENCES `tb_kelas` (`idkelas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
