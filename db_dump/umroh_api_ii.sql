/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : umroh_api

 Target Server Type    : MariaDB
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 04/12/2023 18:13:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_agen
-- ----------------------------
DROP TABLE IF EXISTS `tbl_agen`;
CREATE TABLE `tbl_agen`  (
  `id_agen` int(10) NOT NULL AUTO_INCREMENT,
  `nama_agen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_lahir` datetime(0) NULL DEFAULT NULL,
  `tempat_lahir` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran_ttd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_lengkap` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_agen_id` int(11) NULL DEFAULT NULL,
  `jabatan` int(255) NULL DEFAULT NULL,
  `sponsor_atasan` int(255) NULL DEFAULT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_pos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_hp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cabang_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_rekening` int(255) NULL DEFAULT NULL,
  `pemilik_rekening` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_ahli_waris` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hub_dgn_ahli_waris` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_hp_ahli_waris` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_ttd_agen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `bonus` bigint(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_agen`) USING BTREE,
  INDEX `tbl_agen_ibfk_1`(`role_agen_id`) USING BTREE,
  INDEX `tbl_agen_ibfk_2`(`jabatan`) USING BTREE,
  INDEX `tbl_agen_ibfk_3`(`sponsor_atasan`) USING BTREE,
  INDEX `tbl_agen_ibfk_4`(`user_id`) USING BTREE,
  CONSTRAINT `tbl_agen_ibfk_1` FOREIGN KEY (`role_agen_id`) REFERENCES `tbl_role_agen` (`id_role_agen`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tbl_agen_ibfk_2` FOREIGN KEY (`jabatan`) REFERENCES `tbl_role_agen` (`id_role_agen`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tbl_agen_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_agen
-- ----------------------------
INSERT INTO `tbl_agen` VALUES (1, 'Administrator', 'administrator', 'saS3eimg8Mg1M', '1995-12-31 00:00:00', 'Nusa Tenggara Barat ', NULL, 'L', '527101291222', 'Lombok', 1, 95, 1, 'Ampenan', 'Selaparang', 'Rembige', 'Nusa Tenggara Barat', '8312333', 'sulaeman@gmail.com', '0897', 'Mandiri', 'Mataram', 161002321, 'pemilikrekening', 'pewarisnya', 'keluarga kandung', '098765', '', 1, '1989-01-17 00:00:00', '2023-12-02 12:02:41', NULL);
INSERT INTO `tbl_agen` VALUES (90, 'Sulaeman EDIT AGEN Baitullah', 'sulaeman', 'saS3eimg8Mg1M', '1995-12-31 00:00:00', 'Nusa Tenggara Barat ', NULL, 'L', '527101291222', 'Lombok', 95, 95, 1, 'Ampenan', 'Selaparang', 'Rembige', 'Nusa Tenggara Barat', '8312333', 'sulaeman@gmail.com', '0897', 'Mandiri', 'Mataram', 161002321, 'pemilikrekening', 'pewarisnya', 'keluarga kandung', '098765', 'file/data_ttd_agen/WhatsApp_Image_2023-11-29_at_15.34.33.jpeg', 1, '1989-01-17 00:00:00', '2023-12-02 12:02:41', NULL);
INSERT INTO `tbl_agen` VALUES (91, 'Abdul Malik Edit Lagi', 'abdul', 'saS3eimg8Mg1M', '2009-02-03 00:00:00', 'Nusa Tenggara Barat', NULL, 'L', '5271012912', 'Lombok Tengah', 95, 95, 112, 'Praya', 'Praya Dalem', 'Praya Kelurahan', 'Nusa Tenggara Barat', '83121212', 'abdulmalik@gmail.com', '0897777', 'BNI', 'Praya', 2147483647, 'abdul malik sunarpi', 'Orang Tua', 'keluarga kandung', '09876555', 'file/data_ttd_agen/NOVEMBER_IPK_IKM2.png', 1, '1989-01-17 00:00:00', '2023-12-01 12:21:39', 2000000);
INSERT INTO `tbl_agen` VALUES (93, 'Rizky Hidayatullah AGEN BAITULLAH', 'rizky', 'saS3eimg8Mg1M', '1990-12-31 00:00:00', 'NTB', NULL, 'L', '5271012912333', 'Lombok Timur', 95, 95, 118, 'Mataram', 'Selaparang', 'Rembige', 'Nusa Tenggara Barat', '83123', 'email@gmail.com', '0897', 'Mandiri', 'Mataram', 161002321, 'pemilikrekening', 'pewarisnya', 'keluarga kandung', '098765', NULL, 1, '1989-01-17 00:00:00', '2023-12-01 11:20:18', NULL);
INSERT INTO `tbl_agen` VALUES (97, 'Kadir Jaelani', 'kadir', 'saS3eimg8Mg1M', '1989-12-29 00:00:00', 'NTB', NULL, 'L', '5271012912', 'Lombok', 91, 91, 1, 'Mataram', 'Selaparang', 'Rembige', 'Nusa Tenggara Barat', '83123', 'email@gmail.com', '0897', 'Mandiri', 'Mataram', 161002321, 'pemilikrekening', 'pewarisnya', 'keluarga kandung', '098765', NULL, 1, '1989-01-17 00:00:00', '1989-01-17 00:00:00', NULL);
INSERT INTO `tbl_agen` VALUES (98, 'Indir Atik', 'indir', 'saS3eimg8Mg1M', '1989-12-29 00:00:00', 'NTB', NULL, 'L', '5271012912', 'Lombok', 91, 91, 1, 'Mataram', 'Selaparang', 'Rembige', 'Nusa Tenggara Barat', '83123', 'email@gmail.com', '0897', 'Mandiri', 'Mataram', 161002321, 'pemilikrekening', 'pewarisnya', 'keluarga kandung', '098765', NULL, 1, '1989-01-17 00:00:00', '1989-01-17 00:00:00', NULL);
INSERT INTO `tbl_agen` VALUES (99, 'Presto Ali', 'presto', 'saS3eimg8Mg1M', '1989-12-29 00:00:00', 'NTB', NULL, 'L', '5271012912', 'Lombok', 90, 90, 1, 'Mataram', 'Selaparang', 'Rembige', 'Nusa Tenggara Barat', '83123', 'email@gmail.com', '0897', 'Mandiri', 'Mataram', 161002321, 'pemilikrekening', 'pewarisnya', 'keluarga kandung', '098765', NULL, 1, '1989-01-17 00:00:00', '1989-01-17 00:00:00', NULL);
INSERT INTO `tbl_agen` VALUES (102, 'Ipsum sunt et nostr', NULL, 'saS3eimg8Mg1M', '2019-04-15 00:00:00', 'Et cillum quidem imp', NULL, 'P', '55', 'Enim accusamus labor', 95, 95, 1, 'Praesentium natus es', 'Voluptate quidem nos', 'Esse enim occaecat n', 'Velit rerum ut ut q', '49', 'butawexysy@mailinator.com', '91', 'Sequi aute laudantiu', 'Architecto irure vel', 93, 'Amet ab natus odit ', 'Nisi aliqua Reprehe', 'Eos voluptatem iure', 'Ipsum eveniet aliq', NULL, 1, '2023-11-28 09:45:46', '2023-11-28 09:45:46', NULL);
INSERT INTO `tbl_agen` VALUES (103, 'Voluptate est anim ', NULL, 'saS3eimg8Mg1M', '1994-02-26 00:00:00', 'Fugiat voluptas com', NULL, 'P', '67', 'Quo sint quia sint ', 95, 95, 1, 'Dolorem pariatur Qu', 'Fugit minus deserun', 'Et doloremque a aliq', 'Enim deserunt repell', '38', 'kovyboga@mailinator.com', '60', 'Qui hic quas odit qu', 'Et alias quia qui co', 41, 'Magni eius beatae ip', 'Eiusmod qui mollitia', 'Recusandae Distinct', 'Sed delectus quisqu', NULL, 1, '2023-11-28 09:46:16', '2023-11-28 09:46:16', NULL);
INSERT INTO `tbl_agen` VALUES (105, 'Enim a pariatur Exe', NULL, 'saS3eimg8Mg1M', '1972-03-21 00:00:00', 'Soluta amet aut vol', NULL, 'P', '21', 'Eaque ut dolor dolor', 95, 95, 1, 'Maiores sed ipsum o', 'Iure sapiente tempor', 'Non id ut et repudi', 'Unde vero voluptatem', '60', 'viqoj@mailinator.com', '14', 'Cumque ad asperiores', 'Deleniti id quae exc', 85, 'Accusamus eos debiti', 'Sunt est earum et e', 'Animi eu ut asperna', 'Dolore qui deserunt ', NULL, 1, '2023-11-28 21:41:16', '2023-11-28 21:41:16', NULL);
INSERT INTO `tbl_agen` VALUES (106, 'Dignissimos dolore q', NULL, 'saS3eimg8Mg1M', '2010-12-10 00:00:00', 'Illum commodi ratio', NULL, 'P', '71', 'Quis cumque porro ni', 95, 95, 1, 'Voluptate enim nostr', 'Porro labore odio cu', 'Sit placeat nostrud', 'Temporibus reiciendi', '32', 'gofovy@mailinator.com', '92', 'In voluptatem Illum', 'Excepturi ut unde na', 31, 'Laudantium id paria', 'Laboriosam quae ips', 'Fugit id pariatur', 'Veniam aliquid volu', NULL, 1, '2023-11-28 21:50:21', '2023-11-28 21:50:21', NULL);
INSERT INTO `tbl_agen` VALUES (108, 'Andi Ahmad', NULL, 'saS3eimg8Mg1M', '1970-01-01 00:00:00', 'Mataram', NULL, 'L', '84', 'Majeluk', 91, 91, 1, 'Mataram', 'Majeluk', 'Majeluk', 'Nusa Tenggara Barat', '4521', 'andiahmad@gmail.com', '56211', 'Bank Mandiri', 'Mataram', 512111, 'Andi Ahmad Rekening', 'Ali Baba', 'Anak Kandung', '09821111', 'file/data_ttd_agen/WhatsApp_Image_2023-11-29_at_15.34.331.jpeg', 1, '2023-11-28 21:54:55', '2023-12-01 12:07:41', NULL);
INSERT INTO `tbl_agen` VALUES (109, 'Claudia Sandra', NULL, 'saS3eimg8Mg1M', '1994-05-05 00:00:00', 'Bali', NULL, 'P', '5444', 'Denpasar', 90, 90, 1, 'Denpasar', 'Denpasar Kecamatan', 'Denpasar Kelurahan', 'Bali', '36444', 'caludia@gmail.com', '45444', 'Bank BCA', 'Denpasar', 5044, 'Claudia Sandra Rekening', 'Ricky Aditya', 'Suami', '084444', 'file/data_ttd_agen/WhatsApp_Image_2023-10-18_at_11.48.27.jpeg', 1, '2023-11-28 21:55:38', '2023-12-01 13:02:11', NULL);
INSERT INTO `tbl_agen` VALUES (110, 'Naura', NULL, 'saS3eimg8Mg1M', '2000-04-26 00:00:00', 'Matarm', NULL, 'P', '414321', 'Kekalek', 90, 90, 1, 'Mataram', 'Mataram', 'Kekalek', 'NTB', '6321', 'naura@gmail.com', '95', 'Nobu Bank', 'Mataram', 76321, 'Naura Rekening', 'Nolan', 'Anak Kandung', '6754321', 'file/data_ttd_agen/WhatsApp_Image_2023-11-23_at_11.48.12.jpeg', 1, '2023-11-28 21:57:46', '2023-12-01 13:16:23', NULL);
INSERT INTO `tbl_agen` VALUES (111, 'Excepturi est et ess', NULL, 'saS3eimg8Mg1M', '2014-02-12 00:00:00', 'Quia deserunt qui eu', NULL, 'L', '23', 'Adipisicing velit ma', 95, 95, 1, 'Magnam sunt praesent', 'Quia exercitation om', 'Corrupti quo aliqui', 'Iste ullamco est mol', '80', 'nusil@mailinator.com', '68', 'Ut esse voluptatem', 'Cumque iure in qui a', 15, 'Qui sint qui omnis v', 'Dignissimos debitis ', 'Deleniti eaque qui i', 'Illum eiusmod volup', NULL, 1, '2023-11-28 22:06:14', '2023-11-28 22:06:14', NULL);
INSERT INTO `tbl_agen` VALUES (112, 'Eko Rizkianto', NULL, 'saS3eimg8Mg1M', '1981-01-01 00:00:00', 'Pasuruan', NULL, 'P', '1521', 'Jawa timur', 93, 93, 1, 'Pasuruan', 'Pasuruan', 'Gempol', 'Jawa Timur', '499999', 'yanadm@gmail.com', '7721', 'Bank BTN', 'Pasuruan', 5621, 'Yana Dwi Marizka Rekening', 'Yani Eka', 'Ibu Kandung', '0821', 'file/data_ttd_agen/NOVEMBER_IPK_IKM.png', 1, '2023-11-28 22:06:54', '2023-12-01 12:03:44', NULL);
INSERT INTO `tbl_agen` VALUES (113, 'Eligendi dolores et ', NULL, 'saS3eimg8Mg1M', '1992-05-16 00:00:00', 'Numquam aspernatur t', NULL, 'L', '67', 'Ullamco quia aut aut', 91, 91, 1, 'Veniam iste sunt ex', 'Assumenda eum incidu', 'Est et voluptatem f', 'Voluptate exercitati', '37', 'mymabicequ@mailinator.com', '24', 'Consequatur Dolore ', 'Deserunt voluptatem ', 8, 'Libero do et nihil e', 'Officiis fuga Sunt', 'Enim sit iure incid', 'Ipsa aperiam Nam re', NULL, 1, '2023-11-28 22:07:17', '2023-11-28 22:07:17', NULL);
INSERT INTO `tbl_agen` VALUES (114, 'Ullam ut dolorum inv', NULL, 'saS3eimg8Mg1M', '2020-02-12 00:00:00', 'Voluptas repudiandae', NULL, 'L', '20', 'Maxime ut aliquam of', 90, 90, 1, 'Et atque doloribus a', 'Minim doloremque lab', 'Eaque odit culpa mo', 'In reprehenderit ali', '50', 'leraq@mailinator.com', '15', 'Eligendi veniam dol', 'Modi atque fugiat e', 17, 'Omnis autem suscipit', 'Non quos dignissimos', 'Repudiandae fugiat o', 'Nesciunt enim nostr', NULL, 1, '2023-11-28 22:07:40', '2023-11-28 22:07:40', NULL);
INSERT INTO `tbl_agen` VALUES (115, 'Dolorem sed autem od', NULL, 'saS3eimg8Mg1M', '2021-04-22 00:00:00', 'Deserunt corporis ea', NULL, 'L', '84', 'Minim accusantium et', 95, 95, 1, 'Quia qui placeat si', 'Commodo ullamco ad e', 'Minim lorem omnis qu', 'Ea nisi corporis aut', '29', 'nitok@mailinator.com', '47', 'Neque atque omnis ma', 'Exercitationem ea ma', 72, 'Similique rem repreh', 'Ut reiciendis aperia', 'Debitis quia vel fug', 'Doloribus quibusdam ', NULL, 1, '2023-11-28 22:10:37', '2023-11-28 22:10:37', NULL);
INSERT INTO `tbl_agen` VALUES (118, 'Dewi', NULL, 'saS3eimg8Mg1M', '2023-11-30 00:00:00', 'qdws', NULL, 'P', '132', 'qeds', 93, 93, 1, 'qds', 'qwed', 'qwf', 'qewsf', '132', 'ad@gmail.com', '342', 'wrefgd', 'qewf', 1324, '1324fs', 'qewf', 'qefs', '132', NULL, 1, '2023-11-28 22:31:46', '2023-11-28 22:31:46', NULL);
INSERT INTO `tbl_agen` VALUES (119, 'ewrf', NULL, 'saS3eimg8Mg1M', '2023-11-28 00:00:00', 'qefs', NULL, 'P', '2132', 'qewsqew', 91, 91, 1, 'qewf', 'qwf', '13erwewr', '1ewrf', '12324', '132rw@gmail.com', '14', 'qewf', 'qwewf', 13243, '1232r', 'qewfs', 'qewrf', '131324', 'file/data_ttd_agen/NOVEMBER_IPK_IKM7.png', 1, '2023-11-28 22:33:57', '2023-12-01 13:14:00', NULL);
INSERT INTO `tbl_agen` VALUES (120, '12342fe', NULL, 'saS3eimg8Mg1M', '2023-11-28 00:00:00', 'qew', NULL, 'L', '12324', 'weqwf1', 90, 90, 1, '1324', '132rw', 'qwf', 'qdwfs', '1324', 'qerf@gmail.com', '112', '1324r', '132ref', 1324, '2132ewr', '1erw', 'ewrf1', '1324', NULL, 1, '2023-11-28 22:35:26', '2023-11-28 22:35:26', NULL);
INSERT INTO `tbl_agen` VALUES (121, 'Quos iusto tempor no', NULL, 'saS3eimg8Mg1M', '2011-09-08 00:00:00', 'Quidem duis expedita', NULL, 'P', '15', 'In molestiae reprehe', 93, 93, 1, 'Repudiandae quasi it', 'Vero a quod perspici', 'Qui non totam itaque', 'Et voluptates aute a', '11', 'rutikiz@mailinator.com', '8', 'Temporibus animi ut', 'Excepturi exercitati', 74, 'Saepe aut exercitati', 'Accusamus voluptas r', 'Perspiciatis duis a', 'Quae quo quia ipsam ', NULL, 1, '2023-11-28 22:43:39', '2023-11-28 22:43:39', NULL);
INSERT INTO `tbl_agen` VALUES (122, 'Dolor consequatur virna', NULL, 'saS3eimg8Mg1M', '2012-02-17 00:00:00', 'Iste id consequatur', NULL, 'P', '5', 'Debitis consequat F', 95, 95, 1, 'Animi eu sint sint ', 'Velit iste ratione ', 'Mollit temporibus qu', 'Ea recusandae Dolor', '6', 'vomod@mailinator.com', '43', 'Obcaecati totam ea e', 'Reprehenderit rerum', 50, 'Non eius mollitia pe', 'Tenetur eaque iure s', 'Numquam iure illo qu', 'Quia sunt quis quos', 'file/data_ttd_agen/hajidanumroh_icon.png', 1, '2023-12-02 11:28:26', '2023-12-02 11:28:26', NULL);

-- ----------------------------
-- Table structure for tbl_berita
-- ----------------------------
DROP TABLE IF EXISTS `tbl_berita`;
CREATE TABLE `tbl_berita`  (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_kegiatan` datetime(0) NULL DEFAULT NULL,
  `poin_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `peserta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `status` enum('belum_diproses','sedang_diproses','perbaikan','draft_sedang_dibuat','menunggu_koreksi','selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pesan_humas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto6` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_surat_undangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_berita_acara` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_surat_hasil` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_lain` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_user` int(10) NOT NULL,
  `jenis_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zona_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_draft` int(10) NOT NULL,
  PRIMARY KEY (`id_berita`) USING BTREE,
  INDEX `FOREIGN`(`id_user`) USING BTREE,
  CONSTRAINT `tbl_berita_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 173 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_berita
-- ----------------------------
INSERT INTO `tbl_berita` VALUES (129, 'Tambah pemprov ntb lengkap', NULL, NULL, NULL, NULL, '2023-09-14 14:38:56', '2023-09-14 14:38:56', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/4._SOP_terkait_pengelolaan_keuangan_di_unit_kerja.pdf', 'file/bahan_draft_raperda/3._SOP_Perencanaan_dan_Pengelolaan_Aset.pdf', 'file/bahan_draft_raperda/2._SOP_TUSI_KEUANGAN.pdf', NULL, 10, 'raperda', 'pemprov_ntb', 0);
INSERT INTO `tbl_berita` VALUES (130, 'Tambah Pemkot Mtr', NULL, NULL, NULL, NULL, '2023-09-14 14:40:05', '2023-09-14 14:40:05', 'perbaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/1._MHH04KU0303THN2017.pdf', 'file/bahan_draft_raperda/1._Permenkumham_ttg_orta.pdf', '', NULL, 10, 'raperkada', 'pemkot_mataram', 0);
INSERT INTO `tbl_berita` VALUES (131, 'Tambah Pemkot mtr lengkap', NULL, NULL, NULL, NULL, '2023-09-14 14:40:44', '2023-09-23 08:44:33', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/3._Permenkumham_Nomor_38_Tahun_2015.pdf', 'file/bahan_draft_raperda/1._Permenkumham_Nomor_65_Tahun_2016.pdf', 'file/bahan_draft_raperda/2._SOP_Kerjasama_dengan_Pihak_Ketiga.pdf', NULL, 10, 'raperkada', 'pemkot_mataram', 0);
INSERT INTO `tbl_berita` VALUES (132, 'Uji Pemkab Bima', NULL, NULL, NULL, NULL, '2023-09-14 14:41:41', '2023-09-14 14:41:41', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/1._PERMENKUMHAM_NO_5_TAHUN_2018_TENTANG_PENERAPAN_MANAJEMEN_RISIKO DI_LINGKUNGAN_KEMENTERIAN_HUKUM_DAN_HAK_ASASI_MANUSIA.pdf', 'file/bahan_draft_raperda/1._Permenkumham_ttg_orta1.pdf', 'file/bahan_draft_raperda/2._SOP_Kerjasama_dengan_Pihak_Ketiga1.pdf', NULL, 10, 'raperda', 'pemkab_bima', 0);
INSERT INTO `tbl_berita` VALUES (133, 'Pemkab Bima II Edit', NULL, NULL, NULL, NULL, '2023-09-14 14:42:39', '2023-09-14 15:31:45', 'draft_sedang_dibuat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/5._SOP_PEMBINAAN_SUMBER_DAYA_MANUSIA.pdf', 'file/bahan_draft_raperda/3._SOP_Penyusunan_Laporan_Capaian_Kinerja.pdf', 'file/bahan_draft_raperda/SOP_Kode_etik.pdf', NULL, 10, 'raperkada', 'pemkab_bima', 0);
INSERT INTO `tbl_berita` VALUES (134, 'Pemkab SUmbawa barat', NULL, NULL, NULL, NULL, '2023-09-14 14:44:23', '2023-09-14 14:44:23', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/1._PERMENKUMHAM_NO_5_TAHUN_2018_TENTANG_PENERAPAN_MANAJEMEN_RISIKO DI_LINGKUNGAN_KEMENTERIAN_HUKUM_DAN_HAK_ASASI_MANUSIA1.pdf', '', '', NULL, 10, 'raperda', 'pemkab_sumbawa_barat', 0);
INSERT INTO `tbl_berita` VALUES (135, 'Pemkab Sumbawa', NULL, NULL, NULL, NULL, '2023-09-14 14:45:00', '2023-09-14 14:45:00', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/1._Permenkumham_Ttg_41_Tahun_2021.pdf', 'file/bahan_draft_raperda/2._SOP_Kerjasama_dengan_Pihak_Ketiga2.pdf', 'file/bahan_draft_raperda/2._Salinan-Per.BKN-No.1-Th.2021-1.pdf', NULL, 10, 'raperkada', 'pemkab_sumbawa', 0);
INSERT INTO `tbl_berita` VALUES (136, 'KLU', NULL, NULL, NULL, NULL, '2023-09-14 14:45:30', '2023-09-14 14:45:30', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/1._Permenkumham_Nomor_27_Tahun_2019.pdf', '', '', NULL, 10, 'raperda', 'pemkab_lombok_utara', 0);
INSERT INTO `tbl_berita` VALUES (137, 'Lotim Edit', NULL, NULL, NULL, NULL, '2023-09-14 14:48:15', '2023-09-14 14:48:34', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/1._Permenkumham_Nomor_27_Tahun_20191.pdf', 'file/bahan_draft_raperda/2._SOP_TUSI_KEUANGAN1.pdf', 'file/bahan_draft_raperda/3._SOP_Penyusunan_Laporan_Capaian_Kinerja1.pdf', NULL, 10, 'raperda', 'pemkab_lombok_timur', 0);
INSERT INTO `tbl_berita` VALUES (138, 'Lombok Tengah Raperdas', NULL, NULL, NULL, NULL, '2023-09-14 15:25:41', '2023-09-14 15:25:41', 'perbaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/1._Permenkumham_57_tahun_2016_tentang_pengelolaan.pdf', '', '', NULL, 10, 'raperkada', 'pemkab_lombok_tengah', 0);
INSERT INTO `tbl_berita` VALUES (139, 'Lombok Barat ', NULL, NULL, NULL, NULL, '2023-09-14 15:28:01', '2023-09-14 15:28:01', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/2._Salinan-Per.BKN-No.1-Th.2021-11.pdf', 'file/bahan_draft_raperda/1._Peraturan-Menteri-Keuangan-Nomor-52PMK062016.pdf', 'file/bahan_draft_raperda/1._PERATURAN_MENTERI_KEUANGAN_REPUBLIK_INDONESIA.pdf', NULL, 10, 'raperda', 'pemkab_lombok_barat', 0);
INSERT INTO `tbl_berita` VALUES (142, 'tes 3', NULL, NULL, NULL, NULL, '2023-09-16 12:03:52', '2023-09-16 12:03:52', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/2._Salinan-Per.BKN-No.1-Th.2021-111.pdf', NULL, NULL, NULL, 1, 'raperda', 'pemprov_ntb', 0);
INSERT INTO `tbl_berita` VALUES (143, 'Tes Pemkab Bima Harmonisasi', NULL, NULL, NULL, NULL, '2023-09-16 22:13:01', '2023-09-16 22:13:01', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/Laporan_review_terhadap_penggunaan_Sertifikat_Elektronik_pada_naskah_dinas.pdf', 'file/bahan_draft_raperda/SPBE_B09_Laporan_evaluasi_terhadap_kepemilikan_Sertifikat_Elektronik.docx_(3)1.pdf', 'file/bahan_draft_raperda/SPBE_B09_Laporan_evaluasi_terhadap_kepemilikan_Sertifikat_Elektronik.docx_(2).pdf', NULL, 1, 'raperkada', 'pemkab_bima', 0);
INSERT INTO `tbl_berita` VALUES (144, 'Pemkab Bima 3', NULL, NULL, NULL, NULL, '2023-09-17 00:02:10', '2023-09-17 00:02:10', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/NEW_MANUAL_BOOK_PERESEAN.pdf', 'file/bahan_draft_raperda/2_Juknis-SAIBA-versi-19.0.0.pdf', 'file/bahan_draft_raperda/4._SOP_terkait_pengelolaan_keuangan_di_unit_kerja1.pdf', NULL, 1, 'raperkada', 'pemkab_bima', 0);
INSERT INTO `tbl_berita` VALUES (145, 'tambah pemprov ntb lagi', NULL, NULL, NULL, NULL, '2023-09-18 14:30:38', '2023-09-18 14:30:38', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/SEK.5-HH.04.01-136_.pdf', 'file/bahan_draft_raperda/4._SOP_terkait_pengelolaan_keuangan_di_unit_kerja2.pdf', 'file/bahan_draft_raperda/NEW_MANUAL_BOOK_PERESEAN1.pdf', NULL, 1, 'raperkada', 'pemprov_ntb', 0);
INSERT INTO `tbl_berita` VALUES (146, 'raperda sumbawa 2', NULL, NULL, NULL, NULL, '2023-09-18 17:15:54', '2023-09-18 17:15:54', 'perbaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/SEK.5-HH.04.01-136_1.pdf', 'file/bahan_draft_raperda/NEW_MANUAL_BOOK_PERESEAN2.pdf', 'file/bahan_draft_raperda/Laporan_review_terhadap_penggunaan_Sertifikat_Elektronik_pada_naskah_dinas1.pdf', NULL, 1, 'raperkada', 'pemkab_sumbawa', 0);
INSERT INTO `tbl_berita` VALUES (147, 'tes pemkot bima', NULL, NULL, NULL, NULL, '2023-09-19 15:02:32', '2023-09-19 15:02:32', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/SEK.5-HH.04.01-136_2.pdf', 'file/bahan_draft_raperda/NEW_MANUAL_BOOK_PERESEAN3.pdf', 'file/bahan_draft_raperda/4._SOP_terkait_pengelolaan_keuangan_di_unit_kerja3.pdf', NULL, 1, 'raperda', 'pemkot_bima', 0);
INSERT INTO `tbl_berita` VALUES (148, 'Coba Raperda Pemkot Mataram 2', NULL, '2023-09-23 08:26:48', NULL, NULL, '2023-09-23 08:26:48', NULL, 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 'raperda', 'pemkot_mataram', 113);
INSERT INTO `tbl_berita` VALUES (149, 'IDR', NULL, '2023-09-23 08:28:40', NULL, NULL, '2023-09-23 08:28:40', NULL, 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'raperda', 'pemprov_ntb', 112);
INSERT INTO `tbl_berita` VALUES (150, 'RAPERKADA BIMA PEMKAB', NULL, '2023-09-23 08:45:15', NULL, NULL, '2023-09-23 08:45:15', NULL, 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 'raperkada', 'pemkab_bima', 114);
INSERT INTO `tbl_berita` VALUES (151, 'saas', NULL, '2023-09-25 08:47:58', NULL, NULL, '2023-09-25 08:47:58', NULL, 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'raperda', 'pemprov_ntb', 138);
INSERT INTO `tbl_berita` VALUES (172, 'Ujian SUMBARAT', NULL, '2023-10-02 09:53:44', NULL, NULL, '2023-10-02 09:53:44', '2023-10-02 09:57:34', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/RAPERBUP_TENTANG_PETA_BATAS_DESA_SETELUK_TENGAH_SETELAH_PEMEKARAN14.docx', NULL, NULL, NULL, 13, 'raperda', 'pemkab_sumbawa_barat', 153);

-- ----------------------------
-- Table structure for tbl_cabang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cabang`;
CREATE TABLE `tbl_cabang`  (
  `id_cabang` int(10) NOT NULL AUTO_INCREMENT,
  `nama_cabang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `no_telp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_panjang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `provinsi_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_cabang`) USING BTREE,
  INDEX `provinsi_id`(`provinsi_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `tbl_cabang_ibfk_1` FOREIGN KEY (`provinsi_id`) REFERENCES `tbl_provinsi` (`id_provinsi`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tbl_cabang_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_cabang
-- ----------------------------
INSERT INTO `tbl_cabang` VALUES (64, 'Superadmin', '2023-06-07 16:03:35', NULL, 'Superadmin', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_cabang` VALUES (71, 'Jakarta', '2023-06-07 16:03:35', NULL, 'Jakarta', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_cabang` VALUES (72, 'Surabaya', '2023-06-07 16:03:35', NULL, 'Surabaya', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_cabang` VALUES (73, 'Banyuwangi', '2023-06-07 16:03:35', NULL, 'Banyuwangi', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_cabang` VALUES (74, 'Bandung', '2023-06-07 16:03:35', NULL, 'Bandung', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_cabang` VALUES (78, 'Malang Edit', '2023-11-18 10:09:19', '0777', 'Malang Edit', 'malangedit@gmail.com', 71, 13, '2023-11-18 10:33:07');

-- ----------------------------
-- Table structure for tbl_dp
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dp`;
CREATE TABLE `tbl_dp`  (
  `id_dp` int(10) NOT NULL AUTO_INCREMENT,
  `harga_dp1` int(11) NULL DEFAULT NULL,
  `harga_dp2` int(11) NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dp`) USING BTREE,
  INDEX `user_id_2`(`tgl_input`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_dp
-- ----------------------------
INSERT INTO `tbl_dp` VALUES (82, 2500000, 5000000, '2023-11-21 07:40:17', '2023-11-21 07:40:20');
INSERT INTO `tbl_dp` VALUES (83, 5000000, 10000000, '2023-11-21 07:40:17', '2023-11-21 07:40:20');

-- ----------------------------
-- Table structure for tbl_draft
-- ----------------------------
DROP TABLE IF EXISTS `tbl_draft`;
CREATE TABLE `tbl_draft`  (
  `id_draft_permohonan` int(10) NOT NULL AUTO_INCREMENT,
  `nama_draft_permohonan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `status` enum('belum_diproses','perbaikan','sedang_diproses','draft_sedang_dibuat','menunggu_koreksi','selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_surat_permohonan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url_data_dukung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `naskah_akademik_dll` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `draft_harmonisasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_user` int(10) NOT NULL,
  `jenis_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zona_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `id_perancang` int(10) NOT NULL,
  `nama_perancang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_draft_permohonan`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 155 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_draft
-- ----------------------------
INSERT INTO `tbl_draft` VALUES (106, 'TAMBAH DRAFT RAPERDA PEMPROV NTB VX', '2023-06-09 08:49:03', 'selesai', 'file/bahan_draft_raperda/1._MHH04KU0303THN2017.pdf', '[\"file\\/bahan_draft_raperda\\/1._Peraturan-Menteri-Keuangan-Nomor-52PMK062016.pdf\",\"file\\/bahan_draft_raperda\\/1._Permenkumham_Ttg_41_Tahun_2021.pdf\"]', NULL, NULL, 9, 'raperda', 'pemprov_ntb', '2023-06-09 08:54:13', 0, 'Rara Perancang');
INSERT INTO `tbl_draft` VALUES (108, 'tambah 2 pemprov ntb', '2023-06-09 09:04:27', 'selesai', 'file/bahan_draft_raperda/2._SOP_TUSI_KEUANGAN.pdf', '[\"file\\/bahan_draft_raperda\\/1._Permenkumham_ttg_orta.pdf\"]', NULL, NULL, 9, 'raperda', 'pemprov_ntb', '2023-06-09 09:06:01', 0, 'dini ');
INSERT INTO `tbl_draft` VALUES (109, 'Tambah Draft pemkot MTRM', '2023-06-09 09:10:23', 'selesai', 'file/bahan_draft_raperda/1._MHH04KU0303THN20171.pdf', '[\"file\\/bahan_draft_raperda\\/1._Permenkumham_Nomor_27_Tahun_20191.pdf\"]', NULL, NULL, 11, 'raperda', 'pemkot_mataram', '2023-06-09 09:19:50', 0, 'ryan');
INSERT INTO `tbl_draft` VALUES (110, 'Pemkot BIMA Raperkada', '2023-06-09 14:29:10', 'selesai', 'file/bahan_draft_raperda/3._SOP_Perencanaan_dan_Pengelolaan_Aset.pdf', '[\"file\\/bahan_draft_raperda\\/3._Permenkumham_Nomor_38_Tahun_2015.pdf\",\"file\\/bahan_draft_raperda\\/50~PMK.05~2018Per.pdf\"]', NULL, NULL, 12, 'raperkada', 'pemkot_bima', '2023-06-09 14:35:41', 0, 'Fina Perancang');
INSERT INTO `tbl_draft` VALUES (111, 'coba input pemprov ntb', '2023-06-12 12:03:57', 'selesai', 'file/bahan_draft_raperda/202306071335134150.pdf', '[\"file\\/bahan_draft_raperda\\/Laporan_Evaluasi_Terhadap_Penggunaan_dan_Kondisi_perangkat_jaringan_utama_dan_nirkabel.docx_(1).pdf\",\"file\\/bahan_draft_raperda\\/Panduan_Aplikasi_Katamaran_(3).pdf\"]', NULL, NULL, 9, 'raperda', 'pemprov_ntb', '2023-06-12 12:14:56', 0, 'Rio');
INSERT INTO `tbl_draft` VALUES (112, 'IDR', '2023-06-13 14:18:53', 'selesai', 'file/bahan_draft_raperda/Surat_Penyampaian_RKT_RB_Tahun_2023_Kantor_Wilayah.pdf', '[\"file\\/bahan_draft_raperda\\/1151_-_Penyampaian_Hasil_Evaluasi_SPBE_Tahun_2022_dan_Pemberitahuan_Penyusunan_Rencana_Aksi_SPBE_(1)_(1).pdf\",\"file\\/bahan_draft_raperda\\/_Laporan_Evaluasi_Tingkat_Kematangan_Pengelolaan_Perangkat_TI.docx_(1).pdf\",\"file\\/bahan_draft_raperda\\/Dokumentasi_Kegiatan_CAT_CATAR_Hari_I_Kanwil_NTB_230612_191728.pdf\"]', NULL, NULL, 9, 'raperda', 'pemprov_ntb', '2023-09-23 08:28:40', 0, 'Fina Panduwinata');
INSERT INTO `tbl_draft` VALUES (113, 'Coba Raperda Pemkot Mataram 2', '2023-06-14 09:44:45', 'selesai', 'file/bahan_draft_raperda/Undangan_Rekon_HUKDIS_TW_II_Tahun_2023_230603_081839.pdf', '[\"file\\/bahan_draft_raperda\\/Surat_Penyampaian_RKT_RB_Tahun_2023_Kantor_Wilayah1.pdf\",\"file\\/bahan_draft_raperda\\/Undangan_Pembukaan_FMD_Petugas_Pemasyarakatan.pdf\"]', NULL, NULL, 11, 'raperda', 'pemkot_mataram', '2023-09-23 08:26:48', 0, 'Hermi Sakinna');
INSERT INTO `tbl_draft` VALUES (114, 'RAPERKADA BIMA PEMKAB', '2023-06-14 10:24:56', 'selesai', 'file/bahan_draft_raperda/_Laporan_Evaluasi_Tingkat_Kematangan_Pengelolaan_Perangkat_TI.docx_(1)1.pdf', '[\"file\\/bahan_draft_raperda\\/Buku_Pedoman_Orientasi_CPNS_KUMHAM_2022.pdf\",\"file\\/bahan_draft_raperda\\/Akte_Kelahiran_Kalila_Shezani_Iswara.pdf\"]', NULL, NULL, 20, 'raperkada', 'pemkab_bima', '2023-09-23 08:45:15', 0, 'Yanto Madya');
INSERT INTO `tbl_draft` VALUES (115, 'Pemprov NTB Raperda III', '2023-06-14 14:07:59', 'belum_diproses', 'file/bahan_draft_raperda/1._Permenkumham_57_tahun_2016_tentang_pengelolaan.pdf', '[\"file\\/bahan_draft_raperda\\/1._Permenkumham_Ttg_41_Tahun_20212.pdf\",\"file\\/bahan_draft_raperda\\/1._Peraturan-Menteri-Keuangan-Nomor-52PMK0620161.pdf\"]', NULL, NULL, 9, 'raperda', 'pemprov_ntb', '2023-06-14 15:22:32', 0, 'Rio');
INSERT INTO `tbl_draft` VALUES (117, 'ujikkk', '2023-07-03 11:46:00', 'selesai', 'file/bahan_draft_raperda/2._PERBKN-2-TAHUN-2021.pdf', '[\"file\\/bahan_draft_raperda\\/1._Permenkumham_Ttg_41_Tahun_20213.pdf\",\"file\\/bahan_draft_raperda\\/3._SOP_Perencanaan_dan_Pengelolaan_Aset1.pdf\"]', NULL, NULL, 1, 'raperkada', 'pemprov_ntb', '2023-07-03 17:02:22', 0, NULL);
INSERT INTO `tbl_draft` VALUES (128, 'ttttt', '2023-07-05 10:22:44', 'belum_diproses', 'file/bahan_draft_raperda/1._MHH04KU0303THN20178.pdf', '[\"file\\/bahan_draft_raperda\\/1._Peraturan-Menteri-Keuangan-Nomor-52PMK0620163.pdf\"]', 'file/bahan_draft_raperda/1._PERATURAN_MENTERI_KEUANGAN_REPUBLIK_INDONESIA3.pdf', NULL, 1, 'raperda', 'pemprov_ntb', '2023-07-05 10:22:44', 0, NULL);
INSERT INTO `tbl_draft` VALUES (129, 'i will be taken', '2023-07-05 10:37:28', 'belum_diproses', 'file/bahan_draft_raperda/1._MHH04KU0303THN20179.pdf', '[\"file\\/bahan_draft_raperda\\/2._PERBKN-2-TAHUN-20211.pdf\",\"file\\/bahan_draft_raperda\\/2_Juknis-SAIBA-versi-19.0.01.pdf\",\"file\\/bahan_draft_raperda\\/198912292022031002_JOHAN_ISWARA_.pdf\"]', 'file/bahan_draft_raperda/1._PERATURAN_MENTERI_KEUANGAN_REPUBLIK_INDONESIA4.pdf', 'file/bahan_draft_raperda/1._Permenkumham_Ttg_41_Tahun_20214.pdf', 1, 'raperda', 'pemprov_ntb', '2023-07-06 15:25:37', 0, NULL);
INSERT INTO `tbl_draft` VALUES (133, 'raperkada eett', '2023-07-06 15:28:36', 'selesai', 'file/bahan_draft_raperda/1._Permenkumham_Ttg_41_Tahun_20215.pdf', '[\"file\\/bahan_draft_raperda\\/2._PERBKN-2-TAHUN-20212.pdf\",\"file\\/bahan_draft_raperda\\/2._Salinan-Per.BKN-No.1-Th.2021-13.pdf\"]', 'file/bahan_draft_raperda/Surat_Undangan_Peserta_Sosialisasi_IRH_2023.pdf', 'file/bahan_draft_raperda/Rundown_Agenda_Wamenkumham_KGTC_Mataram.docx', 1, 'raperda', 'pemprov_ntb', '2023-07-10 07:48:10', 0, 'Fika');
INSERT INTO `tbl_draft` VALUES (134, 'sikk asik jozz', '2023-07-10 10:23:54', 'selesai', 'file/bahan_draft_raperda/Surat_Undangan_Peserta_Sosialisasi_IRH_20232.pdf', '[\"file\\/bahan_draft_raperda\\/UM.66_Evaluasi_dan_Silaturahmi_dengan_Kepala_Divisi_Pemasyarakatan_dan_Kepala_UPT_Se-Nusantara1.pdf\",\"file\\/bahan_draft_raperda\\/2._SOP_TUSI_KEUANGAN1.pdf\",\"file\\/bahan_draft_raperda\\/3._Permenkumham_Nomor_38_Tahun_20151.pdf\"]', 'file/bahan_draft_raperda/Perubahan_Tanggal_Pelaksanaan_Kegiatan_Penilaian_K_230702_1806542.pdf', 'file/bahan_draft_raperda/PERUBAHAN_PERDA_NO_13_TAHUN_2016_final_print.rtf3.doc', 1, 'raperda', 'pemprov_ntb', '2023-07-10 15:31:30', 0, 'Finag');
INSERT INTO `tbl_draft` VALUES (135, 'sek bijimanez', '2023-07-10 15:50:31', 'belum_diproses', 'file/bahan_draft_raperda/Surat_Undangan_Peserta_Sosialisasi_IRH_20233.pdf', 'null', 'file/bahan_draft_raperda/PERUBAHAN_PERDA_NO_13_TAHUN_2016_final_print.rtf4.doc', 'file/bahan_draft_raperda/hahahah.docx', 1, 'raperkada', 'pemprov_ntb', '2023-07-11 09:29:00', 0, NULL);
INSERT INTO `tbl_draft` VALUES (136, 'asa', '2023-07-13 15:33:02', 'belum_diproses', 'file/bahan_draft_raperda/1._MHH04KU0303THN201710.pdf', 'null', NULL, 'file/bahan_draft_raperda/hahahah1.docx', 1, 'raperda', 'pemprov_ntb', '2023-07-13 15:42:52', 0, NULL);
INSERT INTO `tbl_draft` VALUES (137, 'sumbawa barat Raperda', '2023-07-18 14:59:14', 'belum_diproses', 'file/bahan_draft_raperda/1._MHH04KU0303THN201711.pdf', 'null', NULL, 'file/bahan_draft_raperda/surat_pernyataan_potongan_tunker_21.docx', 10, 'raperda', 'pemkab_sumbawa_barat', '2023-09-29 06:34:38', 0, NULL);
INSERT INTO `tbl_draft` VALUES (138, 'saas', '2023-08-24 11:26:02', 'selesai', 'file/bahan_draft_raperda/Surat_Penunjukan_kontributor_2023.docx', 'null', 'file/bahan_draft_raperda/surat_11905310.pdf', 'file/bahan_draft_raperda/Surat_Penunjukan_kontributor_20231.docx', 1, 'raperda', 'pemprov_ntb', '2023-09-25 08:47:58', 0, 'edit nama perancang');
INSERT INTO `tbl_draft` VALUES (148, 'asds', '2023-09-29 16:03:59', 'belum_diproses', 'file/bahan_draft_raperda/RAPERBUP_TENTANG_RAD_KLA_2023-20281.doc', '[\"file\\/bahan_draft_raperda\\/absensi_apel_harian_pagi_n_sore_(1)2.docx\"]', 'file/bahan_draft_raperda/Nodin_Koordinasi_Konsultasi_KEHUMASAN_dan_TI_(1)1.docx', 'file/bahan_draft_raperda/absensi_apel_harian_pagi_n_sore_(1)_(1)1.docx', 13, 'raperda', 'pemkab_sumbawa_barat', '2023-09-29 12:03:58', 0, '');
INSERT INTO `tbl_draft` VALUES (150, 'Pemprov NTB 14', '2023-09-29 17:57:22', 'belum_diproses', 'file/bahan_draft_raperda/RAPERBUP_TENTANG_RAD_KLA_2023-20283.doc', '[\"file\\/bahan_draft_raperda\\/DRAF_PEDOMAN_12_SEP3.docx\"]', 'file/bahan_draft_raperda/Nodin_Koordinasi_Konsultasi_KEHUMASAN_dan_TI_(1)3.docx', 'file/bahan_draft_raperda/absensi_apel_harian_pagi_n_sore_(1)_(1)3.docx', 9, 'raperda', 'pemprov_ntb', '2023-09-29 12:08:44', 0, '');
INSERT INTO `tbl_draft` VALUES (152, 'ujian sumbawa baratz', '2023-10-02 09:04:33', 'belum_diproses', 'file/bahan_draft_raperda/Tanggapan_Raperwal_Perubahan_Tambahan_Penghasilan_ASN.docx', '[\"file\\/bahan_draft_raperda\\/laporan_Konsul.docx\"]', 'file/bahan_draft_raperda/Nodin_Koordinasi_Konsultasi_KEHUMASAN_dan_TI_(1)2.docx', 'file/bahan_draft_raperda/RAPERBUP_TENTANG_PETA_BATAS_DESA_SETELUK_TENGAH_SETELAH_PEMEKARAN.docx', 13, 'raperda', 'pemkab_sumbawa_barat', '2023-10-02 03:38:02', 0, '');
INSERT INTO `tbl_draft` VALUES (153, 'Ujian SUMBARAT', '2023-10-02 09:53:11', 'selesai', 'file/bahan_draft_raperda/RAPERBUP_TENTANG_PETA_BATAS_DESA_SETELUK_TENGAH_SETELAH_PEMEKARAN13.docx', '[\"file\\/bahan_draft_raperda\\/Tanggapan_Raperda_Kota_Mataram_Pengelolaan_Parkir.pdf\"]', 'file/bahan_draft_raperda/2023_Sambutan_Menkumham_pada_Upacara_Peringatan_Hari_Kesaktian_Pancasila.pdf', 'file/bahan_draft_raperda/Tanggapan_Raperwal_Perubahan_Tambahan_Penghasilan_ASN2.docx', 13, 'raperda', 'pemkab_sumbawa_barat', '2023-10-02 09:57:34', 0, 'Baiq Rara');
INSERT INTO `tbl_draft` VALUES (154, 'tes', '2023-11-13 13:58:26', 'belum_diproses', 'file/bahan_draft_raperda/RAPERBUP_TENTANG_SMART_CITY_SUMBAWA_BARAT.docx', 'null', 'file/bahan_draft_raperda/lap-bm-semua-tanggal.pdf', 'file/bahan_draft_raperda/absensi_apel_harian_pagi_n_sore_(1)_(3).docx', 11, 'raperda', 'pemkot_mataram', '2023-11-13 13:58:26', 0, NULL);

-- ----------------------------
-- Table structure for tbl_embarkasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_embarkasi`;
CREATE TABLE `tbl_embarkasi`  (
  `id_embarkasi` int(10) NOT NULL AUTO_INCREMENT,
  `nama_embarkasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `no_telp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_panjang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_embarkasi`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `tbl_embarkasi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_embarkasi
-- ----------------------------
INSERT INTO `tbl_embarkasi` VALUES (79, 'Surabaya', '2023-11-20 11:54:05', '0897', 'Surabaya', 'sby@gmail.com', 1, '2023-11-20 11:54:05');
INSERT INTO `tbl_embarkasi` VALUES (80, 'Jakarta', '2023-11-20 11:54:05', '0897', 'Jakarta', 'jkt@gmail.com', 1, '2023-11-20 11:54:05');

-- ----------------------------
-- Table structure for tbl_jamaah
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jamaah`;
CREATE TABLE `tbl_jamaah`  (
  `id_jamaah` int(10) NOT NULL AUTO_INCREMENT,
  `nama_jamaah` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_lahir` datetime(0) NULL DEFAULT NULL,
  `tempat_lahir` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `usia` int(20) NULL DEFAULT NULL,
  `no_paspor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_paspor_publish` datetime(0) NULL DEFAULT NULL,
  `masa_berlaku_paspor` datetime(0) NULL DEFAULT NULL,
  `tempat_paspor_publish` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_lengkap` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_telp_wa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_mahram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hub_mahram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rencana_umroh_or_haji` datetime(0) NULL DEFAULT NULL,
  `pernah_umroh_or_haji_thn` datetime(0) NULL DEFAULT NULL,
  `kursi_roda` enum('Y','T') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `embarkasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `paket_haji_id` int(255) NULL DEFAULT NULL,
  `paket_umroh_id` int(255) NULL DEFAULT NULL,
  `uang_muka` bigint(255) NULL DEFAULT NULL,
  `tgl_berangkat` datetime(0) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `status` enum('dokumen_lengkap','dokumen_belum_lengkap') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_dokumen` enum('pending','sudah_dp','lunas') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_bukti_tf_jamaah` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agen_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_jamaah`) USING BTREE,
  INDEX `provinsi_id`(`tgl_paspor_publish`) USING BTREE,
  INDEX `user_id`(`masa_berlaku_paspor`) USING BTREE,
  INDEX `tbl_jamaah_ibfk_1`(`paket_haji_id`) USING BTREE,
  INDEX `tbl_jamaah_ibfk_2`(`paket_umroh_id`) USING BTREE,
  INDEX `tbl_jamaah_ibfk_3`(`user_id`) USING BTREE,
  INDEX `agen_id`(`agen_id`) USING BTREE,
  CONSTRAINT `tbl_jamaah_ibfk_1` FOREIGN KEY (`paket_haji_id`) REFERENCES `tbl_paket_haji` (`id_paket_haji`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tbl_jamaah_ibfk_2` FOREIGN KEY (`paket_umroh_id`) REFERENCES `tbl_paket_umroh` (`id_paket_umroh`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tbl_jamaah_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `tbl_agen` (`id_agen`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tbl_jamaah_ibfk_4` FOREIGN KEY (`agen_id`) REFERENCES `tbl_agen` (`id_agen`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_jamaah
-- ----------------------------
INSERT INTO `tbl_jamaah` VALUES (91, 'Dolore blanditiis pr', '2012-08-06 00:00:00', 'Voluptas sed aut lau', 20, '1Q2W3E45T', '1995-08-24 00:00:00', '1983-02-04 00:00:00', 'Fugiat exercitation', 'Nihil sunt rem illum', 'P', '130', 'Nemo vel quod et cup', 'At aliqua Accusanti', 'Nisi sit magni conse', '2007-07-18 00:00:00', '1983-09-10 00:00:00', 'T', '79', NULL, 71, 2500000, '2009-03-10 00:00:00', 1, '2023-12-02 11:23:18', '2023-12-02 11:23:18', 'dokumen_lengkap', NULL, 'file/data_tf_jamaah/WhatsApp_Image_2023-09-18_at_09.02.48.jpeg', NULL);
INSERT INTO `tbl_jamaah` VALUES (93, 'Rizky Hidayatullah EDIT', '1989-12-29 00:00:00', 'Masbagik EDIT', 33, 'Quo sit ut officiis', '1999-05-25 00:00:00', '1993-02-08 00:00:00', 'Adipisicing itaque e', 'Est alias dolor aut', 'L', '100', 'Quia nisi eius aut b', 'Nostrud sapiente occ', 'Dolor aute excepturi', '1992-06-06 00:00:00', '2008-09-10 00:00:00', 'T', '79', NULL, 64, 5000000, '2025-01-01 00:00:00', 1, '2023-12-02 11:23:49', '2023-12-02 11:23:49', 'dokumen_lengkap', NULL, 'file/data_tf_jamaah/WhatsApp_Image_2023-10-18_at_11.48.27.jpeg', NULL);
INSERT INTO `tbl_jamaah` VALUES (95, '132rw', '2023-11-28 00:00:00', '1232ew', 123, '213EWDS', '2023-11-28 00:00:00', '2023-11-28 00:00:00', '1ewr', 'erwf', 'L', '21324', '1232r', '1232e', 'qewdfs', '2023-11-28 00:00:00', '2023-11-28 00:00:00', 'T', '79', 71, NULL, 5000000, '2023-11-28 00:00:00', 1, '2023-11-28 21:39:23', '2023-11-28 21:39:23', 'dokumen_lengkap', NULL, NULL, NULL);
INSERT INTO `tbl_jamaah` VALUES (96, 'Autem exercitation e', '2000-10-04 00:00:00', 'Labore quasi pariatu', 11, 'Nemo debitis quia ut', '2013-12-18 00:00:00', '2005-07-07 00:00:00', 'Ipsam possimus enim', 'Enim nisi duis error', 'P', '98', 'Molestiae consectetu', 'Sed natus officia do', 'Est esse beatae vel', '1973-09-08 00:00:00', '2002-11-11 00:00:00', 'Y', '80', 64, NULL, 5000000, '1990-11-10 00:00:00', 1, '2023-12-02 10:29:03', '2023-12-02 10:29:03', 'dokumen_lengkap', NULL, 'file/data_tf_jamaah/WhatsApp_Image_2023-11-29_at_15.34.33.jpeg', NULL);
INSERT INTO `tbl_jamaah` VALUES (98, 'Rio', '2023-11-28 00:00:00', '1232ew', 123, '213EWDS', '2023-11-28 00:00:00', '2023-11-28 00:00:00', '1ewr', 'erwf', 'L', '21324', '1232r', '1232e', 'qewdfs', '2023-11-28 00:00:00', '2023-11-28 00:00:00', 'T', '79', 71, NULL, 5000000, '2023-11-28 00:00:00', 1, '2023-11-28 21:39:23', '2023-11-28 21:39:23', 'dokumen_lengkap', NULL, NULL, 91);
INSERT INTO `tbl_jamaah` VALUES (99, 'Yayan', '2023-11-28 00:00:00', '1232ew', 123, '213EWDS', '2023-11-28 00:00:00', '2023-11-28 00:00:00', '1ewr', 'erwf', 'L', '21324', '1232r', '1232e', 'qewdfs', '2023-11-28 00:00:00', '2023-11-28 00:00:00', 'T', '79', 71, NULL, 5000000, '2023-11-28 00:00:00', 91, '2023-12-04 16:40:02', '2023-12-04 16:40:02', 'dokumen_lengkap', NULL, 'file/data_tf_jamaah/WhatsApp_Image_2023-11-23_at_16.43.10.jpeg', 91);
INSERT INTO `tbl_jamaah` VALUES (100, 'Ulfa', '2023-11-28 00:00:00', '1232ew', 123, '213EWDS', '2023-11-28 00:00:00', '2023-11-28 00:00:00', '1ewr', 'erwf', 'L', '21324', '1232r', '1232e', 'qewdfs', '2023-11-28 00:00:00', '2023-11-28 00:00:00', 'T', '79', 71, NULL, 5000000, '2023-11-28 00:00:00', 1, '2023-11-28 21:39:23', '2023-11-28 21:39:23', 'dokumen_lengkap', NULL, NULL, 91);

-- ----------------------------
-- Table structure for tbl_kota
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kota`;
CREATE TABLE `tbl_kota`  (
  `id_kota` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kota`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kota
-- ----------------------------
INSERT INTO `tbl_kota` VALUES (92, 'Mataram', '2023-11-21 09:08:22', '2023-11-21 09:08:22');
INSERT INTO `tbl_kota` VALUES (93, 'Denpasar', '2023-11-21 09:08:22', '2023-11-21 09:08:22');
INSERT INTO `tbl_kota` VALUES (94, 'Ampenan', '2023-11-21 09:08:22', '2023-11-21 09:08:22');
INSERT INTO `tbl_kota` VALUES (95, 'Negare', '2023-11-21 09:08:22', '2023-11-21 09:08:22');
INSERT INTO `tbl_kota` VALUES (96, 'Praya', '2023-11-21 09:08:22', '2023-11-21 09:08:22');

-- ----------------------------
-- Table structure for tbl_notif
-- ----------------------------
DROP TABLE IF EXISTS `tbl_notif`;
CREATE TABLE `tbl_notif`  (
  `id_notif` int(11) NOT NULL AUTO_INCREMENT,
  `pengirim` int(11) NULL DEFAULT NULL,
  `penerima` int(11) NULL DEFAULT NULL,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_notif` datetime(0) NULL DEFAULT NULL,
  `baca_notif` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hapus_notif` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_berita` int(11) NOT NULL,
  PRIMARY KEY (`id_notif`) USING BTREE,
  INDEX `FOREIGN`(`id_berita`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 712 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_notif
-- ----------------------------
INSERT INTO `tbl_notif` VALUES (16, 2, 1, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', '1, ', NULL, 7);
INSERT INTO `tbl_notif` VALUES (17, 2, 2, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', '2, ', NULL, 7);
INSERT INTO `tbl_notif` VALUES (18, 2, 3, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7);
INSERT INTO `tbl_notif` VALUES (19, 2, 4, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7);
INSERT INTO `tbl_notif` VALUES (20, 2, 5, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7);
INSERT INTO `tbl_notif` VALUES (21, 2, 6, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7);
INSERT INTO `tbl_notif` VALUES (22, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', '1, ', NULL, 8);
INSERT INTO `tbl_notif` VALUES (23, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8);
INSERT INTO `tbl_notif` VALUES (24, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8);
INSERT INTO `tbl_notif` VALUES (25, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8);
INSERT INTO `tbl_notif` VALUES (26, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8);
INSERT INTO `tbl_notif` VALUES (27, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8);
INSERT INTO `tbl_notif` VALUES (28, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', '1, ', NULL, 9);
INSERT INTO `tbl_notif` VALUES (29, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9);
INSERT INTO `tbl_notif` VALUES (30, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9);
INSERT INTO `tbl_notif` VALUES (31, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9);
INSERT INTO `tbl_notif` VALUES (32, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9);
INSERT INTO `tbl_notif` VALUES (33, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9);
INSERT INTO `tbl_notif` VALUES (34, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', '1, ', NULL, 10);
INSERT INTO `tbl_notif` VALUES (35, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10);
INSERT INTO `tbl_notif` VALUES (36, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10);
INSERT INTO `tbl_notif` VALUES (37, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10);
INSERT INTO `tbl_notif` VALUES (38, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10);
INSERT INTO `tbl_notif` VALUES (39, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10);
INSERT INTO `tbl_notif` VALUES (40, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', '1, ', NULL, 11);
INSERT INTO `tbl_notif` VALUES (41, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11);
INSERT INTO `tbl_notif` VALUES (42, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11);
INSERT INTO `tbl_notif` VALUES (43, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11);
INSERT INTO `tbl_notif` VALUES (44, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11);
INSERT INTO `tbl_notif` VALUES (45, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11);
INSERT INTO `tbl_notif` VALUES (46, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', '1, ', NULL, 12);
INSERT INTO `tbl_notif` VALUES (47, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12);
INSERT INTO `tbl_notif` VALUES (48, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12);
INSERT INTO `tbl_notif` VALUES (49, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12);
INSERT INTO `tbl_notif` VALUES (50, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12);
INSERT INTO `tbl_notif` VALUES (51, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12);
INSERT INTO `tbl_notif` VALUES (52, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', '1, ', NULL, 13);
INSERT INTO `tbl_notif` VALUES (53, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13);
INSERT INTO `tbl_notif` VALUES (54, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13);
INSERT INTO `tbl_notif` VALUES (55, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13);
INSERT INTO `tbl_notif` VALUES (56, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13);
INSERT INTO `tbl_notif` VALUES (57, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13);
INSERT INTO `tbl_notif` VALUES (58, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', '1, ', NULL, 14);
INSERT INTO `tbl_notif` VALUES (59, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14);
INSERT INTO `tbl_notif` VALUES (60, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14);
INSERT INTO `tbl_notif` VALUES (61, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14);
INSERT INTO `tbl_notif` VALUES (62, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14);
INSERT INTO `tbl_notif` VALUES (63, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14);
INSERT INTO `tbl_notif` VALUES (64, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', '1, ', NULL, 15);
INSERT INTO `tbl_notif` VALUES (65, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15);
INSERT INTO `tbl_notif` VALUES (66, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15);
INSERT INTO `tbl_notif` VALUES (67, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15);
INSERT INTO `tbl_notif` VALUES (68, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15);
INSERT INTO `tbl_notif` VALUES (69, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15);
INSERT INTO `tbl_notif` VALUES (70, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', '1, ', NULL, 16);
INSERT INTO `tbl_notif` VALUES (71, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16);
INSERT INTO `tbl_notif` VALUES (72, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16);
INSERT INTO `tbl_notif` VALUES (73, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16);
INSERT INTO `tbl_notif` VALUES (74, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16);
INSERT INTO `tbl_notif` VALUES (75, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16);
INSERT INTO `tbl_notif` VALUES (76, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', '1, ', NULL, 17);
INSERT INTO `tbl_notif` VALUES (77, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17);
INSERT INTO `tbl_notif` VALUES (78, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17);
INSERT INTO `tbl_notif` VALUES (79, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17);
INSERT INTO `tbl_notif` VALUES (80, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17);
INSERT INTO `tbl_notif` VALUES (81, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17);
INSERT INTO `tbl_notif` VALUES (82, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', '1, ', NULL, 18);
INSERT INTO `tbl_notif` VALUES (83, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18);
INSERT INTO `tbl_notif` VALUES (84, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18);
INSERT INTO `tbl_notif` VALUES (85, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18);
INSERT INTO `tbl_notif` VALUES (86, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18);
INSERT INTO `tbl_notif` VALUES (87, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18);
INSERT INTO `tbl_notif` VALUES (88, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', '1, ', NULL, 29);
INSERT INTO `tbl_notif` VALUES (89, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29);
INSERT INTO `tbl_notif` VALUES (90, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29);
INSERT INTO `tbl_notif` VALUES (91, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29);
INSERT INTO `tbl_notif` VALUES (92, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29);
INSERT INTO `tbl_notif` VALUES (93, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29);
INSERT INTO `tbl_notif` VALUES (94, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', '1, ', NULL, 30);
INSERT INTO `tbl_notif` VALUES (95, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30);
INSERT INTO `tbl_notif` VALUES (96, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30);
INSERT INTO `tbl_notif` VALUES (97, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30);
INSERT INTO `tbl_notif` VALUES (98, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30);
INSERT INTO `tbl_notif` VALUES (99, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30);
INSERT INTO `tbl_notif` VALUES (100, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', '1, ', NULL, 31);
INSERT INTO `tbl_notif` VALUES (101, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31);
INSERT INTO `tbl_notif` VALUES (102, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31);
INSERT INTO `tbl_notif` VALUES (103, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31);
INSERT INTO `tbl_notif` VALUES (104, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31);
INSERT INTO `tbl_notif` VALUES (105, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31);
INSERT INTO `tbl_notif` VALUES (106, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', '1, ', NULL, 32);
INSERT INTO `tbl_notif` VALUES (107, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32);
INSERT INTO `tbl_notif` VALUES (108, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32);
INSERT INTO `tbl_notif` VALUES (109, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32);
INSERT INTO `tbl_notif` VALUES (110, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32);
INSERT INTO `tbl_notif` VALUES (111, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32);
INSERT INTO `tbl_notif` VALUES (112, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', '1, ', NULL, 33);
INSERT INTO `tbl_notif` VALUES (113, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33);
INSERT INTO `tbl_notif` VALUES (114, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33);
INSERT INTO `tbl_notif` VALUES (115, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33);
INSERT INTO `tbl_notif` VALUES (116, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33);
INSERT INTO `tbl_notif` VALUES (117, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33);
INSERT INTO `tbl_notif` VALUES (118, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', '1, ', NULL, 34);
INSERT INTO `tbl_notif` VALUES (119, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34);
INSERT INTO `tbl_notif` VALUES (120, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34);
INSERT INTO `tbl_notif` VALUES (121, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34);
INSERT INTO `tbl_notif` VALUES (122, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34);
INSERT INTO `tbl_notif` VALUES (123, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34);
INSERT INTO `tbl_notif` VALUES (124, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', '1, ', NULL, 35);
INSERT INTO `tbl_notif` VALUES (125, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35);
INSERT INTO `tbl_notif` VALUES (126, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35);
INSERT INTO `tbl_notif` VALUES (127, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35);
INSERT INTO `tbl_notif` VALUES (128, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35);
INSERT INTO `tbl_notif` VALUES (129, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35);
INSERT INTO `tbl_notif` VALUES (130, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', '1, ', NULL, 36);
INSERT INTO `tbl_notif` VALUES (131, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36);
INSERT INTO `tbl_notif` VALUES (132, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36);
INSERT INTO `tbl_notif` VALUES (133, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36);
INSERT INTO `tbl_notif` VALUES (134, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36);
INSERT INTO `tbl_notif` VALUES (135, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36);
INSERT INTO `tbl_notif` VALUES (136, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', '1, ', NULL, 37);
INSERT INTO `tbl_notif` VALUES (137, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37);
INSERT INTO `tbl_notif` VALUES (138, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37);
INSERT INTO `tbl_notif` VALUES (139, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37);
INSERT INTO `tbl_notif` VALUES (140, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37);
INSERT INTO `tbl_notif` VALUES (141, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37);
INSERT INTO `tbl_notif` VALUES (142, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', '1, ', NULL, 38);
INSERT INTO `tbl_notif` VALUES (143, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', NULL, NULL, 38);
INSERT INTO `tbl_notif` VALUES (144, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', NULL, NULL, 38);
INSERT INTO `tbl_notif` VALUES (145, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', NULL, NULL, 38);
INSERT INTO `tbl_notif` VALUES (146, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', NULL, NULL, 38);
INSERT INTO `tbl_notif` VALUES (147, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', NULL, NULL, 38);
INSERT INTO `tbl_notif` VALUES (148, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', '1, ', NULL, 39);
INSERT INTO `tbl_notif` VALUES (149, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', NULL, NULL, 39);
INSERT INTO `tbl_notif` VALUES (150, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', NULL, NULL, 39);
INSERT INTO `tbl_notif` VALUES (151, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', NULL, NULL, 39);
INSERT INTO `tbl_notif` VALUES (152, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', NULL, NULL, 39);
INSERT INTO `tbl_notif` VALUES (153, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', NULL, NULL, 39);
INSERT INTO `tbl_notif` VALUES (154, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', '1, ', NULL, 40);
INSERT INTO `tbl_notif` VALUES (155, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', NULL, NULL, 40);
INSERT INTO `tbl_notif` VALUES (156, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', NULL, NULL, 40);
INSERT INTO `tbl_notif` VALUES (157, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', NULL, NULL, 40);
INSERT INTO `tbl_notif` VALUES (158, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', NULL, NULL, 40);
INSERT INTO `tbl_notif` VALUES (159, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', NULL, NULL, 40);
INSERT INTO `tbl_notif` VALUES (160, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', '1, ', NULL, 41);
INSERT INTO `tbl_notif` VALUES (161, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', NULL, NULL, 41);
INSERT INTO `tbl_notif` VALUES (162, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', NULL, NULL, 41);
INSERT INTO `tbl_notif` VALUES (163, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', NULL, NULL, 41);
INSERT INTO `tbl_notif` VALUES (164, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', NULL, NULL, 41);
INSERT INTO `tbl_notif` VALUES (165, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', NULL, NULL, 41);
INSERT INTO `tbl_notif` VALUES (166, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', '1, ', NULL, 42);
INSERT INTO `tbl_notif` VALUES (167, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', NULL, NULL, 42);
INSERT INTO `tbl_notif` VALUES (168, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', NULL, NULL, 42);
INSERT INTO `tbl_notif` VALUES (169, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', NULL, NULL, 42);
INSERT INTO `tbl_notif` VALUES (170, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', NULL, NULL, 42);
INSERT INTO `tbl_notif` VALUES (171, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', NULL, NULL, 42);
INSERT INTO `tbl_notif` VALUES (172, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', '1, ', NULL, 43);
INSERT INTO `tbl_notif` VALUES (173, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', NULL, NULL, 43);
INSERT INTO `tbl_notif` VALUES (174, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', NULL, NULL, 43);
INSERT INTO `tbl_notif` VALUES (175, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', NULL, NULL, 43);
INSERT INTO `tbl_notif` VALUES (176, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', NULL, NULL, 43);
INSERT INTO `tbl_notif` VALUES (177, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', NULL, NULL, 43);
INSERT INTO `tbl_notif` VALUES (178, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', '1, ', NULL, 44);
INSERT INTO `tbl_notif` VALUES (179, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', NULL, NULL, 44);
INSERT INTO `tbl_notif` VALUES (180, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', NULL, NULL, 44);
INSERT INTO `tbl_notif` VALUES (181, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', NULL, NULL, 44);
INSERT INTO `tbl_notif` VALUES (182, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', NULL, NULL, 44);
INSERT INTO `tbl_notif` VALUES (183, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', NULL, NULL, 44);
INSERT INTO `tbl_notif` VALUES (184, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', '1, ', NULL, 45);
INSERT INTO `tbl_notif` VALUES (185, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', NULL, NULL, 45);
INSERT INTO `tbl_notif` VALUES (186, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', NULL, NULL, 45);
INSERT INTO `tbl_notif` VALUES (187, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', NULL, NULL, 45);
INSERT INTO `tbl_notif` VALUES (188, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', NULL, NULL, 45);
INSERT INTO `tbl_notif` VALUES (189, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', NULL, NULL, 45);
INSERT INTO `tbl_notif` VALUES (190, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', '1, ', NULL, 46);
INSERT INTO `tbl_notif` VALUES (191, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', NULL, NULL, 46);
INSERT INTO `tbl_notif` VALUES (192, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', NULL, NULL, 46);
INSERT INTO `tbl_notif` VALUES (193, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', NULL, NULL, 46);
INSERT INTO `tbl_notif` VALUES (194, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', NULL, NULL, 46);
INSERT INTO `tbl_notif` VALUES (195, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', NULL, NULL, 46);
INSERT INTO `tbl_notif` VALUES (196, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', '1, ', NULL, 47);
INSERT INTO `tbl_notif` VALUES (197, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', NULL, NULL, 47);
INSERT INTO `tbl_notif` VALUES (198, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', NULL, NULL, 47);
INSERT INTO `tbl_notif` VALUES (199, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', NULL, NULL, 47);
INSERT INTO `tbl_notif` VALUES (200, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', NULL, NULL, 47);
INSERT INTO `tbl_notif` VALUES (201, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', NULL, NULL, 47);
INSERT INTO `tbl_notif` VALUES (202, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', '1, ', NULL, 48);
INSERT INTO `tbl_notif` VALUES (203, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', NULL, NULL, 48);
INSERT INTO `tbl_notif` VALUES (204, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', NULL, NULL, 48);
INSERT INTO `tbl_notif` VALUES (205, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', NULL, NULL, 48);
INSERT INTO `tbl_notif` VALUES (206, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', NULL, NULL, 48);
INSERT INTO `tbl_notif` VALUES (207, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', NULL, NULL, 48);
INSERT INTO `tbl_notif` VALUES (208, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', '1, ', NULL, 49);
INSERT INTO `tbl_notif` VALUES (209, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', NULL, NULL, 49);
INSERT INTO `tbl_notif` VALUES (210, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', NULL, NULL, 49);
INSERT INTO `tbl_notif` VALUES (211, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', NULL, NULL, 49);
INSERT INTO `tbl_notif` VALUES (212, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', NULL, NULL, 49);
INSERT INTO `tbl_notif` VALUES (213, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', NULL, NULL, 49);
INSERT INTO `tbl_notif` VALUES (214, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', '1, ', NULL, 50);
INSERT INTO `tbl_notif` VALUES (215, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', NULL, NULL, 50);
INSERT INTO `tbl_notif` VALUES (216, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', NULL, NULL, 50);
INSERT INTO `tbl_notif` VALUES (217, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', NULL, NULL, 50);
INSERT INTO `tbl_notif` VALUES (218, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', NULL, NULL, 50);
INSERT INTO `tbl_notif` VALUES (219, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', NULL, NULL, 50);
INSERT INTO `tbl_notif` VALUES (220, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', '1, ', NULL, 51);
INSERT INTO `tbl_notif` VALUES (221, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', NULL, NULL, 51);
INSERT INTO `tbl_notif` VALUES (222, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', NULL, NULL, 51);
INSERT INTO `tbl_notif` VALUES (223, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', NULL, NULL, 51);
INSERT INTO `tbl_notif` VALUES (224, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', NULL, NULL, 51);
INSERT INTO `tbl_notif` VALUES (225, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', NULL, NULL, 51);
INSERT INTO `tbl_notif` VALUES (226, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', '1, ', NULL, 52);
INSERT INTO `tbl_notif` VALUES (227, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', NULL, NULL, 52);
INSERT INTO `tbl_notif` VALUES (228, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', NULL, NULL, 52);
INSERT INTO `tbl_notif` VALUES (229, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', NULL, NULL, 52);
INSERT INTO `tbl_notif` VALUES (230, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', NULL, NULL, 52);
INSERT INTO `tbl_notif` VALUES (231, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', NULL, NULL, 52);
INSERT INTO `tbl_notif` VALUES (232, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', '1, ', NULL, 53);
INSERT INTO `tbl_notif` VALUES (233, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', NULL, NULL, 53);
INSERT INTO `tbl_notif` VALUES (234, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', NULL, NULL, 53);
INSERT INTO `tbl_notif` VALUES (235, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', NULL, NULL, 53);
INSERT INTO `tbl_notif` VALUES (236, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', NULL, NULL, 53);
INSERT INTO `tbl_notif` VALUES (237, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', NULL, NULL, 53);
INSERT INTO `tbl_notif` VALUES (238, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', '1, ', NULL, 54);
INSERT INTO `tbl_notif` VALUES (239, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', NULL, NULL, 54);
INSERT INTO `tbl_notif` VALUES (240, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', NULL, NULL, 54);
INSERT INTO `tbl_notif` VALUES (241, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', NULL, NULL, 54);
INSERT INTO `tbl_notif` VALUES (242, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', NULL, NULL, 54);
INSERT INTO `tbl_notif` VALUES (243, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', NULL, NULL, 54);
INSERT INTO `tbl_notif` VALUES (244, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', '1, ', NULL, 55);
INSERT INTO `tbl_notif` VALUES (245, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', NULL, NULL, 55);
INSERT INTO `tbl_notif` VALUES (246, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', NULL, NULL, 55);
INSERT INTO `tbl_notif` VALUES (247, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', NULL, NULL, 55);
INSERT INTO `tbl_notif` VALUES (248, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', NULL, NULL, 55);
INSERT INTO `tbl_notif` VALUES (249, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', NULL, NULL, 55);
INSERT INTO `tbl_notif` VALUES (250, 8, 1, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', '1, ', NULL, 56);
INSERT INTO `tbl_notif` VALUES (251, 8, 2, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', NULL, NULL, 56);
INSERT INTO `tbl_notif` VALUES (252, 8, 3, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', NULL, NULL, 56);
INSERT INTO `tbl_notif` VALUES (253, 8, 4, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', NULL, NULL, 56);
INSERT INTO `tbl_notif` VALUES (254, 8, 5, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', NULL, NULL, 56);
INSERT INTO `tbl_notif` VALUES (255, 8, 6, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', NULL, NULL, 56);
INSERT INTO `tbl_notif` VALUES (256, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', '1, ', NULL, 59);
INSERT INTO `tbl_notif` VALUES (257, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', NULL, NULL, 59);
INSERT INTO `tbl_notif` VALUES (258, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', NULL, NULL, 59);
INSERT INTO `tbl_notif` VALUES (259, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', NULL, NULL, 59);
INSERT INTO `tbl_notif` VALUES (260, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', NULL, NULL, 59);
INSERT INTO `tbl_notif` VALUES (261, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', NULL, NULL, 59);
INSERT INTO `tbl_notif` VALUES (262, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', '1, ', NULL, 61);
INSERT INTO `tbl_notif` VALUES (263, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', NULL, NULL, 61);
INSERT INTO `tbl_notif` VALUES (264, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', NULL, NULL, 61);
INSERT INTO `tbl_notif` VALUES (265, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', NULL, NULL, 61);
INSERT INTO `tbl_notif` VALUES (266, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', NULL, NULL, 61);
INSERT INTO `tbl_notif` VALUES (267, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', NULL, NULL, 61);
INSERT INTO `tbl_notif` VALUES (268, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', '1, ', NULL, 62);
INSERT INTO `tbl_notif` VALUES (269, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', NULL, NULL, 62);
INSERT INTO `tbl_notif` VALUES (270, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', NULL, NULL, 62);
INSERT INTO `tbl_notif` VALUES (271, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', NULL, NULL, 62);
INSERT INTO `tbl_notif` VALUES (272, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', NULL, NULL, 62);
INSERT INTO `tbl_notif` VALUES (273, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', NULL, NULL, 62);
INSERT INTO `tbl_notif` VALUES (274, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', '1, ', NULL, 63);
INSERT INTO `tbl_notif` VALUES (275, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (276, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (277, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (278, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (279, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (280, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', '1, ', NULL, 64);
INSERT INTO `tbl_notif` VALUES (281, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (282, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (283, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (284, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (285, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (286, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', '1, ', NULL, 63);
INSERT INTO `tbl_notif` VALUES (287, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (288, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (289, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (290, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (291, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (292, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', '1, ', NULL, 64);
INSERT INTO `tbl_notif` VALUES (293, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (294, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (295, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (296, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (297, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (298, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', '1, ', NULL, 65);
INSERT INTO `tbl_notif` VALUES (299, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', NULL, NULL, 65);
INSERT INTO `tbl_notif` VALUES (300, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', NULL, NULL, 65);
INSERT INTO `tbl_notif` VALUES (301, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', NULL, NULL, 65);
INSERT INTO `tbl_notif` VALUES (302, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', NULL, NULL, 65);
INSERT INTO `tbl_notif` VALUES (303, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', NULL, NULL, 65);
INSERT INTO `tbl_notif` VALUES (304, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', '1, ', NULL, 66);
INSERT INTO `tbl_notif` VALUES (305, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', NULL, NULL, 66);
INSERT INTO `tbl_notif` VALUES (306, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', NULL, NULL, 66);
INSERT INTO `tbl_notif` VALUES (307, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', NULL, NULL, 66);
INSERT INTO `tbl_notif` VALUES (308, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', NULL, NULL, 66);
INSERT INTO `tbl_notif` VALUES (309, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', NULL, NULL, 66);
INSERT INTO `tbl_notif` VALUES (310, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', '1, ', NULL, 67);
INSERT INTO `tbl_notif` VALUES (311, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', NULL, NULL, 67);
INSERT INTO `tbl_notif` VALUES (312, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', NULL, NULL, 67);
INSERT INTO `tbl_notif` VALUES (313, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', NULL, NULL, 67);
INSERT INTO `tbl_notif` VALUES (314, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', NULL, NULL, 67);
INSERT INTO `tbl_notif` VALUES (315, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', NULL, NULL, 67);
INSERT INTO `tbl_notif` VALUES (316, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', '1, ', NULL, 68);
INSERT INTO `tbl_notif` VALUES (317, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', NULL, NULL, 68);
INSERT INTO `tbl_notif` VALUES (318, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', NULL, NULL, 68);
INSERT INTO `tbl_notif` VALUES (319, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', NULL, NULL, 68);
INSERT INTO `tbl_notif` VALUES (320, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', NULL, NULL, 68);
INSERT INTO `tbl_notif` VALUES (321, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', NULL, NULL, 68);
INSERT INTO `tbl_notif` VALUES (322, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', '1, ', NULL, 69);
INSERT INTO `tbl_notif` VALUES (323, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', NULL, NULL, 69);
INSERT INTO `tbl_notif` VALUES (324, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', NULL, NULL, 69);
INSERT INTO `tbl_notif` VALUES (325, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', NULL, NULL, 69);
INSERT INTO `tbl_notif` VALUES (326, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', NULL, NULL, 69);
INSERT INTO `tbl_notif` VALUES (327, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', NULL, NULL, 69);
INSERT INTO `tbl_notif` VALUES (328, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', '1, ', NULL, 70);
INSERT INTO `tbl_notif` VALUES (329, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', NULL, NULL, 70);
INSERT INTO `tbl_notif` VALUES (330, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', NULL, NULL, 70);
INSERT INTO `tbl_notif` VALUES (331, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', NULL, NULL, 70);
INSERT INTO `tbl_notif` VALUES (332, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', NULL, NULL, 70);
INSERT INTO `tbl_notif` VALUES (333, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', NULL, NULL, 70);
INSERT INTO `tbl_notif` VALUES (334, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', '1, ', NULL, 71);
INSERT INTO `tbl_notif` VALUES (335, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', NULL, NULL, 71);
INSERT INTO `tbl_notif` VALUES (336, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', NULL, NULL, 71);
INSERT INTO `tbl_notif` VALUES (337, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', NULL, NULL, 71);
INSERT INTO `tbl_notif` VALUES (338, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', NULL, NULL, 71);
INSERT INTO `tbl_notif` VALUES (339, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', NULL, NULL, 71);
INSERT INTO `tbl_notif` VALUES (340, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', '1, ', NULL, 72);
INSERT INTO `tbl_notif` VALUES (341, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', NULL, NULL, 72);
INSERT INTO `tbl_notif` VALUES (342, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', NULL, NULL, 72);
INSERT INTO `tbl_notif` VALUES (343, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', NULL, NULL, 72);
INSERT INTO `tbl_notif` VALUES (344, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', NULL, NULL, 72);
INSERT INTO `tbl_notif` VALUES (345, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', NULL, NULL, 72);
INSERT INTO `tbl_notif` VALUES (346, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', '1, ', NULL, 73);
INSERT INTO `tbl_notif` VALUES (347, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', NULL, NULL, 73);
INSERT INTO `tbl_notif` VALUES (348, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', NULL, NULL, 73);
INSERT INTO `tbl_notif` VALUES (349, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', NULL, NULL, 73);
INSERT INTO `tbl_notif` VALUES (350, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', NULL, NULL, 73);
INSERT INTO `tbl_notif` VALUES (351, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', NULL, NULL, 73);
INSERT INTO `tbl_notif` VALUES (352, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', '1, ', NULL, 74);
INSERT INTO `tbl_notif` VALUES (353, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', NULL, NULL, 74);
INSERT INTO `tbl_notif` VALUES (354, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', NULL, NULL, 74);
INSERT INTO `tbl_notif` VALUES (355, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', NULL, NULL, 74);
INSERT INTO `tbl_notif` VALUES (356, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', NULL, NULL, 74);
INSERT INTO `tbl_notif` VALUES (357, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', NULL, NULL, 74);
INSERT INTO `tbl_notif` VALUES (358, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', '1, ', NULL, 75);
INSERT INTO `tbl_notif` VALUES (359, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', NULL, NULL, 75);
INSERT INTO `tbl_notif` VALUES (360, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', NULL, NULL, 75);
INSERT INTO `tbl_notif` VALUES (361, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', NULL, NULL, 75);
INSERT INTO `tbl_notif` VALUES (362, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', NULL, NULL, 75);
INSERT INTO `tbl_notif` VALUES (363, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', NULL, NULL, 75);
INSERT INTO `tbl_notif` VALUES (364, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', '1, ', NULL, 76);
INSERT INTO `tbl_notif` VALUES (365, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', NULL, NULL, 76);
INSERT INTO `tbl_notif` VALUES (366, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', NULL, NULL, 76);
INSERT INTO `tbl_notif` VALUES (367, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', NULL, NULL, 76);
INSERT INTO `tbl_notif` VALUES (368, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', NULL, NULL, 76);
INSERT INTO `tbl_notif` VALUES (369, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', NULL, NULL, 76);
INSERT INTO `tbl_notif` VALUES (370, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', '1, ', NULL, 77);
INSERT INTO `tbl_notif` VALUES (371, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', NULL, NULL, 77);
INSERT INTO `tbl_notif` VALUES (372, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', NULL, NULL, 77);
INSERT INTO `tbl_notif` VALUES (373, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', NULL, NULL, 77);
INSERT INTO `tbl_notif` VALUES (374, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', NULL, NULL, 77);
INSERT INTO `tbl_notif` VALUES (375, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', NULL, NULL, 77);
INSERT INTO `tbl_notif` VALUES (376, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', '1, ', NULL, 78);
INSERT INTO `tbl_notif` VALUES (377, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', NULL, NULL, 78);
INSERT INTO `tbl_notif` VALUES (378, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', NULL, NULL, 78);
INSERT INTO `tbl_notif` VALUES (379, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', NULL, NULL, 78);
INSERT INTO `tbl_notif` VALUES (380, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', NULL, NULL, 78);
INSERT INTO `tbl_notif` VALUES (381, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', NULL, NULL, 78);
INSERT INTO `tbl_notif` VALUES (382, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', '1, ', NULL, 79);
INSERT INTO `tbl_notif` VALUES (383, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', NULL, NULL, 79);
INSERT INTO `tbl_notif` VALUES (384, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', NULL, NULL, 79);
INSERT INTO `tbl_notif` VALUES (385, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', NULL, NULL, 79);
INSERT INTO `tbl_notif` VALUES (386, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', NULL, NULL, 79);
INSERT INTO `tbl_notif` VALUES (387, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', NULL, NULL, 79);
INSERT INTO `tbl_notif` VALUES (388, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', '1, ', NULL, 80);
INSERT INTO `tbl_notif` VALUES (389, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', NULL, NULL, 80);
INSERT INTO `tbl_notif` VALUES (390, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', NULL, NULL, 80);
INSERT INTO `tbl_notif` VALUES (391, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', NULL, NULL, 80);
INSERT INTO `tbl_notif` VALUES (392, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', NULL, NULL, 80);
INSERT INTO `tbl_notif` VALUES (393, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', NULL, NULL, 80);
INSERT INTO `tbl_notif` VALUES (394, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', '1, ', NULL, 81);
INSERT INTO `tbl_notif` VALUES (395, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', NULL, NULL, 81);
INSERT INTO `tbl_notif` VALUES (396, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', NULL, NULL, 81);
INSERT INTO `tbl_notif` VALUES (397, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', NULL, NULL, 81);
INSERT INTO `tbl_notif` VALUES (398, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', NULL, NULL, 81);
INSERT INTO `tbl_notif` VALUES (399, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', NULL, NULL, 81);
INSERT INTO `tbl_notif` VALUES (400, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', '1, ', NULL, 82);
INSERT INTO `tbl_notif` VALUES (401, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', NULL, NULL, 82);
INSERT INTO `tbl_notif` VALUES (402, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', NULL, NULL, 82);
INSERT INTO `tbl_notif` VALUES (403, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', NULL, NULL, 82);
INSERT INTO `tbl_notif` VALUES (404, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', NULL, NULL, 82);
INSERT INTO `tbl_notif` VALUES (405, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', NULL, NULL, 82);
INSERT INTO `tbl_notif` VALUES (406, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', '1, ', NULL, 83);
INSERT INTO `tbl_notif` VALUES (407, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (408, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (409, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (410, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (411, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (412, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', '1, ', NULL, 84);
INSERT INTO `tbl_notif` VALUES (413, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', NULL, NULL, 84);
INSERT INTO `tbl_notif` VALUES (414, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', NULL, NULL, 84);
INSERT INTO `tbl_notif` VALUES (415, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', NULL, NULL, 84);
INSERT INTO `tbl_notif` VALUES (416, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', NULL, NULL, 84);
INSERT INTO `tbl_notif` VALUES (417, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', NULL, NULL, 84);
INSERT INTO `tbl_notif` VALUES (418, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', '1, ', NULL, 85);
INSERT INTO `tbl_notif` VALUES (419, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', NULL, NULL, 85);
INSERT INTO `tbl_notif` VALUES (420, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', NULL, NULL, 85);
INSERT INTO `tbl_notif` VALUES (421, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', NULL, NULL, 85);
INSERT INTO `tbl_notif` VALUES (422, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', NULL, NULL, 85);
INSERT INTO `tbl_notif` VALUES (423, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', NULL, NULL, 85);
INSERT INTO `tbl_notif` VALUES (424, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', '1, ', NULL, 86);
INSERT INTO `tbl_notif` VALUES (425, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', NULL, NULL, 86);
INSERT INTO `tbl_notif` VALUES (426, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', NULL, NULL, 86);
INSERT INTO `tbl_notif` VALUES (427, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', NULL, NULL, 86);
INSERT INTO `tbl_notif` VALUES (428, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', NULL, NULL, 86);
INSERT INTO `tbl_notif` VALUES (429, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', NULL, NULL, 86);
INSERT INTO `tbl_notif` VALUES (430, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', '1, ', NULL, 88);
INSERT INTO `tbl_notif` VALUES (431, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', NULL, NULL, 88);
INSERT INTO `tbl_notif` VALUES (432, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', NULL, NULL, 88);
INSERT INTO `tbl_notif` VALUES (433, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', NULL, NULL, 88);
INSERT INTO `tbl_notif` VALUES (434, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', NULL, NULL, 88);
INSERT INTO `tbl_notif` VALUES (435, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', NULL, NULL, 88);
INSERT INTO `tbl_notif` VALUES (436, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', '1, ', NULL, 89);
INSERT INTO `tbl_notif` VALUES (437, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', NULL, NULL, 89);
INSERT INTO `tbl_notif` VALUES (438, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', NULL, NULL, 89);
INSERT INTO `tbl_notif` VALUES (439, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', NULL, NULL, 89);
INSERT INTO `tbl_notif` VALUES (440, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', NULL, NULL, 89);
INSERT INTO `tbl_notif` VALUES (441, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', NULL, NULL, 89);
INSERT INTO `tbl_notif` VALUES (442, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', '1, ', NULL, 90);
INSERT INTO `tbl_notif` VALUES (443, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', NULL, NULL, 90);
INSERT INTO `tbl_notif` VALUES (444, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', NULL, NULL, 90);
INSERT INTO `tbl_notif` VALUES (445, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', NULL, NULL, 90);
INSERT INTO `tbl_notif` VALUES (446, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', NULL, NULL, 90);
INSERT INTO `tbl_notif` VALUES (447, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', NULL, NULL, 90);
INSERT INTO `tbl_notif` VALUES (448, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', '1, ', NULL, 83);
INSERT INTO `tbl_notif` VALUES (449, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (450, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (451, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (452, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (453, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (454, 9, 1, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', '1, ', NULL, 93);
INSERT INTO `tbl_notif` VALUES (455, 9, 2, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', NULL, NULL, 93);
INSERT INTO `tbl_notif` VALUES (456, 9, 3, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', NULL, NULL, 93);
INSERT INTO `tbl_notif` VALUES (457, 9, 4, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', NULL, NULL, 93);
INSERT INTO `tbl_notif` VALUES (458, 9, 5, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', NULL, NULL, 93);
INSERT INTO `tbl_notif` VALUES (459, 9, 6, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', NULL, NULL, 93);
INSERT INTO `tbl_notif` VALUES (460, 9, 1, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', '1, ', NULL, 94);
INSERT INTO `tbl_notif` VALUES (461, 9, 2, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', NULL, NULL, 94);
INSERT INTO `tbl_notif` VALUES (462, 9, 3, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', NULL, NULL, 94);
INSERT INTO `tbl_notif` VALUES (463, 9, 4, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', NULL, NULL, 94);
INSERT INTO `tbl_notif` VALUES (464, 9, 5, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', NULL, NULL, 94);
INSERT INTO `tbl_notif` VALUES (465, 9, 6, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', NULL, NULL, 94);
INSERT INTO `tbl_notif` VALUES (466, 9, 1, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', '1, ', NULL, 95);
INSERT INTO `tbl_notif` VALUES (467, 9, 2, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', NULL, NULL, 95);
INSERT INTO `tbl_notif` VALUES (468, 9, 3, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', NULL, NULL, 95);
INSERT INTO `tbl_notif` VALUES (469, 9, 4, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', NULL, NULL, 95);
INSERT INTO `tbl_notif` VALUES (470, 9, 5, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', NULL, NULL, 95);
INSERT INTO `tbl_notif` VALUES (471, 9, 6, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', NULL, NULL, 95);
INSERT INTO `tbl_notif` VALUES (472, 20, 1, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', '1, ', NULL, 99);
INSERT INTO `tbl_notif` VALUES (473, 20, 2, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', NULL, NULL, 99);
INSERT INTO `tbl_notif` VALUES (474, 20, 3, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', NULL, NULL, 99);
INSERT INTO `tbl_notif` VALUES (475, 20, 4, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', NULL, NULL, 99);
INSERT INTO `tbl_notif` VALUES (476, 20, 5, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', NULL, NULL, 99);
INSERT INTO `tbl_notif` VALUES (477, 20, 6, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', NULL, NULL, 99);
INSERT INTO `tbl_notif` VALUES (478, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', '1, ', NULL, 101);
INSERT INTO `tbl_notif` VALUES (479, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', NULL, NULL, 101);
INSERT INTO `tbl_notif` VALUES (480, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', NULL, NULL, 101);
INSERT INTO `tbl_notif` VALUES (481, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', NULL, NULL, 101);
INSERT INTO `tbl_notif` VALUES (482, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', NULL, NULL, 101);
INSERT INTO `tbl_notif` VALUES (483, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', NULL, NULL, 101);
INSERT INTO `tbl_notif` VALUES (484, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', '1, ', NULL, 108);
INSERT INTO `tbl_notif` VALUES (485, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', NULL, NULL, 108);
INSERT INTO `tbl_notif` VALUES (486, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', NULL, NULL, 108);
INSERT INTO `tbl_notif` VALUES (487, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', NULL, NULL, 108);
INSERT INTO `tbl_notif` VALUES (488, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', NULL, NULL, 108);
INSERT INTO `tbl_notif` VALUES (489, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', NULL, NULL, 108);
INSERT INTO `tbl_notif` VALUES (490, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', '1, ', NULL, 109);
INSERT INTO `tbl_notif` VALUES (491, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', NULL, NULL, 109);
INSERT INTO `tbl_notif` VALUES (492, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', NULL, NULL, 109);
INSERT INTO `tbl_notif` VALUES (493, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', NULL, NULL, 109);
INSERT INTO `tbl_notif` VALUES (494, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', NULL, NULL, 109);
INSERT INTO `tbl_notif` VALUES (495, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', NULL, NULL, 109);
INSERT INTO `tbl_notif` VALUES (496, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', '1, ', NULL, 110);
INSERT INTO `tbl_notif` VALUES (497, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', NULL, NULL, 110);
INSERT INTO `tbl_notif` VALUES (498, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', NULL, NULL, 110);
INSERT INTO `tbl_notif` VALUES (499, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', NULL, NULL, 110);
INSERT INTO `tbl_notif` VALUES (500, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', NULL, NULL, 110);
INSERT INTO `tbl_notif` VALUES (501, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', NULL, NULL, 110);
INSERT INTO `tbl_notif` VALUES (502, 14, 1, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', '1, ', NULL, 112);
INSERT INTO `tbl_notif` VALUES (503, 14, 2, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', NULL, NULL, 112);
INSERT INTO `tbl_notif` VALUES (504, 14, 3, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', NULL, NULL, 112);
INSERT INTO `tbl_notif` VALUES (505, 14, 4, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', NULL, NULL, 112);
INSERT INTO `tbl_notif` VALUES (506, 14, 5, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', NULL, NULL, 112);
INSERT INTO `tbl_notif` VALUES (507, 14, 6, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', NULL, NULL, 112);
INSERT INTO `tbl_notif` VALUES (508, 13, 1, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', '1, ', NULL, 113);
INSERT INTO `tbl_notif` VALUES (509, 13, 2, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', NULL, NULL, 113);
INSERT INTO `tbl_notif` VALUES (510, 13, 3, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', NULL, NULL, 113);
INSERT INTO `tbl_notif` VALUES (511, 13, 4, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', NULL, NULL, 113);
INSERT INTO `tbl_notif` VALUES (512, 13, 5, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', NULL, NULL, 113);
INSERT INTO `tbl_notif` VALUES (513, 13, 6, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', NULL, NULL, 113);
INSERT INTO `tbl_notif` VALUES (514, 15, 1, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', '1, ', NULL, 114);
INSERT INTO `tbl_notif` VALUES (515, 15, 2, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', NULL, NULL, 114);
INSERT INTO `tbl_notif` VALUES (516, 15, 3, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', NULL, NULL, 114);
INSERT INTO `tbl_notif` VALUES (517, 15, 4, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', NULL, NULL, 114);
INSERT INTO `tbl_notif` VALUES (518, 15, 5, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', NULL, NULL, 114);
INSERT INTO `tbl_notif` VALUES (519, 15, 6, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', NULL, NULL, 114);
INSERT INTO `tbl_notif` VALUES (520, 16, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', '1, ', NULL, 115);
INSERT INTO `tbl_notif` VALUES (521, 16, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', NULL, NULL, 115);
INSERT INTO `tbl_notif` VALUES (522, 16, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', NULL, NULL, 115);
INSERT INTO `tbl_notif` VALUES (523, 16, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', NULL, NULL, 115);
INSERT INTO `tbl_notif` VALUES (524, 16, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', NULL, NULL, 115);
INSERT INTO `tbl_notif` VALUES (525, 16, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', NULL, NULL, 115);
INSERT INTO `tbl_notif` VALUES (526, 17, 1, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', '1, ', NULL, 116);
INSERT INTO `tbl_notif` VALUES (527, 17, 2, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', NULL, NULL, 116);
INSERT INTO `tbl_notif` VALUES (528, 17, 3, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', NULL, NULL, 116);
INSERT INTO `tbl_notif` VALUES (529, 17, 4, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', NULL, NULL, 116);
INSERT INTO `tbl_notif` VALUES (530, 17, 5, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', NULL, NULL, 116);
INSERT INTO `tbl_notif` VALUES (531, 17, 6, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', NULL, NULL, 116);
INSERT INTO `tbl_notif` VALUES (532, 18, 1, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', '1, ', NULL, 117);
INSERT INTO `tbl_notif` VALUES (533, 18, 2, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', NULL, NULL, 117);
INSERT INTO `tbl_notif` VALUES (534, 18, 3, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', NULL, NULL, 117);
INSERT INTO `tbl_notif` VALUES (535, 18, 4, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', NULL, NULL, 117);
INSERT INTO `tbl_notif` VALUES (536, 18, 5, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', NULL, NULL, 117);
INSERT INTO `tbl_notif` VALUES (537, 18, 6, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', NULL, NULL, 117);
INSERT INTO `tbl_notif` VALUES (538, 19, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', '1, ', NULL, 118);
INSERT INTO `tbl_notif` VALUES (539, 19, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', NULL, NULL, 118);
INSERT INTO `tbl_notif` VALUES (540, 19, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', NULL, NULL, 118);
INSERT INTO `tbl_notif` VALUES (541, 19, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', NULL, NULL, 118);
INSERT INTO `tbl_notif` VALUES (542, 19, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', NULL, NULL, 118);
INSERT INTO `tbl_notif` VALUES (543, 19, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', NULL, NULL, 118);
INSERT INTO `tbl_notif` VALUES (544, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', '1, ', NULL, 120);
INSERT INTO `tbl_notif` VALUES (545, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', NULL, NULL, 120);
INSERT INTO `tbl_notif` VALUES (546, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', NULL, NULL, 120);
INSERT INTO `tbl_notif` VALUES (547, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', NULL, NULL, 120);
INSERT INTO `tbl_notif` VALUES (548, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', NULL, NULL, 120);
INSERT INTO `tbl_notif` VALUES (549, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', NULL, NULL, 120);
INSERT INTO `tbl_notif` VALUES (550, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', '1, ', NULL, 121);
INSERT INTO `tbl_notif` VALUES (551, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', NULL, NULL, 121);
INSERT INTO `tbl_notif` VALUES (552, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', NULL, NULL, 121);
INSERT INTO `tbl_notif` VALUES (553, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', NULL, NULL, 121);
INSERT INTO `tbl_notif` VALUES (554, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', NULL, NULL, 121);
INSERT INTO `tbl_notif` VALUES (555, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', NULL, NULL, 121);
INSERT INTO `tbl_notif` VALUES (556, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', '1, ', NULL, 122);
INSERT INTO `tbl_notif` VALUES (557, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', NULL, NULL, 122);
INSERT INTO `tbl_notif` VALUES (558, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', NULL, NULL, 122);
INSERT INTO `tbl_notif` VALUES (559, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', NULL, NULL, 122);
INSERT INTO `tbl_notif` VALUES (560, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', NULL, NULL, 122);
INSERT INTO `tbl_notif` VALUES (561, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', NULL, NULL, 122);
INSERT INTO `tbl_notif` VALUES (562, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', '1, ', NULL, 123);
INSERT INTO `tbl_notif` VALUES (563, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', NULL, NULL, 123);
INSERT INTO `tbl_notif` VALUES (564, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', NULL, NULL, 123);
INSERT INTO `tbl_notif` VALUES (565, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', NULL, NULL, 123);
INSERT INTO `tbl_notif` VALUES (566, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', NULL, NULL, 123);
INSERT INTO `tbl_notif` VALUES (567, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', NULL, NULL, 123);
INSERT INTO `tbl_notif` VALUES (568, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', '1, ', NULL, 124);
INSERT INTO `tbl_notif` VALUES (569, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', NULL, NULL, 124);
INSERT INTO `tbl_notif` VALUES (570, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', NULL, NULL, 124);
INSERT INTO `tbl_notif` VALUES (571, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', NULL, NULL, 124);
INSERT INTO `tbl_notif` VALUES (572, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', NULL, NULL, 124);
INSERT INTO `tbl_notif` VALUES (573, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', NULL, NULL, 124);
INSERT INTO `tbl_notif` VALUES (574, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', '1, ', NULL, 125);
INSERT INTO `tbl_notif` VALUES (575, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', NULL, NULL, 125);
INSERT INTO `tbl_notif` VALUES (576, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', NULL, NULL, 125);
INSERT INTO `tbl_notif` VALUES (577, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', NULL, NULL, 125);
INSERT INTO `tbl_notif` VALUES (578, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', NULL, NULL, 125);
INSERT INTO `tbl_notif` VALUES (579, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', NULL, NULL, 125);
INSERT INTO `tbl_notif` VALUES (580, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', '1, ', NULL, 126);
INSERT INTO `tbl_notif` VALUES (581, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', NULL, NULL, 126);
INSERT INTO `tbl_notif` VALUES (582, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', NULL, NULL, 126);
INSERT INTO `tbl_notif` VALUES (583, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', NULL, NULL, 126);
INSERT INTO `tbl_notif` VALUES (584, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', NULL, NULL, 126);
INSERT INTO `tbl_notif` VALUES (585, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', NULL, NULL, 126);
INSERT INTO `tbl_notif` VALUES (586, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', '1, ', NULL, 127);
INSERT INTO `tbl_notif` VALUES (587, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', NULL, NULL, 127);
INSERT INTO `tbl_notif` VALUES (588, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', NULL, NULL, 127);
INSERT INTO `tbl_notif` VALUES (589, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', NULL, NULL, 127);
INSERT INTO `tbl_notif` VALUES (590, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', NULL, NULL, 127);
INSERT INTO `tbl_notif` VALUES (591, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', NULL, NULL, 127);
INSERT INTO `tbl_notif` VALUES (592, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', '1, ', NULL, 128);
INSERT INTO `tbl_notif` VALUES (593, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', NULL, NULL, 128);
INSERT INTO `tbl_notif` VALUES (594, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', NULL, NULL, 128);
INSERT INTO `tbl_notif` VALUES (595, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', NULL, NULL, 128);
INSERT INTO `tbl_notif` VALUES (596, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', NULL, NULL, 128);
INSERT INTO `tbl_notif` VALUES (597, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', NULL, NULL, 128);
INSERT INTO `tbl_notif` VALUES (598, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', '1, ', NULL, 129);
INSERT INTO `tbl_notif` VALUES (599, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', NULL, NULL, 129);
INSERT INTO `tbl_notif` VALUES (600, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', NULL, NULL, 129);
INSERT INTO `tbl_notif` VALUES (601, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', NULL, NULL, 129);
INSERT INTO `tbl_notif` VALUES (602, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', NULL, NULL, 129);
INSERT INTO `tbl_notif` VALUES (603, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', NULL, NULL, 129);
INSERT INTO `tbl_notif` VALUES (604, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', '1, ', NULL, 130);
INSERT INTO `tbl_notif` VALUES (605, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', NULL, NULL, 130);
INSERT INTO `tbl_notif` VALUES (606, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', NULL, NULL, 130);
INSERT INTO `tbl_notif` VALUES (607, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', NULL, NULL, 130);
INSERT INTO `tbl_notif` VALUES (608, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', NULL, NULL, 130);
INSERT INTO `tbl_notif` VALUES (609, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', NULL, NULL, 130);
INSERT INTO `tbl_notif` VALUES (610, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', '1, ', NULL, 131);
INSERT INTO `tbl_notif` VALUES (611, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', NULL, NULL, 131);
INSERT INTO `tbl_notif` VALUES (612, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', NULL, NULL, 131);
INSERT INTO `tbl_notif` VALUES (613, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', NULL, NULL, 131);
INSERT INTO `tbl_notif` VALUES (614, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', NULL, NULL, 131);
INSERT INTO `tbl_notif` VALUES (615, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', NULL, NULL, 131);
INSERT INTO `tbl_notif` VALUES (616, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', '1, ', NULL, 132);
INSERT INTO `tbl_notif` VALUES (617, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', NULL, NULL, 132);
INSERT INTO `tbl_notif` VALUES (618, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', NULL, NULL, 132);
INSERT INTO `tbl_notif` VALUES (619, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', NULL, NULL, 132);
INSERT INTO `tbl_notif` VALUES (620, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', NULL, NULL, 132);
INSERT INTO `tbl_notif` VALUES (621, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', NULL, NULL, 132);
INSERT INTO `tbl_notif` VALUES (622, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', '1, ', NULL, 133);
INSERT INTO `tbl_notif` VALUES (623, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', NULL, NULL, 133);
INSERT INTO `tbl_notif` VALUES (624, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', NULL, NULL, 133);
INSERT INTO `tbl_notif` VALUES (625, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', NULL, NULL, 133);
INSERT INTO `tbl_notif` VALUES (626, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', NULL, NULL, 133);
INSERT INTO `tbl_notif` VALUES (627, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', NULL, NULL, 133);
INSERT INTO `tbl_notif` VALUES (628, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', '1, ', NULL, 134);
INSERT INTO `tbl_notif` VALUES (629, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', NULL, NULL, 134);
INSERT INTO `tbl_notif` VALUES (630, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', NULL, NULL, 134);
INSERT INTO `tbl_notif` VALUES (631, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', NULL, NULL, 134);
INSERT INTO `tbl_notif` VALUES (632, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', NULL, NULL, 134);
INSERT INTO `tbl_notif` VALUES (633, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', NULL, NULL, 134);
INSERT INTO `tbl_notif` VALUES (634, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', '1, ', NULL, 135);
INSERT INTO `tbl_notif` VALUES (635, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', NULL, NULL, 135);
INSERT INTO `tbl_notif` VALUES (636, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', NULL, NULL, 135);
INSERT INTO `tbl_notif` VALUES (637, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', NULL, NULL, 135);
INSERT INTO `tbl_notif` VALUES (638, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', NULL, NULL, 135);
INSERT INTO `tbl_notif` VALUES (639, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', NULL, NULL, 135);
INSERT INTO `tbl_notif` VALUES (640, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', '1, ', NULL, 136);
INSERT INTO `tbl_notif` VALUES (641, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', NULL, NULL, 136);
INSERT INTO `tbl_notif` VALUES (642, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', NULL, NULL, 136);
INSERT INTO `tbl_notif` VALUES (643, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', NULL, NULL, 136);
INSERT INTO `tbl_notif` VALUES (644, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', NULL, NULL, 136);
INSERT INTO `tbl_notif` VALUES (645, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', NULL, NULL, 136);
INSERT INTO `tbl_notif` VALUES (646, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', '1, ', NULL, 137);
INSERT INTO `tbl_notif` VALUES (647, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', NULL, NULL, 137);
INSERT INTO `tbl_notif` VALUES (648, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', NULL, NULL, 137);
INSERT INTO `tbl_notif` VALUES (649, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', NULL, NULL, 137);
INSERT INTO `tbl_notif` VALUES (650, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', NULL, NULL, 137);
INSERT INTO `tbl_notif` VALUES (651, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', NULL, NULL, 137);
INSERT INTO `tbl_notif` VALUES (652, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', '1, ', NULL, 138);
INSERT INTO `tbl_notif` VALUES (653, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', NULL, NULL, 138);
INSERT INTO `tbl_notif` VALUES (654, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', NULL, NULL, 138);
INSERT INTO `tbl_notif` VALUES (655, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', NULL, NULL, 138);
INSERT INTO `tbl_notif` VALUES (656, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', NULL, NULL, 138);
INSERT INTO `tbl_notif` VALUES (657, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', NULL, NULL, 138);
INSERT INTO `tbl_notif` VALUES (658, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', '1, ', NULL, 139);
INSERT INTO `tbl_notif` VALUES (659, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', NULL, NULL, 139);
INSERT INTO `tbl_notif` VALUES (660, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', NULL, NULL, 139);
INSERT INTO `tbl_notif` VALUES (661, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', NULL, NULL, 139);
INSERT INTO `tbl_notif` VALUES (662, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', NULL, NULL, 139);
INSERT INTO `tbl_notif` VALUES (663, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', NULL, NULL, 139);
INSERT INTO `tbl_notif` VALUES (664, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', '1, ', NULL, 140);
INSERT INTO `tbl_notif` VALUES (665, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', NULL, NULL, 140);
INSERT INTO `tbl_notif` VALUES (666, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', NULL, NULL, 140);
INSERT INTO `tbl_notif` VALUES (667, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', NULL, NULL, 140);
INSERT INTO `tbl_notif` VALUES (668, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', NULL, NULL, 140);
INSERT INTO `tbl_notif` VALUES (669, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', NULL, NULL, 140);
INSERT INTO `tbl_notif` VALUES (670, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', '1, ', NULL, 141);
INSERT INTO `tbl_notif` VALUES (671, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', NULL, NULL, 141);
INSERT INTO `tbl_notif` VALUES (672, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', NULL, NULL, 141);
INSERT INTO `tbl_notif` VALUES (673, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', NULL, NULL, 141);
INSERT INTO `tbl_notif` VALUES (674, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', NULL, NULL, 141);
INSERT INTO `tbl_notif` VALUES (675, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', NULL, NULL, 141);
INSERT INTO `tbl_notif` VALUES (676, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', '1, ', NULL, 142);
INSERT INTO `tbl_notif` VALUES (677, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', NULL, NULL, 142);
INSERT INTO `tbl_notif` VALUES (678, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', NULL, NULL, 142);
INSERT INTO `tbl_notif` VALUES (679, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', NULL, NULL, 142);
INSERT INTO `tbl_notif` VALUES (680, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', NULL, NULL, 142);
INSERT INTO `tbl_notif` VALUES (681, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', NULL, NULL, 142);
INSERT INTO `tbl_notif` VALUES (682, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', '1, ', NULL, 143);
INSERT INTO `tbl_notif` VALUES (683, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', NULL, NULL, 143);
INSERT INTO `tbl_notif` VALUES (684, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', NULL, NULL, 143);
INSERT INTO `tbl_notif` VALUES (685, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', NULL, NULL, 143);
INSERT INTO `tbl_notif` VALUES (686, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', NULL, NULL, 143);
INSERT INTO `tbl_notif` VALUES (687, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', NULL, NULL, 143);
INSERT INTO `tbl_notif` VALUES (688, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', '1, ', NULL, 144);
INSERT INTO `tbl_notif` VALUES (689, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', NULL, NULL, 144);
INSERT INTO `tbl_notif` VALUES (690, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', NULL, NULL, 144);
INSERT INTO `tbl_notif` VALUES (691, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', NULL, NULL, 144);
INSERT INTO `tbl_notif` VALUES (692, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', NULL, NULL, 144);
INSERT INTO `tbl_notif` VALUES (693, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', NULL, NULL, 144);
INSERT INTO `tbl_notif` VALUES (694, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', '1, ', NULL, 145);
INSERT INTO `tbl_notif` VALUES (695, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', NULL, NULL, 145);
INSERT INTO `tbl_notif` VALUES (696, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', NULL, NULL, 145);
INSERT INTO `tbl_notif` VALUES (697, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', NULL, NULL, 145);
INSERT INTO `tbl_notif` VALUES (698, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', NULL, NULL, 145);
INSERT INTO `tbl_notif` VALUES (699, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', NULL, NULL, 145);
INSERT INTO `tbl_notif` VALUES (700, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', '1, ', NULL, 146);
INSERT INTO `tbl_notif` VALUES (701, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', NULL, NULL, 146);
INSERT INTO `tbl_notif` VALUES (702, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', NULL, NULL, 146);
INSERT INTO `tbl_notif` VALUES (703, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', NULL, NULL, 146);
INSERT INTO `tbl_notif` VALUES (704, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', NULL, NULL, 146);
INSERT INTO `tbl_notif` VALUES (705, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', NULL, NULL, 146);
INSERT INTO `tbl_notif` VALUES (706, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', '1, ', NULL, 147);
INSERT INTO `tbl_notif` VALUES (707, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', NULL, NULL, 147);
INSERT INTO `tbl_notif` VALUES (708, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', NULL, NULL, 147);
INSERT INTO `tbl_notif` VALUES (709, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', NULL, NULL, 147);
INSERT INTO `tbl_notif` VALUES (710, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', NULL, NULL, 147);
INSERT INTO `tbl_notif` VALUES (711, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', NULL, NULL, 147);

-- ----------------------------
-- Table structure for tbl_paket_haji
-- ----------------------------
DROP TABLE IF EXISTS `tbl_paket_haji`;
CREATE TABLE `tbl_paket_haji`  (
  `id_paket_haji` int(10) NOT NULL AUTO_INCREMENT,
  `nama_paket_haji` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `user_penginput_id` int(11) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `harga_paket_haji` bigint(20) NULL DEFAULT NULL,
  `jumlah_hari_paket_haji` bigint(20) NULL DEFAULT NULL,
  `dp_id` int(11) NULL DEFAULT NULL,
  `harga_total_paket_haji` bigint(255) NULL DEFAULT NULL,
  `biaya_admin` bigint(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_paket_haji`) USING BTREE,
  INDEX `user_id`(`user_penginput_id`) USING BTREE,
  INDEX `dp_id`(`dp_id`) USING BTREE,
  CONSTRAINT `tbl_paket_haji_ibfk_1` FOREIGN KEY (`user_penginput_id`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tbl_paket_haji_ibfk_2` FOREIGN KEY (`dp_id`) REFERENCES `tbl_dp` (`id_dp`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_paket_haji
-- ----------------------------
INSERT INTO `tbl_paket_haji` VALUES (64, 'Paket Haji 1', '2023-06-07 16:03:35', 1, '2023-11-18 10:33:07', 10000000, 10, 83, 90000000, 2500);
INSERT INTO `tbl_paket_haji` VALUES (71, 'Paket Haji 2', '2023-06-07 16:03:35', 1, '2023-11-18 10:33:07', 20000000, 20, 83, 90000000, 2500);
INSERT INTO `tbl_paket_haji` VALUES (72, 'Paket Haji 3', '2023-06-07 16:03:35', 1, '2023-11-18 10:33:07', 30000000, 30, 83, 90000000, 2500);
INSERT INTO `tbl_paket_haji` VALUES (82, 'Paket Haji 5', '2023-11-18 21:01:46', 1, '2023-11-18 21:01:46', 55000000, 55, 83, 90000000, 2500);
INSERT INTO `tbl_paket_haji` VALUES (83, 'Paket Haji Mabrur', '2023-11-18 21:02:28', 1, '2023-11-18 21:02:28', 35000000, 15, 83, 90000000, 2500);

-- ----------------------------
-- Table structure for tbl_paket_umroh
-- ----------------------------
DROP TABLE IF EXISTS `tbl_paket_umroh`;
CREATE TABLE `tbl_paket_umroh`  (
  `id_paket_umroh` int(10) NOT NULL AUTO_INCREMENT,
  `nama_paket_umroh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `user_penginput_id` int(11) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `harga_paket_umroh` bigint(20) NULL DEFAULT NULL,
  `jumlah_hari_paket_umroh` bigint(20) NULL DEFAULT NULL,
  `dp_id` int(11) NULL DEFAULT NULL,
  `harga_total_paket_umroh` bigint(255) NULL DEFAULT NULL,
  `biaya_admin` bigint(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_paket_umroh`) USING BTREE,
  INDEX `user_id`(`user_penginput_id`) USING BTREE,
  INDEX `dp_id`(`dp_id`) USING BTREE,
  CONSTRAINT `tbl_paket_umroh_ibfk_1` FOREIGN KEY (`user_penginput_id`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tbl_paket_umroh_ibfk_2` FOREIGN KEY (`dp_id`) REFERENCES `tbl_dp` (`id_dp`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_paket_umroh
-- ----------------------------
INSERT INTO `tbl_paket_umroh` VALUES (64, 'Paket Umroh 1', '2023-06-07 16:03:35', 1, '2023-11-18 10:33:07', 10000000, 10, 82, 40000000, 2500);
INSERT INTO `tbl_paket_umroh` VALUES (71, 'Paket Umroh 2 edit', '2023-06-07 16:03:35', 1, '2023-11-18 21:00:36', 22000000, 22, 82, 40000000, 2500);

-- ----------------------------
-- Table structure for tbl_pencairan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pencairan`;
CREATE TABLE `tbl_pencairan`  (
  `id_pencairan` int(10) NOT NULL AUTO_INCREMENT,
  `pengirim_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `penerima_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jumlah_nominal` int(11) NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pencairan`) USING BTREE,
  INDEX `tbl_jamaah_ibfk_3`(`jumlah_nominal`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_provinsi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_provinsi`;
CREATE TABLE `tbl_provinsi`  (
  `id_provinsi` int(10) NOT NULL AUTO_INCREMENT,
  `nama_provinsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `status` enum('belum_diproses','perbaikan','draft_sedang_dibuat','menunggu_koreksi','selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_panjang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warna_background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_provinsi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_provinsi
-- ----------------------------
INSERT INTO `tbl_provinsi` VALUES (1, 'Nanggroe Aceh Darussalam ', '2023-06-07 16:03:35', NULL, 'Nanggroe Aceh Darussalam ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (7, 'Sumatera Utara ', '2023-05-08 11:25:22', '', 'Sumatera Utara ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (8, 'Sumatera Selatan ', '2023-05-08 11:25:22', '', 'Sumatera Selatan ', 'bg-gradient-orange');
INSERT INTO `tbl_provinsi` VALUES (10, 'Sumatera Barat ', '2023-05-08 11:25:22', 'menunggu_koreksi', 'Sumatera Barat ', 'bg-gradient-dark-blue-light');
INSERT INTO `tbl_provinsi` VALUES (13, 'Bengkulu ', '2023-05-08 11:25:22', 'belum_diproses', 'Bengkulu ', 'bg-gradient-red');
INSERT INTO `tbl_provinsi` VALUES (14, 'Riau ', '2023-05-08 11:25:22', 'belum_diproses', 'Riau ', 'bg-gradient-green');
INSERT INTO `tbl_provinsi` VALUES (17, 'Kepulauan Riau ', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Kepulauan Riau ', 'bg-gradient-blue-inverse');
INSERT INTO `tbl_provinsi` VALUES (18, 'Jambi ', '2023-05-08 11:25:22', 'belum_diproses', 'Jambi ', 'bg-gradient-yellow');
INSERT INTO `tbl_provinsi` VALUES (19, 'Lampung ', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Lampung ', 'bg-gradient-red-orange');
INSERT INTO `tbl_provinsi` VALUES (20, 'Bangka Belitung ', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Bangka Belitung ', 'bg-gradient-blue-dark');
INSERT INTO `tbl_provinsi` VALUES (21, 'Kalimantan Barat ', '2023-05-08 11:25:22', 'menunggu_koreksi', 'Kalimantan Barat ', 'bg-gradient-red-orange');
INSERT INTO `tbl_provinsi` VALUES (22, 'Kalimantan Timur ', '2023-05-08 11:25:22', 'selesai', 'Kalimantan Timur ', 'bg-gradient-pink');
INSERT INTO `tbl_provinsi` VALUES (64, 'Kalimantan Selatan ', '2023-06-07 16:03:35', NULL, 'Kalimantan Selatan ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (65, 'Kalimantan Tengah ', '2023-06-07 16:03:35', NULL, 'Kalimantan Tengah ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (67, 'Kalimantan Utara ', '2023-06-07 16:03:35', NULL, 'Kalimantan Utara ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (68, 'Banten', '2023-06-07 16:03:35', NULL, 'Banten', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (69, 'DKI Jakarta', '2023-06-07 16:03:35', NULL, 'DKI Jakarta', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (70, 'Jawa Barat ', '2023-06-07 16:03:35', NULL, 'Jawa Barat ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (71, 'Jawa Tengah ', '2023-06-07 16:03:35', NULL, 'Jawa Tengah ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (72, 'Daerah Istimewa Yogyakarta', '2023-06-07 16:03:35', NULL, 'Daerah Istimewa Yogyakarta', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (73, 'Jawa Timur ', '2023-06-07 16:03:35', NULL, 'Jawa Timur ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (74, 'Bali ', '2023-06-07 16:03:35', NULL, 'Bali ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (75, 'Nusa Tenggara Timur ', '2023-06-07 16:03:35', NULL, 'Nusa Tenggara Timur ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (76, 'Nusa Tenggara Barat ', '2023-06-07 16:03:35', NULL, 'Nusa Tenggara Barat ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (77, 'Gorontalo ', '2023-06-07 16:03:35', NULL, 'Gorontalo ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (78, 'Sulawesi Barat ', '2023-06-07 16:03:35', NULL, 'Sulawesi Barat ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (79, 'Sulawesi Tengah ', '2023-06-07 16:03:35', NULL, 'Sulawesi Tengah ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (80, 'Sulawesi Utara ', '2023-06-07 16:03:35', NULL, 'Sulawesi Utara ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (81, 'Sulawesi Tenggara ', '2023-06-07 16:03:35', NULL, 'Sulawesi Tenggara ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (82, 'Sulawesi Selatan ', '2023-06-07 16:03:35', NULL, 'Sulawesi Selatan ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (83, 'Maluku Utara ', '2023-06-07 16:03:35', NULL, 'Maluku Utara ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (84, 'Maluku ', '2023-06-07 16:03:35', NULL, 'Maluku ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (85, 'Papua Barat ', '2023-06-07 16:03:35', NULL, 'Papua Barat ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (86, 'Papua ', '2023-06-07 16:03:35', NULL, 'Papua ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (87, 'Papua Tengah ', '2023-06-07 16:03:35', NULL, 'Papua Tengah ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (88, 'Papua Pegunungan ', '2023-06-07 16:03:35', NULL, 'Papua Pegunungan ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (90, 'Papua Selatan ', '2023-06-07 16:03:35', NULL, 'Papua Selatan ', 'bg-gradient-purple');
INSERT INTO `tbl_provinsi` VALUES (91, 'Papua Barat Daya ', '2023-06-07 16:03:35', NULL, 'Papua Barat Daya ', 'bg-gradient-purple');

-- ----------------------------
-- Table structure for tbl_role_agen
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_agen`;
CREATE TABLE `tbl_role_agen`  (
  `id_role_agen` int(10) NOT NULL AUTO_INCREMENT,
  `nama_role_agen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_role_agen_lengkap` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_role_agen`) USING BTREE,
  INDEX `tbl_jamaah_ibfk_3`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_role_agen
-- ----------------------------
INSERT INTO `tbl_role_agen` VALUES (1, 'administrator', 'Administrator', 1, '2023-11-21 13:59:43', '2023-11-21 13:59:43', NULL);
INSERT INTO `tbl_role_agen` VALUES (90, 'presiden_direktur', 'Presiden Direktur', 1, '2023-11-21 13:59:43', '2023-11-21 13:59:43', NULL);
INSERT INTO `tbl_role_agen` VALUES (91, 'direktur_mujahid', 'Direktur Mujahid', 1, '2023-11-21 13:59:43', '2023-11-21 13:59:43', NULL);
INSERT INTO `tbl_role_agen` VALUES (93, 'manajer_mujahid', 'Manajer Mujahid', 1, '2023-11-21 13:59:43', '2023-11-21 13:59:43', NULL);
INSERT INTO `tbl_role_agen` VALUES (95, 'baitullah_mujahid', 'Baitullah Mujahid', 1, '2023-11-21 13:59:43', '2023-11-21 13:59:43', NULL);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` enum('superadmin','presiden_direktur','direktur_mujahid','manajer_mujahid','baitullah_mujahid') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_cabang` int(10) NULL DEFAULT NULL,
  `id_zona` int(10) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `status` enum('belum_terverifikasi','terverifikasi','dalam_proses') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE,
  INDEX `id_zona`(`id_zona`) USING BTREE,
  INDEX `id_cabang`(`id_cabang`) USING BTREE,
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `tbl_zona` (`id_zona`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tbl_user_ibfk_2` FOREIGN KEY (`id_cabang`) REFERENCES `tbl_cabang` (`id_cabang`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (0, 'Pelaksana', 'pelaksana', 'pelaksana@gmail.com', 'saS3eimg8Mg1M', '', 72, NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (1, 'Administrator', 'administrator', NULL, 'saS3eimg8Mg1M', 'superadmin', 71, 64, '2023-12-01 06:19:11', NULL);
INSERT INTO `tbl_user` VALUES (2, 'Presto Alibaba', 'presto', NULL, 'saS3eimg8Mg1M', 'presiden_direktur', 72, 67, NULL, NULL);
INSERT INTO `tbl_user` VALUES (3, 'Dirman Swarjaya', 'dirman', NULL, 'saS3eimg8Mg1M', 'direktur_mujahid', 73, 68, NULL, NULL);
INSERT INTO `tbl_user` VALUES (8, 'Manahulu Situpang', 'manahulu', NULL, 'saS3eimg8Mg1M', 'manajer_mujahid', 74, 69, NULL, NULL);
INSERT INTO `tbl_user` VALUES (9, 'Muja Azhari', 'muja', NULL, 'saS3eimg8Mg1M', 'baitullah_mujahid', 74, 70, '2023-06-19 09:08:30', NULL);
INSERT INTO `tbl_user` VALUES (10, 'Mantila Roger', 'mantila', NULL, 'saS3eimg8Mg1M', 'manajer_mujahid', 72, 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (11, 'Manikus Markus', 'manikus', NULL, 'saS3eimg8Mg1M', 'manajer_mujahid', 72, 8, NULL, NULL);
INSERT INTO `tbl_user` VALUES (12, 'Manada Hanafi', 'manada', NULL, 'saS3eimg8Mg1M', 'manajer_mujahid', 72, 10, NULL, NULL);
INSERT INTO `tbl_user` VALUES (13, 'Mangantara Agus', 'mangantara', NULL, 'saS3eimg8Mg1M', 'manajer_mujahid', 72, 13, NULL, NULL);
INSERT INTO `tbl_user` VALUES (14, 'Dirtaka Salam', 'dirtaka', NULL, 'saS3eimg8Mg1M', 'direktur_mujahid', 72, 14, NULL, NULL);
INSERT INTO `tbl_user` VALUES (15, 'Dirzo Ayok', 'dirzo', NULL, 'saS3eimg8Mg1M', 'direktur_mujahid', 72, 17, NULL, NULL);
INSERT INTO `tbl_user` VALUES (16, 'Diku Manita', 'diku', NULL, 'saS3eimg8Mg1M', 'direktur_mujahid', 72, 18, NULL, NULL);
INSERT INTO `tbl_user` VALUES (17, 'Diryudi', 'diryudi', NULL, 'saS3eimg8Mg1M', 'direktur_mujahid', 72, 19, NULL, NULL);
INSERT INTO `tbl_user` VALUES (19, 'Musleh', 'musleh', 'musleh19@gmail.com', 'saS3eimg8Mg1M', 'baitullah_mujahid', 72, 21, NULL, NULL);
INSERT INTO `tbl_user` VALUES (20, 'Mutaka Ismail', 'mutaka', NULL, 'saS3eimg8Mg1M', 'baitullah_mujahid', 72, 22, NULL, NULL);
INSERT INTO `tbl_user` VALUES (21, 'Miuya Yuri', 'miuya', NULL, 'saS3eimg8Mg1M', 'baitullah_mujahid', 72, 13, '2023-09-04 11:13:41', NULL);
INSERT INTO `tbl_user` VALUES (25, 'Mustafa Ahmad', 'mustafa', NULL, 'saS3eimg8Mg1M', 'baitullah_mujahid', 72, NULL, '2023-11-14 17:55:41', NULL);
INSERT INTO `tbl_user` VALUES (26, 'Surya Sanja', 'suryas', 'suryas@gmail.com', 'saS3eimg8Mg1M', 'baitullah_mujahid', 72, NULL, '2023-11-17 14:18:28', NULL);

-- ----------------------------
-- Table structure for tbl_user_sementara
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_sementara`;
CREATE TABLE `tbl_user_sementara`  (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` enum('superadmin','presdir','direktur_m','manajer_m','mujahid_b') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_cabang` int(10) NULL DEFAULT NULL,
  `id_zona` int(10) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `status` enum('belum_terverifikasi','terverifikasi','dalam_proses') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE,
  INDEX `id_zona`(`id_zona`) USING BTREE,
  INDEX `id_cabang`(`id_cabang`) USING BTREE,
  CONSTRAINT `tbl_user_sementara_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `tbl_zona` (`id_zona`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tbl_user_sementara_ibfk_2` FOREIGN KEY (`id_cabang`) REFERENCES `tbl_cabang` (`id_cabang`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user_sementara
-- ----------------------------
INSERT INTO `tbl_user_sementara` VALUES (27, 'Johan Iswara', 'johani', 'johani@gmail.com', 'saS3eimg8Mg1M', 'direktur_m', 72, NULL, '2023-11-17 09:21:53', 'belum_terverifikasi');
INSERT INTO `tbl_user_sementara` VALUES (28, 'rizky saputra', 'rizkys', 'rizkys@gmail.com', 'saS3eimg8Mg1M', 'presdir', 71, NULL, '2023-11-17 09:30:22', 'belum_terverifikasi');
INSERT INTO `tbl_user_sementara` VALUES (29, 'agen1', 'agen1', 'agen1@gmail.com', 'saEZ6MlWYV9nQ', 'mujahid_b', 72, NULL, '2023-11-18 04:53:01', 'belum_terverifikasi');

-- ----------------------------
-- Table structure for tbl_zona
-- ----------------------------
DROP TABLE IF EXISTS `tbl_zona`;
CREATE TABLE `tbl_zona`  (
  `id_zona` int(10) NOT NULL AUTO_INCREMENT,
  `nama_zona` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `status` enum('belum_diproses','perbaikan','draft_sedang_dibuat','menunggu_koreksi','selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_panjang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warna_background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_zona`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_zona
-- ----------------------------
INSERT INTO `tbl_zona` VALUES (1, 'kasub_perancang', '2023-06-07 16:03:35', NULL, 'Kasub Perancang', 'bg-gradient-purple');
INSERT INTO `tbl_zona` VALUES (7, 'pemprov_ntb', '2023-05-08 11:25:22', '', 'Pemerintah Provinsi NTB', 'bg-gradient-purple');
INSERT INTO `tbl_zona` VALUES (8, 'pemkot_mataram', '2023-05-08 11:25:22', '', 'Pemerintah Kota Mataram', 'bg-gradient-orange');
INSERT INTO `tbl_zona` VALUES (10, 'pemkot_bima', '2023-05-08 11:25:22', 'menunggu_koreksi', 'Pemerintah Kota Bima', 'bg-gradient-dark-blue-light');
INSERT INTO `tbl_zona` VALUES (13, 'pemkab_sumbawa_barat', '2023-05-08 11:25:22', 'belum_diproses', 'Pemerintah Kabupaten Sumbawa Barat', 'bg-gradient-red');
INSERT INTO `tbl_zona` VALUES (14, 'pemkab_sumbawa', '2023-05-08 11:25:22', 'belum_diproses', 'Pemerintah Kabupaten Sumbawa', 'bg-gradient-green');
INSERT INTO `tbl_zona` VALUES (17, 'pemkab_lombok_utara', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Pemerintah Kabupaten Lombok Utara', 'bg-gradient-blue-inverse');
INSERT INTO `tbl_zona` VALUES (18, 'pemkab_lombok_timur', '2023-05-08 11:25:22', 'belum_diproses', 'Pemerintah Kabupaten Lombok Timur', 'bg-gradient-yellow');
INSERT INTO `tbl_zona` VALUES (19, 'pemkab_lombok_tengah', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Pemerintah Kabupaten Lombok Tengah', 'bg-gradient-red-orange');
INSERT INTO `tbl_zona` VALUES (20, 'pemkab_lombok_barat', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Pemerintah Kabupaten Lombok Barat', 'bg-gradient-blue-dark');
INSERT INTO `tbl_zona` VALUES (21, 'pemkab_dompu', '2023-05-08 11:25:22', 'menunggu_koreksi', 'Pemerintah Kabupaten Dompu', 'bg-gradient-red-orange');
INSERT INTO `tbl_zona` VALUES (22, 'pemkab_bima', '2023-05-08 11:25:22', 'selesai', 'Pemerintah Kabupaten Bima', 'bg-gradient-pink');
INSERT INTO `tbl_zona` VALUES (64, 'superadmin', '2023-06-07 16:03:35', NULL, 'Superadmin', 'bg-gradient-purple');
INSERT INTO `tbl_zona` VALUES (65, 'perancang', '2023-06-07 16:03:35', NULL, 'Perancang', 'bg-gradient-purple');
INSERT INTO `tbl_zona` VALUES (67, 'presdir', '2023-06-07 16:03:35', NULL, 'Perancang', 'bg-gradient-purple');
INSERT INTO `tbl_zona` VALUES (68, 'direktur', '2023-06-07 16:03:35', NULL, 'Perancang', 'bg-gradient-purple');
INSERT INTO `tbl_zona` VALUES (69, 'manajer', '2023-06-07 16:03:35', NULL, 'Perancang', 'bg-gradient-purple');
INSERT INTO `tbl_zona` VALUES (70, 'mujahid', '2023-06-07 16:03:35', NULL, 'Perancang', 'bg-gradient-purple');

SET FOREIGN_KEY_CHECKS = 1;