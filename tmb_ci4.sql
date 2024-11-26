/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : tmb_ci4

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 26/11/2024 10:51:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for berita
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita`  (
  `id_berita` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_kategori` int NOT NULL,
  `slug_berita` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_berita` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ringkasan` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_berita` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_berita` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keywords` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_berita`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of berita
-- ----------------------------
INSERT INTO `berita` VALUES (25, 1, 2, 'smart-greenhouse-plant-factory', 'Smart GreenHouse & Plant Factory', '', '<p><strong>Gursa People!!,</strong><br />Bapak Rektor IPB @arifsatria10 meninjau langsung progress pembangunan&nbsp; Smart GreenHouse &amp; Plant Factory, Project Kerjasama IPB University &amp; Konsorium Smart Farm Korea Selatan.</p>\r\n<p><br />Pembangunan Smart Greenhouse &amp; Plant Factory ini merupakan yang tercanggih di Indonesia loh, dan kita patut bangga karena fasilitas riset ini adanya di Departemen Teknik Mesin dan Biosistem</p>\r\n<p><strong>FATETA - IPB University</strong></p>', 'Publish', 'Berita', '', 'Screenshot_2.png', '', 17, '2024-10-31 03:07:28', '2024-10-31 03:03:00', '2024-11-13 16:45:46');

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `jenis_client` enum('Perorangan','Perusahaan','Organisasi') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pimpinan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi_testimoni` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_client` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_client`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (5, 1, 'Perorangan', 'Rimsmedia', 'Dedy', 'Taman Dramaga Permai 3 Blok D6 No 11\r\nCiampea Kab. Bogor', '+6285715100485', 'https://rimsmedia.web.id', 'office.rimsmedia@gmail.com', '-', 'b7630a2a75006840b351bde15efe52be.jpg', 'Publish', 'Bogor', '1989-12-19', '2021-04-24 07:34:12', '2024-11-05 14:39:18');

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download`  (
  `id_download` int NOT NULL AUTO_INCREMENT,
  `id_kategori_download` int NOT NULL,
  `id_user` int NOT NULL,
  `judul_download` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_download` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_download`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of download
-- ----------------------------

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `slug_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int NULL DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 1, 'kegiatan', 'Kegiatan', 1, 0, '2024-10-31 03:03:12');
INSERT INTO `kategori` VALUES (2, 1, 'berita', 'Berita', 2, 1, '2024-11-05 15:04:27');
INSERT INTO `kategori` VALUES (4, 1, 'updates', 'Updates', 4, 0, '2021-04-21 05:26:59');

-- ----------------------------
-- Table structure for kategori_download
-- ----------------------------
DROP TABLE IF EXISTS `kategori_download`;
CREATE TABLE `kategori_download`  (
  `id_kategori_download` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `slug_kategori_download` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kategori_download` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int NULL DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategori_download`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori_download
-- ----------------------------
INSERT INTO `kategori_download` VALUES (1, 0, 'formulir-pendaftaran', 'Formulir Pendaftaran', 1, 0, '2021-04-21 07:37:58');
INSERT INTO `kategori_download` VALUES (2, 1, 'promosi-java-web-media-2021', 'Promosi Java Web Media 2021', 2, 0, '2021-04-21 08:08:19');

-- ----------------------------
-- Table structure for kategori_galeri
-- ----------------------------
DROP TABLE IF EXISTS `kategori_galeri`;
CREATE TABLE `kategori_galeri`  (
  `id_kategori_galeri` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `slug_kategori_galeri` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kategori_galeri` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int NULL DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategori_galeri`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori_galeri
-- ----------------------------
INSERT INTO `kategori_galeri` VALUES (4, 0, 'kegiatan', 'Kegiatan', 4, 0, '2021-04-21 07:38:46');
INSERT INTO `kategori_galeri` VALUES (5, 0, 'banner-website', 'Banner Website', 4, 0, '2021-04-21 07:38:46');
INSERT INTO `kategori_galeri` VALUES (6, 1, 'family-gathering', 'Family gathering', 2, 0, '2021-04-21 07:40:52');

-- ----------------------------
-- Table structure for kategori_staff
-- ----------------------------
DROP TABLE IF EXISTS `kategori_staff`;
CREATE TABLE `kategori_staff`  (
  `id_kategori_staff` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `slug_kategori_staff` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kategori_staff` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int NULL DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategori_staff`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori_staff
-- ----------------------------
INSERT INTO `kategori_staff` VALUES (1, 0, 'pejabat-eselon-1', 'Pejabat Eselon 1', 1, 0, '2021-04-21 07:44:24');
INSERT INTO `kategori_staff` VALUES (2, 0, 'pejabat-struktural', 'Pejabat Struktural', 2, 0, '2021-04-21 07:44:24');
INSERT INTO `kategori_staff` VALUES (3, 1, 'team-inti', 'Team Inti', 2, 0, '2021-04-21 08:54:27');
INSERT INTO `kategori_staff` VALUES (4, 1, 'adit', 'Adit', 4, 0, '2024-11-12 10:28:45');

-- ----------------------------
-- Table structure for konfigurasi
-- ----------------------------
DROP TABLE IF EXISTS `konfigurasi`;
CREATE TABLE `konfigurasi`  (
  `id_konfigurasi` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `namaweb` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `singkatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tagline` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tentang` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_cadangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `telepon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hp` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keywords` varchar(400) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metatext` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `facebook` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_facebook` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_twitter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_instagram` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_youtube` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `google_map` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `protocol` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_host` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_port` int NOT NULL,
  `smtp_timeout` int NOT NULL,
  `smtp_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_pass` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_konfigurasi`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of konfigurasi
-- ----------------------------
INSERT INTO `konfigurasi` VALUES (1, 1, 'TMB', 'TMB', 'Dengan ilmu dan teknologi, kita bisa mengubah dunia pertanian!', '<div class=\"title\">\r\n<h4>SEKILAS DEPARTEMEN TEKNIK MESIN DAN BIOSISTEM</h4>\r\n</div>\r\n<div class=\"text\">\r\n<p>Departemen Teknik Mesin dan Biosistem (TMB) adalah salah satu dari empat departemen pada Fakultas Teknologi Pertanian (FATETA) IPB. Dalam sejarahnya, sejak tahun 1960 Bagian Mekanisasi Pertanian merupakan salah satu bagian dari Departemen Agronomi, Fakultas Pertanian, Universitas Indonesia.</p>\r\n<div class=\"left\">\r\n<div class=\"text\">\r\n<h3><span class=\"category\">Visi</span></h3>\r\n<p>Sejalan dengan visi IPB, visi Departemen Teknik Mesin dan Biosistem adalah: <br />Menjadi departemen yang bertaraf internasional yang inovatif, unggul dalam riset, dan berkarakter kewirausahaan, khususnya pada bidang rekayasa mesin dan biosistem.</p>\r\n<h3><span class=\"category\">Misi</span></h3>\r\nMenyelenggarakan penelitian dasar dan terapan dalam bidang teknik mesin, teknik biosistem, teknik energi terbarukan dan teknik bioinformatika untuk pengembangan ipteks yang bermanfaat bagi masyarakat agraris, bahari dan industri\r\n<p>Menyelenggarakan pendidikan tinggi strata S1, S2 dan S3 yang unggul di bidang teknik mesin dan biosistem yang didukung sarana dan prasarana yang handal serta kurikulum yang efektif dan efisien untuk menghasilkan lulusan yang berdayasaing nasional dan internasional, berkarakter kewirausahaan di bidang rekayasa mesin dan biosistem</p>\r\n<p>Melakukan layanan masyarakat yang mengedepankan inovasi ipteks dan berkarakter kewirausahaan dengan tetap mempertahankan nilai-nilai luhur bangsa dan kelestarian sumberdaya alam</p>\r\n</div>\r\n</div>\r\n<div class=\"right\">\r\n<div class=\"text\">\r\n<p>Memperkuat sistem manajemen dan tatakelola departemen yang efektif, efisien, transparan, dan akuntabel</p>\r\n</div>\r\n</div>\r\n</div>', 'Departemen Teknik Mesin dan Biosistem (TMB) adalah salah satu dari empat departemen pada Fakultas Teknologi Pertanian (FATETA) IPB. Dalam sejarahnya, sejak tahun 1960 Bagian Mekanisasi Pertanian merupakan salah satu bagian dari Departemen Agronomi, Fakultas Pertanian, Universitas Indonesia.', 'tmb.ipb.ac.id', 'ask@tmb.ipb.ac.id', 'ask@tmb.ipb.ac.id', '<p><b>Institut Pertanian Bogor<br>Departemen Teknik Mesin dan Biosistem (TMB)</b><b style=\"font-size: 1rem;\"> </b></p><p>Jl. Raya Dramaga Kampus IPB Dramaga Bogor 16680 West Java, Indonesia</p>', '+62 251 8622642', '+6281932846124', 'logo_tmb.png', 'pavicon_tmb.png', 'SEKILAS DEPARTEMEN TEKNIK MESIN DAN BIOSISTEM\r\nDepartemen Teknik Mesin dan Biosistem (TMB) adalah salah satu dari empat departemen pada Fakultas Teknologi Pertanian (FATETA) IPB. Dalam sejarahnya, sejak tahun 1960 Bagian Mekanisasi Pertanian merupakan salah satu bagian dari Departemen Agronomi, Fakultas Pertanian, Universitas Indonesia', 'SEKILAS DEPARTEMEN TEKNIK MESIN DAN BIOSISTEM\r\nDepartemen Teknik Mesin dan Biosistem (TMB) adalah salah satu dari empat departemen pada Fakultas Teknologi Pertanian (FATETA) IPB. Dalam sejarahnya, sejak tahun 1960 Bagian Mekanisasi Pertanian merupakan salah satu bagian dari Departemen Agronomi, Fakultas Pertanian, Universitas Indonesia', 'https://www.facebook.com/tmb.ipb', 'http://twitter.com/tmb.ipb', 'https://instagram.com/tmb.ipb', 'https://www.youtube.com/watch?v=1VP7Sr3nJRU', 'tmb.ipb', 'tmb.ipb', 'tmb.ipb', '@teknikmesindanbiosistemipb539', '', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'muhammad', '2024-11-13 13:07:01');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id_staff` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `id_kategori_staff` int NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keahlian` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_staff` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_staff`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (10, 1, 3, 'Andoyo Cakep', 'Depok Town Square Lantai 2 Unit SS 5-7\r\nJl. Margonda Raya Kota Depok', '+6285715100485', 'https://javawebmedia.com', 'javawebmedia@gmail.com', 'Graphic Designer', '', '4.jpg', 'Publish', 'Depok', '1983-02-22', '2021-04-24 08:50:59');

-- ----------------------------
-- Table structure for user_logs
-- ----------------------------
DROP TABLE IF EXISTS `user_logs`;
CREATE TABLE `user_logs`  (
  `id_user_log` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `ip_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_updates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user_log`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 324 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_logs
-- ----------------------------
INSERT INTO `user_logs` VALUES (1, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2021-05-03 08:19:34');
INSERT INTO `user_logs` VALUES (2, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2024-10-30 23:44:28');
INSERT INTO `user_logs` VALUES (3, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2024-10-30 23:44:40');
INSERT INTO `user_logs` VALUES (4, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:04:44');
INSERT INTO `user_logs` VALUES (5, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2024-10-31 02:04:51');
INSERT INTO `user_logs` VALUES (6, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/22', '2024-10-31 02:06:25');
INSERT INTO `user_logs` VALUES (7, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/22', '2024-10-31 02:06:32');
INSERT INTO `user_logs` VALUES (8, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 02:06:32');
INSERT INTO `user_logs` VALUES (9, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/kategori/5', '2024-10-31 02:06:54');
INSERT INTO `user_logs` VALUES (10, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/kategori/5', '2024-10-31 02:06:56');
INSERT INTO `user_logs` VALUES (11, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/kategori/5', '2024-10-31 02:07:06');
INSERT INTO `user_logs` VALUES (12, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2024-10-31 02:07:13');
INSERT INTO `user_logs` VALUES (13, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/24', '2024-10-31 02:07:35');
INSERT INTO `user_logs` VALUES (14, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/kategori', '2024-10-31 02:08:01');
INSERT INTO `user_logs` VALUES (15, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2024-10-31 02:10:30');
INSERT INTO `user_logs` VALUES (16, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/24', '2024-10-31 02:10:40');
INSERT INTO `user_logs` VALUES (17, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/24', '2024-10-31 02:10:46');
INSERT INTO `user_logs` VALUES (18, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 02:10:46');
INSERT INTO `user_logs` VALUES (19, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2024-10-31 02:11:07');
INSERT INTO `user_logs` VALUES (20, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/3', '2024-10-31 02:11:23');
INSERT INTO `user_logs` VALUES (21, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:17:30');
INSERT INTO `user_logs` VALUES (22, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2024-10-31 02:17:35');
INSERT INTO `user_logs` VALUES (23, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2024-10-31 02:28:29');
INSERT INTO `user_logs` VALUES (24, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2024-10-31 02:28:29');
INSERT INTO `user_logs` VALUES (25, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/logo', '2024-10-31 02:29:33');
INSERT INTO `user_logs` VALUES (26, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/logo', '2024-10-31 02:30:58');
INSERT INTO `user_logs` VALUES (27, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/logo', '2024-10-31 02:30:58');
INSERT INTO `user_logs` VALUES (28, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:32:11');
INSERT INTO `user_logs` VALUES (29, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:35:15');
INSERT INTO `user_logs` VALUES (30, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:35:27');
INSERT INTO `user_logs` VALUES (31, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:35:28');
INSERT INTO `user_logs` VALUES (32, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:35:30');
INSERT INTO `user_logs` VALUES (33, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:35:47');
INSERT INTO `user_logs` VALUES (34, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:35:50');
INSERT INTO `user_logs` VALUES (35, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:37:00');
INSERT INTO `user_logs` VALUES (36, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:37:01');
INSERT INTO `user_logs` VALUES (37, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:37:02');
INSERT INTO `user_logs` VALUES (38, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-10-31 02:39:05');
INSERT INTO `user_logs` VALUES (39, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/seo', '2024-10-31 02:40:49');
INSERT INTO `user_logs` VALUES (40, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/seo', '2024-10-31 02:41:14');
INSERT INTO `user_logs` VALUES (41, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/seo', '2024-10-31 02:41:14');
INSERT INTO `user_logs` VALUES (42, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/panduan', '2024-10-31 02:41:18');
INSERT INTO `user_logs` VALUES (43, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/panduan', '2024-10-31 02:43:22');
INSERT INTO `user_logs` VALUES (44, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2024-10-31 02:43:25');
INSERT INTO `user_logs` VALUES (45, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/edit/2', '2024-10-31 02:43:33');
INSERT INTO `user_logs` VALUES (46, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/edit/2', '2024-10-31 02:43:53');
INSERT INTO `user_logs` VALUES (47, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2024-10-31 02:43:53');
INSERT INTO `user_logs` VALUES (48, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/delete/3', '2024-10-31 02:43:57');
INSERT INTO `user_logs` VALUES (49, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2024-10-31 02:43:57');
INSERT INTO `user_logs` VALUES (50, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/edit/1', '2024-10-31 02:44:00');
INSERT INTO `user_logs` VALUES (51, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/edit/1', '2024-10-31 02:44:19');
INSERT INTO `user_logs` VALUES (52, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2024-10-31 02:44:19');
INSERT INTO `user_logs` VALUES (53, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2024-10-31 02:44:54');
INSERT INTO `user_logs` VALUES (54, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/staff', '2024-10-31 02:44:59');
INSERT INTO `user_logs` VALUES (55, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/staff', '2024-10-31 02:45:02');
INSERT INTO `user_logs` VALUES (56, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/staff', '2024-10-31 02:45:03');
INSERT INTO `user_logs` VALUES (57, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2024-10-31 02:45:11');
INSERT INTO `user_logs` VALUES (58, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/client', '2024-10-31 02:45:14');
INSERT INTO `user_logs` VALUES (59, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:45:29');
INSERT INTO `user_logs` VALUES (60, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2024-10-31 02:45:46');
INSERT INTO `user_logs` VALUES (61, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2024-10-31 02:46:04');
INSERT INTO `user_logs` VALUES (62, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2024-10-31 02:46:04');
INSERT INTO `user_logs` VALUES (63, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/client', '2024-10-31 02:46:15');
INSERT INTO `user_logs` VALUES (64, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/client', '2024-10-31 02:47:41');
INSERT INTO `user_logs` VALUES (65, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2024-10-31 02:47:48');
INSERT INTO `user_logs` VALUES (66, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2024-10-31 02:50:41');
INSERT INTO `user_logs` VALUES (67, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/24', '2024-10-31 02:50:44');
INSERT INTO `user_logs` VALUES (68, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/kategori', '2024-10-31 02:50:53');
INSERT INTO `user_logs` VALUES (69, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/kategori/edit/6', '2024-10-31 02:51:00');
INSERT INTO `user_logs` VALUES (70, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/kategori', '2024-10-31 02:51:15');
INSERT INTO `user_logs` VALUES (71, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/kategori', '2024-10-31 02:51:25');
INSERT INTO `user_logs` VALUES (72, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/kategori', '2024-10-31 02:51:45');
INSERT INTO `user_logs` VALUES (73, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:51:53');
INSERT INTO `user_logs` VALUES (74, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:52:05');
INSERT INTO `user_logs` VALUES (75, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:52:23');
INSERT INTO `user_logs` VALUES (76, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:53:18');
INSERT INTO `user_logs` VALUES (77, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:54:17');
INSERT INTO `user_logs` VALUES (78, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 02:54:19');
INSERT INTO `user_logs` VALUES (79, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:54:25');
INSERT INTO `user_logs` VALUES (80, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:55:04');
INSERT INTO `user_logs` VALUES (81, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:55:05');
INSERT INTO `user_logs` VALUES (82, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:55:06');
INSERT INTO `user_logs` VALUES (83, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-10-31 02:55:06');
INSERT INTO `user_logs` VALUES (84, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-10-31 02:55:22');
INSERT INTO `user_logs` VALUES (85, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 02:55:34');
INSERT INTO `user_logs` VALUES (86, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/24', '2024-10-31 02:57:55');
INSERT INTO `user_logs` VALUES (87, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/24', '2024-10-31 02:59:07');
INSERT INTO `user_logs` VALUES (88, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 02:59:07');
INSERT INTO `user_logs` VALUES (89, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/24', '2024-10-31 02:59:19');
INSERT INTO `user_logs` VALUES (90, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/24', '2024-10-31 03:01:32');
INSERT INTO `user_logs` VALUES (91, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:01:32');
INSERT INTO `user_logs` VALUES (92, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:01:36');
INSERT INTO `user_logs` VALUES (93, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/22', '2024-10-31 03:01:40');
INSERT INTO `user_logs` VALUES (94, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/22', '2024-10-31 03:01:44');
INSERT INTO `user_logs` VALUES (95, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:01:44');
INSERT INTO `user_logs` VALUES (96, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/24', '2024-10-31 03:01:50');
INSERT INTO `user_logs` VALUES (97, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:01:57');
INSERT INTO `user_logs` VALUES (98, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/delete/24', '2024-10-31 03:02:00');
INSERT INTO `user_logs` VALUES (99, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:02:00');
INSERT INTO `user_logs` VALUES (100, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/delete/23', '2024-10-31 03:02:03');
INSERT INTO `user_logs` VALUES (101, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:02:03');
INSERT INTO `user_logs` VALUES (102, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/delete/1', '2024-10-31 03:02:07');
INSERT INTO `user_logs` VALUES (103, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:02:07');
INSERT INTO `user_logs` VALUES (104, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/delete/22', '2024-10-31 03:02:10');
INSERT INTO `user_logs` VALUES (105, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:02:11');
INSERT INTO `user_logs` VALUES (106, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/delete/2', '2024-10-31 03:02:19');
INSERT INTO `user_logs` VALUES (107, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:02:19');
INSERT INTO `user_logs` VALUES (108, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/delete/21', '2024-10-31 03:02:22');
INSERT INTO `user_logs` VALUES (109, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:02:22');
INSERT INTO `user_logs` VALUES (110, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/delete/3', '2024-10-31 03:02:25');
INSERT INTO `user_logs` VALUES (111, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:02:25');
INSERT INTO `user_logs` VALUES (112, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/delete/4', '2024-10-31 03:02:28');
INSERT INTO `user_logs` VALUES (113, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:02:28');
INSERT INTO `user_logs` VALUES (114, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/delete/6', '2024-10-31 03:02:31');
INSERT INTO `user_logs` VALUES (115, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:02:31');
INSERT INTO `user_logs` VALUES (116, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/delete/7', '2024-10-31 03:02:34');
INSERT INTO `user_logs` VALUES (117, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:02:34');
INSERT INTO `user_logs` VALUES (118, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/tambah', '2024-10-31 03:02:37');
INSERT INTO `user_logs` VALUES (119, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori', '2024-10-31 03:02:44');
INSERT INTO `user_logs` VALUES (120, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori/delete/6', '2024-10-31 03:02:48');
INSERT INTO `user_logs` VALUES (121, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori', '2024-10-31 03:02:48');
INSERT INTO `user_logs` VALUES (122, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori/delete/5', '2024-10-31 03:02:51');
INSERT INTO `user_logs` VALUES (123, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori', '2024-10-31 03:02:51');
INSERT INTO `user_logs` VALUES (124, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori/delete/3', '2024-10-31 03:02:55');
INSERT INTO `user_logs` VALUES (125, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori', '2024-10-31 03:02:55');
INSERT INTO `user_logs` VALUES (126, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori/edit/1', '2024-10-31 03:03:07');
INSERT INTO `user_logs` VALUES (127, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori/edit/1', '2024-10-31 03:03:12');
INSERT INTO `user_logs` VALUES (128, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori', '2024-10-31 03:03:12');
INSERT INTO `user_logs` VALUES (129, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:03:20');
INSERT INTO `user_logs` VALUES (130, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/tambah', '2024-10-31 03:03:21');
INSERT INTO `user_logs` VALUES (131, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/tambah', '2024-10-31 03:07:28');
INSERT INTO `user_logs` VALUES (132, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:07:28');
INSERT INTO `user_logs` VALUES (133, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:07:32');
INSERT INTO `user_logs` VALUES (134, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-10-31 03:07:41');
INSERT INTO `user_logs` VALUES (135, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:07:43');
INSERT INTO `user_logs` VALUES (136, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:08:09');
INSERT INTO `user_logs` VALUES (137, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:08:09');
INSERT INTO `user_logs` VALUES (138, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:08:11');
INSERT INTO `user_logs` VALUES (139, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:09:33');
INSERT INTO `user_logs` VALUES (140, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:09:33');
INSERT INTO `user_logs` VALUES (141, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:09:50');
INSERT INTO `user_logs` VALUES (142, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:09:54');
INSERT INTO `user_logs` VALUES (143, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/status_berita/Publish', '2024-10-31 03:09:56');
INSERT INTO `user_logs` VALUES (144, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/status_berita/Publish', '2024-10-31 03:09:58');
INSERT INTO `user_logs` VALUES (145, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:09:59');
INSERT INTO `user_logs` VALUES (146, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:10:01');
INSERT INTO `user_logs` VALUES (147, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:10:32');
INSERT INTO `user_logs` VALUES (148, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:10:32');
INSERT INTO `user_logs` VALUES (149, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:11:19');
INSERT INTO `user_logs` VALUES (150, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:11:47');
INSERT INTO `user_logs` VALUES (151, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:11:47');
INSERT INTO `user_logs` VALUES (152, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:12:03');
INSERT INTO `user_logs` VALUES (153, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-10-31 03:12:09');
INSERT INTO `user_logs` VALUES (154, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2024-10-31 03:12:09');
INSERT INTO `user_logs` VALUES (155, 1, '::1', 'admin', 'http://localhost/webci4/admin/konfigurasi', '2024-10-31 03:14:12');
INSERT INTO `user_logs` VALUES (156, 1, '::1', 'admin', 'http://localhost/webci4/admin/konfigurasi', '2024-10-31 03:15:38');
INSERT INTO `user_logs` VALUES (157, 1, '::1', 'admin', 'http://localhost/webci4/admin/konfigurasi', '2024-10-31 03:15:38');
INSERT INTO `user_logs` VALUES (158, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-11-05 14:15:33');
INSERT INTO `user_logs` VALUES (159, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-11-05 14:15:43');
INSERT INTO `user_logs` VALUES (160, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-11-05 14:17:34');
INSERT INTO `user_logs` VALUES (161, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-11-05 14:17:38');
INSERT INTO `user_logs` VALUES (162, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/edit/25', '2024-11-05 14:17:40');
INSERT INTO `user_logs` VALUES (163, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-11-05 14:17:50');
INSERT INTO `user_logs` VALUES (164, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-05 14:36:57');
INSERT INTO `user_logs` VALUES (165, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/delete/2', '2024-11-05 14:37:16');
INSERT INTO `user_logs` VALUES (166, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-05 14:37:16');
INSERT INTO `user_logs` VALUES (167, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/edit/3', '2024-11-05 14:37:19');
INSERT INTO `user_logs` VALUES (168, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-05 14:37:21');
INSERT INTO `user_logs` VALUES (169, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/edit/5', '2024-11-05 14:37:23');
INSERT INTO `user_logs` VALUES (170, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/edit/5', '2024-11-05 14:39:18');
INSERT INTO `user_logs` VALUES (171, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-05 14:39:18');
INSERT INTO `user_logs` VALUES (172, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/delete/3', '2024-11-05 14:39:23');
INSERT INTO `user_logs` VALUES (173, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-05 14:39:23');
INSERT INTO `user_logs` VALUES (174, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-05 14:39:33');
INSERT INTO `user_logs` VALUES (175, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-05 14:39:36');
INSERT INTO `user_logs` VALUES (176, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-05 14:39:40');
INSERT INTO `user_logs` VALUES (177, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-05 14:39:46');
INSERT INTO `user_logs` VALUES (178, 1, '::1', 'admin', 'http://localhost/webci4/admin/download', '2024-11-05 14:39:50');
INSERT INTO `user_logs` VALUES (179, 1, '::1', 'admin', 'http://localhost/webci4/admin/download/tambah', '2024-11-05 14:39:52');
INSERT INTO `user_logs` VALUES (180, 1, '::1', 'admin', 'http://localhost/webci4/admin/download', '2024-11-05 14:39:56');
INSERT INTO `user_logs` VALUES (181, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:40:00');
INSERT INTO `user_logs` VALUES (182, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/delete/4', '2024-11-05 14:40:07');
INSERT INTO `user_logs` VALUES (183, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:40:07');
INSERT INTO `user_logs` VALUES (184, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/delete/13', '2024-11-05 14:40:12');
INSERT INTO `user_logs` VALUES (185, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:40:12');
INSERT INTO `user_logs` VALUES (186, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/delete/7', '2024-11-05 14:40:22');
INSERT INTO `user_logs` VALUES (187, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:40:23');
INSERT INTO `user_logs` VALUES (188, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/delete/8', '2024-11-05 14:40:27');
INSERT INTO `user_logs` VALUES (189, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:40:27');
INSERT INTO `user_logs` VALUES (190, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/delete/10', '2024-11-05 14:40:31');
INSERT INTO `user_logs` VALUES (191, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:40:31');
INSERT INTO `user_logs` VALUES (192, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/delete/12', '2024-11-05 14:40:34');
INSERT INTO `user_logs` VALUES (193, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:40:34');
INSERT INTO `user_logs` VALUES (194, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/delete/9', '2024-11-05 14:40:38');
INSERT INTO `user_logs` VALUES (195, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:40:38');
INSERT INTO `user_logs` VALUES (196, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:40:41');
INSERT INTO `user_logs` VALUES (197, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/edit/5', '2024-11-05 14:40:45');
INSERT INTO `user_logs` VALUES (198, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/edit/5', '2024-11-05 14:41:12');
INSERT INTO `user_logs` VALUES (199, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:41:12');
INSERT INTO `user_logs` VALUES (200, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/edit/5', '2024-11-05 14:41:15');
INSERT INTO `user_logs` VALUES (201, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/edit/5', '2024-11-05 14:41:35');
INSERT INTO `user_logs` VALUES (202, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2024-11-05 14:41:35');
INSERT INTO `user_logs` VALUES (203, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-11-05 14:41:42');
INSERT INTO `user_logs` VALUES (204, 1, '::1', 'admin', 'http://localhost/webci4/admin/panduan', '2024-11-05 14:44:13');
INSERT INTO `user_logs` VALUES (205, 1, '::1', 'admin', 'http://localhost/webci4/admin/panduan', '2024-11-05 14:44:15');
INSERT INTO `user_logs` VALUES (206, 1, '::1', 'admin', 'http://localhost/webci4/admin/konfigurasi', '2024-11-05 14:44:18');
INSERT INTO `user_logs` VALUES (207, 1, '::1', 'admin', 'http://localhost/webci4/admin/konfigurasi', '2024-11-05 14:44:29');
INSERT INTO `user_logs` VALUES (208, 1, '::1', 'admin', 'http://localhost/webci4/admin/konfigurasi/seo', '2024-11-05 14:44:35');
INSERT INTO `user_logs` VALUES (209, 1, '::1', 'admin', 'http://localhost/webci4/admin/user', '2024-11-05 14:44:43');
INSERT INTO `user_logs` VALUES (210, 1, '::1', 'admin', 'http://localhost/webci4/admin/konfigurasi', '2024-11-05 14:55:46');
INSERT INTO `user_logs` VALUES (211, 1, '::1', 'admin', 'http://localhost/webci4/admin/konfigurasi/logo', '2024-11-05 14:55:58');
INSERT INTO `user_logs` VALUES (212, 1, '::1', 'admin', 'http://localhost/webci4/admin/konfigurasi/icon', '2024-11-05 14:56:01');
INSERT INTO `user_logs` VALUES (213, 1, '::1', 'admin', 'http://localhost/webci4/admin/konfigurasi/seo', '2024-11-05 14:56:03');
INSERT INTO `user_logs` VALUES (214, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-11-07 09:37:13');
INSERT INTO `user_logs` VALUES (215, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-11-12 09:21:06');
INSERT INTO `user_logs` VALUES (216, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:21:17');
INSERT INTO `user_logs` VALUES (217, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:22:50');
INSERT INTO `user_logs` VALUES (218, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:22:52');
INSERT INTO `user_logs` VALUES (219, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:22:53');
INSERT INTO `user_logs` VALUES (220, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:23:44');
INSERT INTO `user_logs` VALUES (221, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:23:44');
INSERT INTO `user_logs` VALUES (222, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:38:11');
INSERT INTO `user_logs` VALUES (223, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:42:19');
INSERT INTO `user_logs` VALUES (224, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:42:22');
INSERT INTO `user_logs` VALUES (225, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:42:24');
INSERT INTO `user_logs` VALUES (226, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:42:33');
INSERT INTO `user_logs` VALUES (227, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:42:35');
INSERT INTO `user_logs` VALUES (228, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:44:45');
INSERT INTO `user_logs` VALUES (229, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:44:47');
INSERT INTO `user_logs` VALUES (230, 1, '::1', 'admin', 'http://localhost/webci4/admin/akun', '2024-11-12 09:45:50');
INSERT INTO `user_logs` VALUES (231, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-11-12 09:45:54');
INSERT INTO `user_logs` VALUES (232, 1, '::1', 'admin', 'http://localhost/webci4/admin/download', '2024-11-12 09:45:57');
INSERT INTO `user_logs` VALUES (233, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-12 09:45:59');
INSERT INTO `user_logs` VALUES (234, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-12 09:46:06');
INSERT INTO `user_logs` VALUES (235, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-12 09:46:07');
INSERT INTO `user_logs` VALUES (236, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-12 09:46:08');
INSERT INTO `user_logs` VALUES (237, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-12 09:46:09');
INSERT INTO `user_logs` VALUES (238, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2024-11-12 09:47:37');
INSERT INTO `user_logs` VALUES (239, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/edit/5', '2024-11-12 09:47:42');
INSERT INTO `user_logs` VALUES (240, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 09:47:58');
INSERT INTO `user_logs` VALUES (241, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/delete/9', '2024-11-12 09:48:11');
INSERT INTO `user_logs` VALUES (242, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 09:48:11');
INSERT INTO `user_logs` VALUES (243, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 09:48:13');
INSERT INTO `user_logs` VALUES (244, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 09:50:09');
INSERT INTO `user_logs` VALUES (245, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 09:50:09');
INSERT INTO `user_logs` VALUES (246, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 09:50:12');
INSERT INTO `user_logs` VALUES (247, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:17:47');
INSERT INTO `user_logs` VALUES (248, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:17:52');
INSERT INTO `user_logs` VALUES (249, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:19:44');
INSERT INTO `user_logs` VALUES (250, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:19:48');
INSERT INTO `user_logs` VALUES (251, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:19:49');
INSERT INTO `user_logs` VALUES (252, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:19:50');
INSERT INTO `user_logs` VALUES (253, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:19:51');
INSERT INTO `user_logs` VALUES (254, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/edit/5', '2024-11-12 10:19:51');
INSERT INTO `user_logs` VALUES (255, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/edit/5', '2024-11-12 10:19:53');
INSERT INTO `user_logs` VALUES (256, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-11-12 10:20:24');
INSERT INTO `user_logs` VALUES (257, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-11-12 10:21:17');
INSERT INTO `user_logs` VALUES (258, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-11-12 10:21:25');
INSERT INTO `user_logs` VALUES (259, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:21:30');
INSERT INTO `user_logs` VALUES (260, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:21:32');
INSERT INTO `user_logs` VALUES (261, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:22:05');
INSERT INTO `user_logs` VALUES (262, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:22:07');
INSERT INTO `user_logs` VALUES (263, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:25:29');
INSERT INTO `user_logs` VALUES (264, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:25:35');
INSERT INTO `user_logs` VALUES (265, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:25:37');
INSERT INTO `user_logs` VALUES (266, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:26:50');
INSERT INTO `user_logs` VALUES (267, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:26:50');
INSERT INTO `user_logs` VALUES (268, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:26:54');
INSERT INTO `user_logs` VALUES (269, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:26:57');
INSERT INTO `user_logs` VALUES (270, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:27:02');
INSERT INTO `user_logs` VALUES (271, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:28:09');
INSERT INTO `user_logs` VALUES (272, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:28:09');
INSERT INTO `user_logs` VALUES (273, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:28:12');
INSERT INTO `user_logs` VALUES (274, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:28:15');
INSERT INTO `user_logs` VALUES (275, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori_staff', '2024-11-12 10:28:25');
INSERT INTO `user_logs` VALUES (276, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori_staff', '2024-11-12 10:28:45');
INSERT INTO `user_logs` VALUES (277, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori_staff', '2024-11-12 10:28:45');
INSERT INTO `user_logs` VALUES (278, 1, '::1', 'admin', 'http://localhost/webci4/admin/kategori_staff', '2024-11-12 10:29:04');
INSERT INTO `user_logs` VALUES (279, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:29:07');
INSERT INTO `user_logs` VALUES (280, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:29:10');
INSERT INTO `user_logs` VALUES (281, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:29:24');
INSERT INTO `user_logs` VALUES (282, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:29:47');
INSERT INTO `user_logs` VALUES (283, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:29:47');
INSERT INTO `user_logs` VALUES (284, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:31:53');
INSERT INTO `user_logs` VALUES (285, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:32:05');
INSERT INTO `user_logs` VALUES (286, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:32:05');
INSERT INTO `user_logs` VALUES (287, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:32:23');
INSERT INTO `user_logs` VALUES (288, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:32:29');
INSERT INTO `user_logs` VALUES (289, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:32:29');
INSERT INTO `user_logs` VALUES (290, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:32:36');
INSERT INTO `user_logs` VALUES (291, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:32:45');
INSERT INTO `user_logs` VALUES (292, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:32:45');
INSERT INTO `user_logs` VALUES (293, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:38:03');
INSERT INTO `user_logs` VALUES (294, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:38:05');
INSERT INTO `user_logs` VALUES (295, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:38:10');
INSERT INTO `user_logs` VALUES (296, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:38:10');
INSERT INTO `user_logs` VALUES (297, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:38:14');
INSERT INTO `user_logs` VALUES (298, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:38:24');
INSERT INTO `user_logs` VALUES (299, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff/edit/10', '2024-11-12 10:38:32');
INSERT INTO `user_logs` VALUES (300, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:38:32');
INSERT INTO `user_logs` VALUES (301, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:41:12');
INSERT INTO `user_logs` VALUES (302, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:41:12');
INSERT INTO `user_logs` VALUES (303, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:45:37');
INSERT INTO `user_logs` VALUES (304, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-11-12 10:46:09');
INSERT INTO `user_logs` VALUES (305, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:46:15');
INSERT INTO `user_logs` VALUES (306, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:50:43');
INSERT INTO `user_logs` VALUES (307, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 10:51:23');
INSERT INTO `user_logs` VALUES (308, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2024-11-12 12:45:22');
INSERT INTO `user_logs` VALUES (309, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita', '2024-11-12 12:45:31');
INSERT INTO `user_logs` VALUES (310, 1, '::1', 'admin', 'http://localhost/webci4/admin/berita/tambah', '2024-11-12 12:45:38');
INSERT INTO `user_logs` VALUES (311, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 12:45:45');
INSERT INTO `user_logs` VALUES (312, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2024-11-12 12:45:48');
INSERT INTO `user_logs` VALUES (313, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/dasbor', '2024-11-13 12:26:21');
INSERT INTO `user_logs` VALUES (314, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/video', '2024-11-13 12:26:28');
INSERT INTO `user_logs` VALUES (315, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/user', '2024-11-13 12:29:01');
INSERT INTO `user_logs` VALUES (316, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/konfigurasi', '2024-11-13 12:29:03');
INSERT INTO `user_logs` VALUES (317, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/staff', '2024-11-13 12:29:07');
INSERT INTO `user_logs` VALUES (318, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/staff', '2024-11-13 12:29:21');
INSERT INTO `user_logs` VALUES (319, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/konfigurasi', '2024-11-13 12:29:24');
INSERT INTO `user_logs` VALUES (320, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/konfigurasi', '2024-11-13 12:29:57');
INSERT INTO `user_logs` VALUES (321, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/konfigurasi', '2024-11-13 12:29:57');
INSERT INTO `user_logs` VALUES (322, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/konfigurasi', '2024-11-13 12:34:12');
INSERT INTO `user_logs` VALUES (323, 1, '::1', 'admin', 'http://localhost/tmb_ci4/admin/konfigurasi', '2024-11-13 13:09:20');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `akses_level` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_rahasia` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Administrator', 'Administrator@gmail.com', 'admin', '4130a3983c3359091c84af7755913c92a29ebb49', 'Admin', NULL, 'icon-educamedia.png', '', '2019-10-12 15:50:21', '2024-11-12 09:23:44');
INSERT INTO `users` VALUES (2, 'User', 'User@gmail.com', 'user', 'acc5d43e0936dbf3f27b906891aaafdf9ede4508', 'User', NULL, NULL, '', '2019-04-24 17:21:18', '2024-10-31 02:44:51');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id_video` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `posisi` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `video` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int NULL DEFAULT NULL,
  `bahasa` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_video`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 156 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (6, 'Praktikum Pyrolysis Biomassa MK Energi dan Listrik Pertanian', 'Homepage', '', 'wQ3NCj2sbVw', 6, 'Indonesia', 1, '2024-09-23 15:05:39');
INSERT INTO `video` VALUES (5, 'Rekomendasi Pemupukan Presisi dengan PRECIPALM 2021', 'Homepage', '', '1VP7Sr3nJRU', 5, 'Indonesia', 1, '2024-09-23 15:06:04');
INSERT INTO `video` VALUES (4, 'Summer Course Program 2021', 'Homepage', '', 'nGSixIXCnDM', 4, 'Indonesia', 1, '2024-09-23 15:06:04');
INSERT INTO `video` VALUES (3, 'Perawatan Tanaman Sayuran Hidroponik pada Greenhouse', 'Homepage', '', 'yFGcNKB1UIo', 3, 'Indonesia', 1, '2024-09-23 15:04:09');
INSERT INTO `video` VALUES (1, 'Praktikum Briket Biomassa MK Energi dan Listrik Pertanian', 'Homepage', '', '1bwBlJjaVSk', 1, 'Indonesia', 1, '2024-09-23 15:06:04');
INSERT INTO `video` VALUES (2, 'Desain Double Press Dewatering Microalgae untuk Pangan dan Bioenergi', 'Homepage', ' ', 'xYIEvNZdi-4', 2, 'Indonesia', 1, '2024-09-23 15:08:09');

SET FOREIGN_KEY_CHECKS = 1;
