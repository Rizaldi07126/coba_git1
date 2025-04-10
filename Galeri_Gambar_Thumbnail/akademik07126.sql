-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: akademik07126
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dosen` (
  `npp` char(16) NOT NULL,
  `namadosen` varchar(50) DEFAULT NULL,
  `homebase` char(10) DEFAULT NULL,
  PRIMARY KEY (`npp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES (' 0686.11.1993.03','Sasono Wibowo, SE, M.Kom','A12'),('0686.11.1990.000','lalang erawan','A12'),('0686.11.1991.011','Aris Nurhindarto, M.Kom','A12'),('0686.11.1992.026','Florentina Esti Nilawati, SH, MM','A12'),('0686.11.1996.080','Asih Rohmani, M.Kom','A12'),('0686.11.1997.108','Budi Widjajanto, M.Kom','A12'),('0686.11.1997.128','Lalang Erawan, M.Kom','A12'),('0686.11.1997.136','Acun Kardianawati, M.Kom','A12'),('0686.11.1997.138','Dr. Pujiono, S.Si., M.Kom','A12'),('0686.11.1998.152','MY. Teguh Sulistyono, M.Kom','A12'),('0686.11.1998.200','Affandy, Ph.D','A12'),('0686.11.2000.241','Yupie Kusumawati, SE, M.Kom','A12');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gambar`
--

DROP TABLE IF EXISTS `gambar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gambar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_file` varchar(255) NOT NULL,
  `lokasi_file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gambar`
--

LOCK TABLES `gambar` WRITE;
/*!40000 ALTER TABLE `gambar` DISABLE KEYS */;
INSERT INTO `gambar` VALUES (1,'cat6.jpg','uploads/resized_cat6.jpg');
/*!40000 ALTER TABLE `gambar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gambar_thumbnail`
--

DROP TABLE IF EXISTS `gambar_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gambar_thumbnail` (
  `id_thumbnail` int NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `thumbpath` varchar(255) NOT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `uploaded_at` varchar(45) NOT NULL,
  PRIMARY KEY (`id_thumbnail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gambar_thumbnail`
--

LOCK TABLES `gambar_thumbnail` WRITE;
/*!40000 ALTER TABLE `gambar_thumbnail` DISABLE KEYS */;
INSERT INTO `gambar_thumbnail` VALUES (1,'cat1.jpeg','uploads/cat1.jpeg','thumbs/thumb_cat1.jpeg',225,225,'current_timestamp()'),(2,'cat1.jpeg','uploads/cat1.jpeg','thumbs/thumb_cat1.jpeg',225,225,'current_timestamp()'),(3,'cat-in-shock-surprises.gif','uploads/cat-in-shock-surprises.gif','thumbs/thumb_cat-in-shock-surprises.gif',113,200,'current_timestamp()'),(4,'cat8.png','uploads/cat8.png','thumbs/thumb_cat8.png',240,240,'current_timestamp()');
/*!40000 ALTER TABLE `gambar_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jadwal` (
  `idJadwal` int NOT NULL AUTO_INCREMENT,
  `idMatkul` char(10) DEFAULT NULL,
  `namaMatkul` varchar(100) DEFAULT NULL,
  `npp` char(16) DEFAULT NULL,
  `thAkd` char(4) DEFAULT NULL,
  `hari1` char(10) DEFAULT NULL,
  `mulai1` char(5) DEFAULT NULL,
  `selesai1` char(5) DEFAULT NULL,
  `ruang1` char(10) DEFAULT NULL,
  `hari2` char(10) DEFAULT NULL,
  `mulai2` char(5) DEFAULT NULL,
  `selesai2` char(5) DEFAULT NULL,
  `ruang2` char(10) DEFAULT NULL,
  `klp` char(10) DEFAULT NULL,
  `sks` char(2) DEFAULT NULL,
  `smt` char(2) DEFAULT NULL,
  `kap` int DEFAULT NULL,
  PRIMARY KEY (`idJadwal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal`
--

LOCK TABLES `jadwal` WRITE;
/*!40000 ALTER TABLE `jadwal` DISABLE KEYS */;
INSERT INTO `jadwal` VALUES (1,'A12.56201','Algoritma dan Pemrograman I','0686.11.1997.136','2019','Senin','07.00','08.40','H.2.1','Rabu','08.40','10.20','H.2.4','A12.2302',NULL,NULL,NULL),(2,'A12.56401','Basis Data','0686.11.1997.128','2019','Senin','07.00','08.40','H.2.2','Selasa','10.20','12.00','H.3.1','A12.4301',NULL,'0',40),(3,'A12.56201','Algoritma dan Pemrograman I','0686.11.1997.136','2019','Selasa','10.20','12.00','H.3.1','Kamis','14.10','16.20','H.2.5','A12.2201',NULL,'0',40),(4,'A12.56302','Algoritma dan Pemrograman II','0686.11.1991.011','2019','Kamis','14.10','16.20','H.4.2','Jumat','07.00','08.40','H.4.1','A12.3302',NULL,'1',40),(5,'A12.56302','Algoritma dan Pemrograman II','0686.11.1991.011','2019','Jumat','12.30','14.10','H.3.5','Senin','10.20','12.00','H.4.6','A12.3301',NULL,'1',40),(6,'A12.56707','Aplikasi e-Bisnis','0686.11.1997.128','2019','Rabu','08.40','10.20','H.2.5','Selasa','12.30','14.10','H.2.3','A12.7201',NULL,'1',40),(7,'A12.56707','Aplikasi e-Bisnis','0686.11.1997.128','2019','Jumat','10.20','12.00','H.2.6','Rabu','12.30','14.10','H.2.2','A12.7202',NULL,'1',40),(8,'A12.56305','Jaringan Komputer','0686.11.1998.152','2019','Kamis','08.40','10.20','H.2.4','Kamis','14.10','16.20','H.3.1','A12.3501',NULL,'1',40),(9,'A12.56305','Jaringan Komputer','0686.11.1998.152','2019','Senin','07.00','08.40','H.3.3','Selasa','10.20','12.00','H.2.6','A12.3502',NULL,'1',40);
/*!40000 ALTER TABLE `jadwal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krs`
--

DROP TABLE IF EXISTS `krs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `krs` (
  `idKrs` int NOT NULL AUTO_INCREMENT,
  `thAkd` int DEFAULT NULL,
  `nim` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idMatkul` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nilai` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nppDos` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hari` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `waktu` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idKrs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krs`
--

LOCK TABLES `krs` WRITE;
/*!40000 ALTER TABLE `krs` DISABLE KEYS */;
/*!40000 ALTER TABLE `krs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kultawar`
--

DROP TABLE IF EXISTS `kultawar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kultawar` (
  `idkultawar` int NOT NULL AUTO_INCREMENT,
  `idmatkul` char(10) DEFAULT NULL,
  `npp` char(16) DEFAULT NULL,
  `klp` char(10) DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `jamkul` char(13) DEFAULT NULL,
  `ruang` char(6) DEFAULT NULL,
  PRIMARY KEY (`idkultawar`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kultawar`
--

LOCK TABLES `kultawar` WRITE;
/*!40000 ALTER TABLE `kultawar` DISABLE KEYS */;
INSERT INTO `kultawar` VALUES (1,'A12.56201','0686.11.1997.136','A12.6201','Senin','07.00-08.40','H.5.5'),(2,'A12.56107','0686.11.1997.128','A12.6101','Senin','08.40-10.20',NULL),(3,'A12.56201','0686.11.1997.136','A12.6201','Selasa','10.20-12.00',NULL),(4,'A12.56302','0686.11.1991.011','A12.6302','Kamis','14.10-16.20',NULL),(5,'A12.56302','0686.11.1991.011','A12.6301','Jumat','12.30-14.10',NULL),(6,'A12.56707','0686.11.1997.128','A12.6701','Rabu','08.40-10.20',NULL),(7,'A12.56707','0686.11.1997.128','A12.6702','Jumat','10.20-12.00',NULL),(8,'A12.56305','0686.11.1998.152','A12.6303','Kamis','08.40-10.20',NULL),(9,'A12.56305','0686.11.1998.152','A12.6305','Senin','07.00-08.40',NULL),(10,'A12.56202','0686.11.2000.241','A12.6204','Senin','07.00-08.40',NULL),(12,'A12.56601','0686.11.1997.138','A12.6603','Jumat','14.10-16.20','H.5.2'),(13,'A12.56801','0686.11.1992.026','A12.6803','Rabu','07.00-08.40','H.5.2');
/*!40000 ALTER TABLE `kultawar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matkul`
--

DROP TABLE IF EXISTS `matkul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matkul` (
  `idmatkul` char(10) NOT NULL,
  `namamatkul` varchar(50) DEFAULT NULL,
  `sks` int DEFAULT NULL,
  `jns` char(3) DEFAULT NULL,
  `smt` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idmatkul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matkul`
--

LOCK TABLES `matkul` WRITE;
/*!40000 ALTER TABLE `matkul` DISABLE KEYS */;
INSERT INTO `matkul` VALUES ('A12.56101','Matematika Diskrit',3,'T','1'),('A12.56102','Pengantar Teknologi Informasi',4,'T/P','1'),('A12.56103','Sistem Informasi',3,'T','1'),('A12.56104','Pengantar Manajemen',2,'T','1'),('A12.56105','Ketrampilan Interpersonal',2,'T','1'),('A12.56106','Bahasa Inggris I',2,'T','1'),('A12.56107','Dasar Akuntansi',3,'T','1'),('A12.56201','Algoritma dan Pemrograman I',4,'T/P','2'),('A12.56202','Sistem Informasi Akuntansi',3,'T','2'),('A12.56203','Pendidikan Agama',2,'T','2'),('A12.56204','Bahasa Inggris II',2,'T','2'),('A12.56205','Pengantar Bisnis',2,'T','2'),('A12.56206','Matematika Bisnis',3,'T','2'),('A12.56207','Sistem Informasi Manajemen',3,'T','2'),('A12.56301','Analisa Proses Bisnis',3,'T','3'),('A12.56302','Algoritma dan Pemrograman II',4,'T/P','3'),('A12.56303','Pemrograman Web',4,'T/P','3'),('A12.56304','Sistem Operasi',3,'T','3'),('A12.56305','Jaringan Komputer',4,'T','3'),('A12.56401','Basis Data',3,'T','4'),('A12.56402','Pemrograman Berorientasi Obyek',4,'T/P','4'),('A12.56403','Pemrograman Web Lanjut',2,'P','4'),('A12.56404','Analisa dan Perancangan Sistem Informasi I',3,'T','4'),('A12.56406','Konsep e-Bisnis',4,'T','4'),('A12.56501','Analisa dan Perancangan Sistem Informasi II',3,'T','5'),('A12.56502','Kewirausahaan',2,'T','5'),('A12.56503','Analisa dan Perancangan Sistem Informasi II',3,'T','5'),('A12.56504','Manajemen Sains',3,'T','5'),('A12.56505','Sistem Basis Data',3,'T','5'),('A12.56506','Interaksi Manusia dan Komputer',2,'T','5'),('A12.56507','Pengelolaan Hubungan Pelanggan',3,'T','5'),('A12.56601','Data Mining dan Data Warehouse',3,'T','6'),('A12.56602','Analisa Kinerja Sistem',3,'T','6'),('A12.56603','Sistem Pendukung Keputusan',3,'T','6'),('A12.56604','Perencanaan Strategis Sistem Informasi',2,'T','6'),('A12.56606','Perencanaan Sumber Daya Perusahaan',3,'T','6'),('A12.56607','Bisnis Cerdas',4,'T','5'),('A12.56608','Perancangan dan Pengembangan Sistem Informasi',4,'T','5'),('A12.56701','Pendidikan Kewarganegaraan',2,'T','7'),('A12.56702','Metodologi Penelitian',2,'T','7'),('A12.56703','Manajemen Rantai Pasok',3,'T','7'),('A12.56704','Manajemen Proyek',3,'T','7'),('A12.56705','Proteksi Aset Informasi',3,'T','7'),('A12.56706','Kerja Praktek',2,'T','7'),('A12.56707','Aplikasi e-Bisnis',4,'T','7'),('A12.56708','Tata Kelola dan Audit Sistem Informasi',4,'T','7'),('A12.56801','Bahasa Indonesia',2,'T','8'),('A12.56802','Etika Profesi',2,'T','8'),('A12.56803','Bimbingan Karir',2,'T','8'),('A12.56804','Tugas Akhir',6,'T','8'),('A12.A12.56','Implementasi dan Pengujian Sistem',2,'T','6');
/*!40000 ALTER TABLE `matkul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs`
--

DROP TABLE IF EXISTS `mhs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mhs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nim` char(14) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs`
--

LOCK TABLES `mhs` WRITE;
/*!40000 ALTER TABLE `mhs` DISABLE KEYS */;
INSERT INTO `mhs` VALUES (50,'A12.2023.07126','Rizaldi Ilman Maulana','112202307126@mhs.dinus.ac.id','Foto-1.JPG'),(51,'A12.2023.07127','Aldi','aldi@mail.com','cat1.jpeg');
/*!40000 ALTER TABLE `mhs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  `filefotouser` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'udin','$2y$10$t6yDTmDsNZ1ZvvWsn5kY.uqupRLnze01tdb0/xj4T6/7hcflx7VCO','mhs','cat4.jpeg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-10 15:15:47
