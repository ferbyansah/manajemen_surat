DROP TABLE tbl_disposisi;

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO tbl_disposisi VALUES("4","Wakil Dekan","Surat Pemberitahuan","Biasa","2021-06-01","dari Rektorat","6","1");
INSERT INTO tbl_disposisi VALUES("5","Kajur SI","Skripsi","Penting","2021-08-02","Bentuk PDF","7","1");
INSERT INTO tbl_disposisi VALUES("6","Kajur SI","Tetsitng","Segera","2021-07-05","Penilaian Skripsi","9","1");



DROP TABLE tbl_instansi;

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_instansi VALUES("1","Universitas Darma Persada","Sekretariat Fakultas Teknik","Terakreditasi B","Jl. Taman Malaka Selatan, RT.8/RW.6, Pd. Kelapa., Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450)","Ir. Agus Sun Sugiarto, MT.","0324025403","https://sekretariatft.com","admin@gmail.com","logo.jpg","1");



DROP TABLE tbl_klasifikasi;

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO tbl_klasifikasi VALUES("2","1","Surat Biasa","Surat Rutin, Surat Harian","1");
INSERT INTO tbl_klasifikasi VALUES("3","2","Surat Undangan","Surat Undangan, Surat Permintaan","1");
INSERT INTO tbl_klasifikasi VALUES("4","3","Surat Penting","Surat Penting, Surat bersifat segera","1");
INSERT INTO tbl_klasifikasi VALUES("5","4","Surat Pemberitahuan","Surat Pemberitahuan, Surat Informasi","1");



DROP TABLE tbl_sett;

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_sett VALUES("1","10","10","10","1");



DROP TABLE tbl_surat_keluar;

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_keluar VALUES("1","1","1","1","test","1","2021-06-07","2021-06-29","5161-Surat Keluar 1.docx","1","2");
INSERT INTO tbl_surat_keluar VALUES("2","2","Jakarta","Rektorat/2021/No.3","Surat Undangan","2","2021-06-29","2021-06-29","7383-Surat Keluar 2.docx","Kajur SI","2");
INSERT INTO tbl_surat_keluar VALUES("3","3","Kajur Elektro","Rektorat/2021/No.4","Test","3","2021-06-28","2021-06-29","5697-Surat Keluar 3.docx","Test","2");
INSERT INTO tbl_surat_keluar VALUES("4","4","Kajur SI","tes1","test","2","2021-07-01","2021-07-03","1444-Surat Keluar 1.docx","test1","1");



DROP TABLE tbl_surat_masuk;

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_masuk VALUES("6","1","Rektorat/2021/No.1","Rektorat UNSADA","Struktur Organisasi","1","1","2021-06-29","2021-06-29","6772-struktur organisasi.jpg","Dekan FT","1");
INSERT INTO tbl_surat_masuk VALUES("7","2","Rektorat/2021/No.2","2","Surat Undangan","2","2","2021-06-28","2021-06-29","7592-Surat Keluar 2.docx","Kaprodi Sistem Informasi","2");
INSERT INTO tbl_surat_masuk VALUES("8","3","XI/2021/3","Prodi Sistem Informasi","Ujicoba Sistem","2","1","2021-07-02","2021-07-02","9312-Surat Masuk 3.docx","Dekan FT","1");
INSERT INTO tbl_surat_masuk VALUES("9","4","Rektorat/2021/No.4","Rektorat UNSADA","Kegiatan PKKMB 2021","4","1","2021-07-01","2021-07-02","7424-Surat Masuk 2.docx","Dekan FT","1");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("1","admin","21232f297a57a5a743894a0e4a801fc3","Admin","-","1");
INSERT INTO tbl_user VALUES("5","dekan","3da2f457ad7c0edf1c94e1ea87b0818d","Dekan FT","-","3");



