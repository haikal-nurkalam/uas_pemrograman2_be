-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: 05tple001_Haikal
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL,
  `id_siswa` int DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (56,58,'Doflamingo','winnn','asdasdqweqwe'),(103,1,'heru','andien','joko');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_seq`
--

DROP TABLE IF EXISTS `admin_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_seq`
--

LOCK TABLES `admin_seq` WRITE;
/*!40000 ALTER TABLE `admin_seq` DISABLE KEYS */;
INSERT INTO `admin_seq` VALUES (201);
/*!40000 ALTER TABLE `admin_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berkas`
--

DROP TABLE IF EXISTS `berkas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berkas` (
  `id` int NOT NULL,
  `file` tinyblob,
  `id_siswa` int DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berkas`
--

LOCK TABLES `berkas` WRITE;
/*!40000 ALTER TABLE `berkas` DISABLE KEYS */;
INSERT INTO `berkas` VALUES (53,_binary 'j\ÇjÁ\ê°z¬«š±Ö¬u«',60,'A',2),(54,_binary 'j\ÇjÁ\ê°z¬«š±Ö¬u«',59,'A',2),(56,_binary 'j\ÇjÁ\ê°z¬«š±Ö¬u«',59,'B',2),(57,_binary 'j\ÇjÁ\ê°z¬«š±Ö¬u«',59,'C',2),(103,_binary 'j\ÇjÁ\ê°z¬«š±Ö¬u«',NULL,'',1),(104,_binary 'j\ÇjÁ\ê°z¬«š±Ö¬u«',60,'C',1),(105,_binary 'some_base64_string',12,'B',2);
/*!40000 ALTER TABLE `berkas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berkas_seq`
--

DROP TABLE IF EXISTS `berkas_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berkas_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berkas_seq`
--

LOCK TABLES `berkas_seq` WRITE;
/*!40000 ALTER TABLE `berkas_seq` DISABLE KEYS */;
INSERT INTO `berkas_seq` VALUES (201);
/*!40000 ALTER TABLE `berkas_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calon_siswa`
--

DROP TABLE IF EXISTS `calon_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calon_siswa` (
  `id` int NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `foto` tinyblob,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `nama_ortu` varchar(255) DEFAULT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `no_pendaftaran` int DEFAULT NULL,
  `status_pendaftaran` int DEFAULT NULL,
  `tanggal_lahir` datetime(6) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calon_siswa`
--

LOCK TABLES `calon_siswa` WRITE;
/*!40000 ALTER TABLE `calon_siswa` DISABLE KEYS */;
INSERT INTO `calon_siswa` VALUES (58,'jl mana aja','SMP 23','','Ardo','rooney','222222',2211,1,'2024-07-17 07:00:00.000000','08112211'),(59,'dimana aja','SMP 23 Negeri','','Kalsss','andi','123123123',1122111,2,'2024-07-10 07:00:00.000000','00123'),(60,'JL mana aja','smp 24',_binary '«ªÁ\ê°z¬','RONI','Suni','21122211',1,1,'2022-10-12 07:00:00.000000','0812312312'),(152,'JL mana aja','smp 24',_binary '«ªÁ\ê°z¬','Winston','Joni','21122211',1,1,'2022-10-12 07:00:00.000000','0812312312');
/*!40000 ALTER TABLE `calon_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calon_siswa_seq`
--

DROP TABLE IF EXISTS `calon_siswa_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calon_siswa_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calon_siswa_seq`
--

LOCK TABLES `calon_siswa_seq` WRITE;
/*!40000 ALTER TABLE `calon_siswa_seq` DISABLE KEYS */;
INSERT INTO `calon_siswa_seq` VALUES (251);
/*!40000 ALTER TABLE `calon_siswa_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifikasi_berkas`
--

DROP TABLE IF EXISTS `verifikasi_berkas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verifikasi_berkas` (
  `id` int NOT NULL,
  `id_admin` int DEFAULT NULL,
  `id_berkas` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `tgl_verifikasi` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifikasi_berkas`
--

LOCK TABLES `verifikasi_berkas` WRITE;
/*!40000 ALTER TABLE `verifikasi_berkas` DISABLE KEYS */;
INSERT INTO `verifikasi_berkas` VALUES (1,2,1,2,'2024-07-04 07:00:00.000000'),(2,44,2,2,'2024-07-04 07:00:00.000000'),(52,NULL,52,2,'2024-07-04 07:00:00.000000'),(53,NULL,54,2,'2024-07-04 07:00:00.000000'),(54,NULL,54,2,'2024-07-04 18:55:05.000000'),(55,NULL,55,2,'2024-07-04 18:54:04.000000'),(56,NULL,56,2,'2024-07-04 07:00:00.000000'),(57,NULL,57,2,'2024-07-04 07:00:00.000000'),(58,NULL,52,2,'2024-07-04 07:00:00.000000'),(59,NULL,2,2,'2024-07-04 07:00:00.000000'),(60,NULL,57,2,'2024-07-04 07:00:00.000000'),(61,NULL,56,2,'2024-07-04 07:00:00.000000'),(62,NULL,1,2,'2024-07-04 07:00:00.000000'),(63,NULL,1,2,'2024-07-04 07:00:00.000000'),(102,NULL,52,2,'2024-07-05 07:00:00.000000'),(103,NULL,52,2,'2024-07-05 07:00:00.000000'),(104,NULL,53,2,'2024-07-05 07:00:00.000000'),(105,NULL,52,2,'2024-07-05 07:00:00.000000'),(106,NULL,2,2,'2024-07-05 07:00:00.000000'),(107,NULL,1,2,'2024-07-05 07:00:00.000000'),(108,NULL,56,2,'2024-07-05 07:00:00.000000'),(109,NULL,1,2,'2024-07-05 07:00:00.000000'),(110,NULL,2,2,'2024-07-05 07:00:00.000000'),(111,NULL,52,2,'2024-07-05 07:00:00.000000'),(112,NULL,53,2,'2024-07-05 07:00:00.000000'),(113,NULL,54,2,'2024-07-05 07:00:00.000000'),(114,NULL,55,2,'2024-07-05 07:00:00.000000'),(115,NULL,56,2,'2024-07-05 07:00:00.000000'),(116,NULL,57,2,'2024-07-05 07:00:00.000000'),(117,NULL,102,2,'2024-07-05 07:00:00.000000'),(118,44,33,1,'2022-10-12 07:00:00.000000');
/*!40000 ALTER TABLE `verifikasi_berkas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifikasi_berkas_seq`
--

DROP TABLE IF EXISTS `verifikasi_berkas_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verifikasi_berkas_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifikasi_berkas_seq`
--

LOCK TABLES `verifikasi_berkas_seq` WRITE;
/*!40000 ALTER TABLE `verifikasi_berkas_seq` DISABLE KEYS */;
INSERT INTO `verifikasi_berkas_seq` VALUES (201);
/*!40000 ALTER TABLE `verifikasi_berkas_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-05  8:25:38
