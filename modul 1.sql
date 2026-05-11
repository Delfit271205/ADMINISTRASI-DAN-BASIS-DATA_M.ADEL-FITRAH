CREATE TABLE `DOKTER` (
  `id_dokter` int PRIMARY KEY,
  `nama` varchar(30),
  `SP` varchar(30),
  `no_tlp` int,
  `kode_poli` int
);

CREATE TABLE `POLIKLINIK` (
  `kode_poli` int PRIMARY KEY,
  `nama_poli` varchar(20)
);

CREATE TABLE `PASIEN` (
  `NIK` int PRIMARY KEY,
  `nama` varchar(30),
  `alamat` varchar(50),
  `DOD` datetime
);

CREATE TABLE `PENDAFTARAN` (
  `no_antren` int PRIMARY KEY,
  `tgl_daft` datetime,
  `kode_poli` int,
  `NIK` int
);

CREATE TABLE `REKAM_MEDIS` (
  `no_rm` int PRIMARY KEY,
  `NIK` int,
  `diagnosa` text,
  `kode_obat` int
);

CREATE TABLE `OBAT` (
  `kode_obat` int PRIMARY KEY,
  `nama_obat` varchar(255),
  `harga` int
);

ALTER TABLE `DOKTER` ADD FOREIGN KEY (`kode_poli`) REFERENCES `POLIKLINIK` (`kode_poli`);

ALTER TABLE `POLIKLINIK` ADD FOREIGN KEY (`kode_poli`) REFERENCES `PENDAFTARAN` (`kode_poli`);

ALTER TABLE `PASIEN` ADD FOREIGN KEY (`NIK`) REFERENCES `PENDAFTARAN` (`NIK`);

ALTER TABLE `PASIEN` ADD FOREIGN KEY (`NIK`) REFERENCES `REKAM_MEDIS` (`NIK`);
