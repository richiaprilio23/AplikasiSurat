-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: db_FHukum
-- ------------------------------------------------------
-- Server version	5.5.55-0+deb7u1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dosen_berita_acara`
--

DROP TABLE IF EXISTS `dosen_berita_acara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_berita_acara` (
  `id_berita_acara` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_berita_acara` text,
  `keterangan_berita_acara` text,
  PRIMARY KEY (`id_berita_acara`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_berita_acara`
--

LOCK TABLES `dosen_berita_acara` WRITE;
/*!40000 ALTER TABLE `dosen_berita_acara` DISABLE KEYS */;
INSERT INTO `dosen_berita_acara` VALUES (2,3,NULL,'tes aja');
/*!40000 ALTER TABLE `dosen_berita_acara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_daftar_hadir`
--

DROP TABLE IF EXISTS `dosen_daftar_hadir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_daftar_hadir` (
  `id_daftar_hadir` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_daftar_hadir` text,
  `keterangan_daftar_hadir` text,
  PRIMARY KEY (`id_daftar_hadir`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_daftar_hadir`
--

LOCK TABLES `dosen_daftar_hadir` WRITE;
/*!40000 ALTER TABLE `dosen_daftar_hadir` DISABLE KEYS */;
INSERT INTO `dosen_daftar_hadir` VALUES (2,3,'tes bro_1496738809.pdf','tes bro');
/*!40000 ALTER TABLE `dosen_daftar_hadir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_dupak`
--

DROP TABLE IF EXISTS `dosen_dupak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_dupak` (
  `id_dupak` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_dupak` text,
  `keterangan_dupak` text,
  PRIMARY KEY (`id_dupak`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_dupak`
--

LOCK TABLES `dosen_dupak` WRITE;
/*!40000 ALTER TABLE `dosen_dupak` DISABLE KEYS */;
INSERT INTO `dosen_dupak` VALUES (2,3,'dupak_1496739823.pdf','dupak');
/*!40000 ALTER TABLE `dosen_dupak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_ijazah`
--

DROP TABLE IF EXISTS `dosen_ijazah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_ijazah` (
  `id_ijazah` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_ijazah` text,
  `keterangan_ijazah` text,
  PRIMARY KEY (`id_ijazah`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_ijazah`
--

LOCK TABLES `dosen_ijazah` WRITE;
/*!40000 ALTER TABLE `dosen_ijazah` DISABLE KEYS */;
INSERT INTO `dosen_ijazah` VALUES (4,3,'3_1495598075.pdf','S2 - Program Studi blablabla Universitas Blabla 2004'),(5,4,'4_1499677491.png','Barcode');
/*!40000 ALTER TABLE `dosen_ijazah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_isbn`
--

DROP TABLE IF EXISTS `dosen_isbn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_isbn` (
  `id_isbn` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `link_isbn` text,
  `judul_isbn` text,
  PRIMARY KEY (`id_isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_isbn`
--

LOCK TABLES `dosen_isbn` WRITE;
/*!40000 ALTER TABLE `dosen_isbn` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_isbn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_jurnal`
--

DROP TABLE IF EXISTS `dosen_jurnal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_jurnal` (
  `id_jurnal` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_jurnal` text,
  `keterangan_jurnal` text,
  PRIMARY KEY (`id_jurnal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_jurnal`
--

LOCK TABLES `dosen_jurnal` WRITE;
/*!40000 ALTER TABLE `dosen_jurnal` DISABLE KEYS */;
INSERT INTO `dosen_jurnal` VALUES (2,3,'tes_1496901928.pdf','tes');
/*!40000 ALTER TABLE `dosen_jurnal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_keabsahan`
--

DROP TABLE IF EXISTS `dosen_keabsahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_keabsahan` (
  `id_keabsahan` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_keabsahan` text,
  `keterangan_keabsahan` text,
  PRIMARY KEY (`id_keabsahan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_keabsahan`
--

LOCK TABLES `dosen_keabsahan` WRITE;
/*!40000 ALTER TABLE `dosen_keabsahan` DISABLE KEYS */;
INSERT INTO `dosen_keabsahan` VALUES (2,3,'keabsahan_1496740381.pdf','keabsahan');
/*!40000 ALTER TABLE `dosen_keabsahan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_kepanitiaan`
--

DROP TABLE IF EXISTS `dosen_kepanitiaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_kepanitiaan` (
  `id_kepanitiaan` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_kepanitiaan` text,
  `keterangan_kepanitiaan` text,
  PRIMARY KEY (`id_kepanitiaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_kepanitiaan`
--

LOCK TABLES `dosen_kepanitiaan` WRITE;
/*!40000 ALTER TABLE `dosen_kepanitiaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_kepanitiaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_p_pak`
--

DROP TABLE IF EXISTS `dosen_p_pak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_p_pak` (
  `id_p_pak` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_p_pak` text,
  `keterangan_p_pak` text,
  PRIMARY KEY (`id_p_pak`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_p_pak`
--

LOCK TABLES `dosen_p_pak` WRITE;
/*!40000 ALTER TABLE `dosen_p_pak` DISABLE KEYS */;
INSERT INTO `dosen_p_pak` VALUES (2,3,'tes_1496732284.pdf','tes');
/*!40000 ALTER TABLE `dosen_p_pak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_pakerti`
--

DROP TABLE IF EXISTS `dosen_pakerti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_pakerti` (
  `id_pakerti` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_pakerti` text,
  `keterangan_pakerti` text,
  PRIMARY KEY (`id_pakerti`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_pakerti`
--

LOCK TABLES `dosen_pakerti` WRITE;
/*!40000 ALTER TABLE `dosen_pakerti` DISABLE KEYS */;
INSERT INTO `dosen_pakerti` VALUES (2,3,'pakerti_1496740431.pdf','pakerti');
/*!40000 ALTER TABLE `dosen_pakerti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_peer_preview`
--

DROP TABLE IF EXISTS `dosen_peer_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_peer_preview` (
  `id_peer_preview` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_peer_preview` text,
  `keterangan_peer_preview` text,
  PRIMARY KEY (`id_peer_preview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_peer_preview`
--

LOCK TABLES `dosen_peer_preview` WRITE;
/*!40000 ALTER TABLE `dosen_peer_preview` DISABLE KEYS */;
INSERT INTO `dosen_peer_preview` VALUES (2,3,'preview_1496740440.pdf','preview');
/*!40000 ALTER TABLE `dosen_peer_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_pelaksanaan_pendidikan`
--

DROP TABLE IF EXISTS `dosen_pelaksanaan_pendidikan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_pelaksanaan_pendidikan` (
  `id_pelaksanaan_pendidikan` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_pelaksanaan_pendidikan` text,
  `keterangan_pelaksanaan_pendidikan` text,
  PRIMARY KEY (`id_pelaksanaan_pendidikan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_pelaksanaan_pendidikan`
--

LOCK TABLES `dosen_pelaksanaan_pendidikan` WRITE;
/*!40000 ALTER TABLE `dosen_pelaksanaan_pendidikan` DISABLE KEYS */;
INSERT INTO `dosen_pelaksanaan_pendidikan` VALUES (3,3,'tes_1496739010.pdf','tes'),(4,3,'asik_1496739059.pdf','asik');
/*!40000 ALTER TABLE `dosen_pelaksanaan_pendidikan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_pelaksanaan_penelitian`
--

DROP TABLE IF EXISTS `dosen_pelaksanaan_penelitian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_pelaksanaan_penelitian` (
  `id_pelaksanaan_penelitian` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_pelaksanaan_penelitian` text,
  `keterangan_pelaksanaan_penelitian` text,
  PRIMARY KEY (`id_pelaksanaan_penelitian`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_pelaksanaan_penelitian`
--

LOCK TABLES `dosen_pelaksanaan_penelitian` WRITE;
/*!40000 ALTER TABLE `dosen_pelaksanaan_penelitian` DISABLE KEYS */;
INSERT INTO `dosen_pelaksanaan_penelitian` VALUES (2,3,'penelitian_1496739088.pdf','penelitian');
/*!40000 ALTER TABLE `dosen_pelaksanaan_penelitian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_pelaksanaan_pengabdian`
--

DROP TABLE IF EXISTS `dosen_pelaksanaan_pengabdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_pelaksanaan_pengabdian` (
  `id_pelaksanaan_pengabdian` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_pelaksanaan_pengabdian` text,
  `keterangan_pelaksanaan_pengabdian` text,
  PRIMARY KEY (`id_pelaksanaan_pengabdian`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_pelaksanaan_pengabdian`
--

LOCK TABLES `dosen_pelaksanaan_pengabdian` WRITE;
/*!40000 ALTER TABLE `dosen_pelaksanaan_pengabdian` DISABLE KEYS */;
INSERT INTO `dosen_pelaksanaan_pengabdian` VALUES (2,3,'pengabdian_1496739142.pdf','pengabdian');
/*!40000 ALTER TABLE `dosen_pelaksanaan_pengabdian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_pelaksanaan_penunjang`
--

DROP TABLE IF EXISTS `dosen_pelaksanaan_penunjang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_pelaksanaan_penunjang` (
  `id_pelaksanaan_penunjang` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_pelaksanaan_penunjang` text,
  `keterangan_pelaksanaan_penunjang` text,
  PRIMARY KEY (`id_pelaksanaan_penunjang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_pelaksanaan_penunjang`
--

LOCK TABLES `dosen_pelaksanaan_penunjang` WRITE;
/*!40000 ALTER TABLE `dosen_pelaksanaan_penunjang` DISABLE KEYS */;
INSERT INTO `dosen_pelaksanaan_penunjang` VALUES (2,3,'penunjang_1496739257.pdf','penunjang');
/*!40000 ALTER TABLE `dosen_pelaksanaan_penunjang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_pembicara`
--

DROP TABLE IF EXISTS `dosen_pembicara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_pembicara` (
  `id_pembicara` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_pembicara` text,
  `keterangan_pembicara` text,
  PRIMARY KEY (`id_pembicara`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_pembicara`
--

LOCK TABLES `dosen_pembicara` WRITE;
/*!40000 ALTER TABLE `dosen_pembicara` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_pembicara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_pengantar_rektor`
--

DROP TABLE IF EXISTS `dosen_pengantar_rektor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_pengantar_rektor` (
  `id_pengantar_rektor` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_pengantar_rektor` text,
  `keterangan_pengantar_rektor` text,
  PRIMARY KEY (`id_pengantar_rektor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_pengantar_rektor`
--

LOCK TABLES `dosen_pengantar_rektor` WRITE;
/*!40000 ALTER TABLE `dosen_pengantar_rektor` DISABLE KEYS */;
INSERT INTO `dosen_pengantar_rektor` VALUES (1,3,'tes','teslagi'),(3,3,'tes aja_1496730869.pdf','tes aja');
/*!40000 ALTER TABLE `dosen_pengantar_rektor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_pengesahan`
--

DROP TABLE IF EXISTS `dosen_pengesahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_pengesahan` (
  `id_pengesahan` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_pengesahan` text,
  `keterangan_pengesahan` text,
  PRIMARY KEY (`id_pengesahan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_pengesahan`
--

LOCK TABLES `dosen_pengesahan` WRITE;
/*!40000 ALTER TABLE `dosen_pengesahan` DISABLE KEYS */;
INSERT INTO `dosen_pengesahan` VALUES (2,3,'pengesahan_1496740384.pdf','pengesahan');
/*!40000 ALTER TABLE `dosen_pengesahan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_penyuluhan`
--

DROP TABLE IF EXISTS `dosen_penyuluhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_penyuluhan` (
  `id_penyuluhan` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_penyuluhan` text,
  `keterangan_penyuluhan` text,
  PRIMARY KEY (`id_penyuluhan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_penyuluhan`
--

LOCK TABLES `dosen_penyuluhan` WRITE;
/*!40000 ALTER TABLE `dosen_penyuluhan` DISABLE KEYS */;
INSERT INTO `dosen_penyuluhan` VALUES (2,3,'penyuluhan_1496740454.pdf','penyuluhan');
/*!40000 ALTER TABLE `dosen_penyuluhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_ppkp`
--

DROP TABLE IF EXISTS `dosen_ppkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_ppkp` (
  `id_ppkp` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_ppkp` text,
  `keterangan_ppkp` text,
  PRIMARY KEY (`id_ppkp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_ppkp`
--

LOCK TABLES `dosen_ppkp` WRITE;
/*!40000 ALTER TABLE `dosen_ppkp` DISABLE KEYS */;
INSERT INTO `dosen_ppkp` VALUES (2,3,'ppkp_1496740302.pdf','ppkp');
/*!40000 ALTER TABLE `dosen_ppkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_praktisi`
--

DROP TABLE IF EXISTS `dosen_praktisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_praktisi` (
  `id_praktisi` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_praktisi` text,
  `keterangan_praktisi` text,
  PRIMARY KEY (`id_praktisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_praktisi`
--

LOCK TABLES `dosen_praktisi` WRITE;
/*!40000 ALTER TABLE `dosen_praktisi` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_praktisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_prestasi`
--

DROP TABLE IF EXISTS `dosen_prestasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_prestasi` (
  `id_prestasi` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_prestasi` text,
  `keterangan_prestasi` text,
  PRIMARY KEY (`id_prestasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_prestasi`
--

LOCK TABLES `dosen_prestasi` WRITE;
/*!40000 ALTER TABLE `dosen_prestasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_prestasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_seminar`
--

DROP TABLE IF EXISTS `dosen_seminar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_seminar` (
  `id_seminar` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_seminar` text,
  `keterangan_seminar` text,
  PRIMARY KEY (`id_seminar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_seminar`
--

LOCK TABLES `dosen_seminar` WRITE;
/*!40000 ALTER TABLE `dosen_seminar` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_seminar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_sk_mengajar`
--

DROP TABLE IF EXISTS `dosen_sk_mengajar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_sk_mengajar` (
  `id_sk_mengajar` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_sk_mengajar` text,
  `keterangan_sk_mengajar` text,
  PRIMARY KEY (`id_sk_mengajar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_sk_mengajar`
--

LOCK TABLES `dosen_sk_mengajar` WRITE;
/*!40000 ALTER TABLE `dosen_sk_mengajar` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_sk_mengajar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_sk_pak`
--

DROP TABLE IF EXISTS `dosen_sk_pak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_sk_pak` (
  `id_sk_pak` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_sk_pak` text,
  `keterangan_sk_pak` text,
  PRIMARY KEY (`id_sk_pak`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_sk_pak`
--

LOCK TABLES `dosen_sk_pak` WRITE;
/*!40000 ALTER TABLE `dosen_sk_pak` DISABLE KEYS */;
INSERT INTO `dosen_sk_pak` VALUES (2,3,'data_1496734246.pdf','data');
/*!40000 ALTER TABLE `dosen_sk_pak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_sk_wali`
--

DROP TABLE IF EXISTS `dosen_sk_wali`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_sk_wali` (
  `id_sk_wali` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_sk_wali` text,
  `keterangan_sk_wali` text,
  PRIMARY KEY (`id_sk_wali`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_sk_wali`
--

LOCK TABLES `dosen_sk_wali` WRITE;
/*!40000 ALTER TABLE `dosen_sk_wali` DISABLE KEYS */;
INSERT INTO `dosen_sk_wali` VALUES (3,3,'tes lagi_1495787384.pdf','tes lagi');
/*!40000 ALTER TABLE `dosen_sk_wali` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_thesis`
--

DROP TABLE IF EXISTS `dosen_thesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_thesis` (
  `id_thesis` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_dosen` int(11) DEFAULT NULL,
  `file_thesis` text,
  `keterangan_thesis` text,
  PRIMARY KEY (`id_thesis`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_thesis`
--

LOCK TABLES `dosen_thesis` WRITE;
/*!40000 ALTER TABLE `dosen_thesis` DISABLE KEYS */;
INSERT INTO `dosen_thesis` VALUES (2,3,'tes_1496738329.pdf','tes');
/*!40000 ALTER TABLE `dosen_thesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_aktivitas`
--

DROP TABLE IF EXISTS `mhs_aktivitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_aktivitas` (
  `id_aktivitas` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_mahasiswa` int(11) DEFAULT NULL,
  `nama_aktifitas` varchar(50) DEFAULT NULL,
  `keterangan_aktivitas` text,
  PRIMARY KEY (`id_aktivitas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_aktivitas`
--

LOCK TABLES `mhs_aktivitas` WRITE;
/*!40000 ALTER TABLE `mhs_aktivitas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhs_aktivitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_bukti_bimbingan`
--

DROP TABLE IF EXISTS `mhs_bukti_bimbingan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_bukti_bimbingan` (
  `id_bimbingan` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_mahasiswa` int(11) DEFAULT NULL,
  `file_bimbingan` text,
  `keterangan_bimbingan` text,
  PRIMARY KEY (`id_bimbingan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_bukti_bimbingan`
--

LOCK TABLES `mhs_bukti_bimbingan` WRITE;
/*!40000 ALTER TABLE `mhs_bukti_bimbingan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhs_bukti_bimbingan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_bukti_khs`
--

DROP TABLE IF EXISTS `mhs_bukti_khs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_bukti_khs` (
  `id_bukti_khs` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_mahasiswa` int(11) DEFAULT NULL,
  `file_bukti_khs` text,
  `keterangan_bukti_khs` text,
  PRIMARY KEY (`id_bukti_khs`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_bukti_khs`
--

LOCK TABLES `mhs_bukti_khs` WRITE;
/*!40000 ALTER TABLE `mhs_bukti_khs` DISABLE KEYS */;
INSERT INTO `mhs_bukti_khs` VALUES (4,14,'prestasi_1496392329.jpg','tes'),(6,14,'prestasi_1496392358.png','tes lagi'),(7,14,'khs_1495015472.png','3');
/*!40000 ALTER TABLE `mhs_bukti_khs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_bukti_krs`
--

DROP TABLE IF EXISTS `mhs_bukti_krs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_bukti_krs` (
  `id_bukti_krs` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_mahasiswa` int(11) DEFAULT NULL,
  `file_bukti_krs` text,
  `keterangan_bukti_krs` text,
  PRIMARY KEY (`id_bukti_krs`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_bukti_krs`
--

LOCK TABLES `mhs_bukti_krs` WRITE;
/*!40000 ALTER TABLE `mhs_bukti_krs` DISABLE KEYS */;
INSERT INTO `mhs_bukti_krs` VALUES (2,14,'krs_1496632843.jpg','221'),(3,NULL,'krs_1496632948.jpg',NULL);
/*!40000 ALTER TABLE `mhs_bukti_krs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_bukti_spp`
--

DROP TABLE IF EXISTS `mhs_bukti_spp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_bukti_spp` (
  `id_bukti_spp` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_mahasiswa` int(11) DEFAULT NULL,
  `file_bukti_spp` text,
  `keterangan_bukti_spp` text,
  PRIMARY KEY (`id_bukti_spp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_bukti_spp`
--

LOCK TABLES `mhs_bukti_spp` WRITE;
/*!40000 ALTER TABLE `mhs_bukti_spp` DISABLE KEYS */;
INSERT INTO `mhs_bukti_spp` VALUES (1,NULL,'spp_1496629295.jpg',NULL),(3,14,'spp_1496629450.png','tes2');
/*!40000 ALTER TABLE `mhs_bukti_spp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_mou`
--

DROP TABLE IF EXISTS `mhs_mou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_mou` (
  `id_mou` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_mahasiswa` int(11) DEFAULT NULL,
  `file_mou` text,
  `keterangan_mou` text,
  PRIMARY KEY (`id_mou`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_mou`
--

LOCK TABLES `mhs_mou` WRITE;
/*!40000 ALTER TABLE `mhs_mou` DISABLE KEYS */;
INSERT INTO `mhs_mou` VALUES (2,14,'mou_1495173788.jpg','tes');
/*!40000 ALTER TABLE `mhs_mou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_peradilan_semu`
--

DROP TABLE IF EXISTS `mhs_peradilan_semu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_peradilan_semu` (
  `id_peradilan` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_mahasiswa` int(11) DEFAULT NULL,
  `file_peradilan` text,
  `keterangan_peradilan` text,
  PRIMARY KEY (`id_peradilan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_peradilan_semu`
--

LOCK TABLES `mhs_peradilan_semu` WRITE;
/*!40000 ALTER TABLE `mhs_peradilan_semu` DISABLE KEYS */;
INSERT INTO `mhs_peradilan_semu` VALUES (5,14,'peradilan_1496375920.jpg','tes lagi\r\n');
/*!40000 ALTER TABLE `mhs_peradilan_semu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_prestasi`
--

DROP TABLE IF EXISTS `mhs_prestasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_prestasi` (
  `id_prestasi` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_mahasiswa` int(11) DEFAULT NULL,
  `file_prestasi` text,
  `keterangan_prestasi` text,
  PRIMARY KEY (`id_prestasi`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_prestasi`
--

LOCK TABLES `mhs_prestasi` WRITE;
/*!40000 ALTER TABLE `mhs_prestasi` DISABLE KEYS */;
INSERT INTO `mhs_prestasi` VALUES (5,14,'prestasi_1496224950.jpg','Juara 1 Lomba .....'),(6,14,'prestasi_1496632398.jpg','Juara 1 Lomba .....');
/*!40000 ALTER TABLE `mhs_prestasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_ta`
--

DROP TABLE IF EXISTS `mhs_ta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_ta` (
  `id_ta` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_mahasiswa` int(11) DEFAULT NULL,
  `judul_ta` varchar(100) DEFAULT NULL,
  `fk_dosen_1` int(11) DEFAULT NULL,
  `fk_dosen_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_ta`
--

LOCK TABLES `mhs_ta` WRITE;
/*!40000 ALTER TABLE `mhs_ta` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhs_ta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_transkip_nilai`
--

DROP TABLE IF EXISTS `mhs_transkip_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_transkip_nilai` (
  `id_transkip` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_mahasiswa` int(11) DEFAULT NULL,
  `file_transkip` text,
  `keterangan_transkip` text,
  PRIMARY KEY (`id_transkip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_transkip_nilai`
--

LOCK TABLES `mhs_transkip_nilai` WRITE;
/*!40000 ALTER TABLE `mhs_transkip_nilai` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhs_transkip_nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_about_bem`
--

DROP TABLE IF EXISTS `tbl_about_bem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_about_bem` (
  `id_about_bem` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan_about_bem` text,
  `struktur_about_bem` text,
  PRIMARY KEY (`id_about_bem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_about_bem`
--

LOCK TABLES `tbl_about_bem` WRITE;
/*!40000 ALTER TABLE `tbl_about_bem` DISABLE KEYS */;
INSERT INTO `tbl_about_bem` VALUES (1,'Badan Eksekutif Mahasiswa Fakultas Hukum Universitas Bhayangkara Surabaya (BEM FH UBHARA) merupakan badan penyelenggara fungsi eksekutif di lingkungan Fakultas Hukum Universitas Ubhara. Diketuai oleh ....... dan ........, serta dibantu oleh 7 orang Pengurus Inti, 32 orang Badan Pengurus Harian, dan 156 orang staff. BEM FH UBHARA 2017 mengusung nilai dasar Proaktif, Aspiratif, Inklusif, Kebersamaan, Dedikatif serta Bermanfaat.','struktur_organisasi_bem_1497867204.jpeg');
/*!40000 ALTER TABLE `tbl_about_bem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_about_rs`
--

DROP TABLE IF EXISTS `tbl_about_rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_about_rs` (
  `id_about_rs` int(1) NOT NULL,
  `keterangan_about_rs` text,
  PRIMARY KEY (`id_about_rs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_about_rs`
--

LOCK TABLES `tbl_about_rs` WRITE;
/*!40000 ALTER TABLE `tbl_about_rs` DISABLE KEYS */;
INSERT INTO `tbl_about_rs` VALUES (1,'<p>Terdapat Ruang Sidang sebagai fasilitas belajar mengajar bagi mahasiswa..</p>\r\n');
/*!40000 ALTER TABLE `tbl_about_rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_about_su`
--

DROP TABLE IF EXISTS `tbl_about_su`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_about_su` (
  `id_about_su` int(1) NOT NULL,
  `keterangan_about_su` text,
  PRIMARY KEY (`id_about_su`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_about_su`
--

LOCK TABLES `tbl_about_su` WRITE;
/*!40000 ALTER TABLE `tbl_about_su` DISABLE KEYS */;
INSERT INTO `tbl_about_su` VALUES (1,'<p>Terdapat Sarana Umum sebagai fasilitas belajar mengajar bagi mahasiswa..</p>\r\n');
/*!40000 ALTER TABLE `tbl_about_su` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_background`
--

DROP TABLE IF EXISTS `tbl_background`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_background` (
  `id_background` int(11) NOT NULL AUTO_INCREMENT,
  `file_background` varchar(50) DEFAULT NULL,
  `kategori_background` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_background`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_background`
--

LOCK TABLES `tbl_background` WRITE;
/*!40000 ALTER TABLE `tbl_background` DISABLE KEYS */;
INSERT INTO `tbl_background` VALUES (1,'latar_belakang_1498114701.jpg','0'),(8,'slide_show_1498124294.jpg','1'),(9,'slide_show_1498124357.jpg','1'),(10,'slide_show_1498124368.jpg','1');
/*!40000 ALTER TABLE `tbl_background` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_blog`
--

DROP TABLE IF EXISTS `tbl_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_blog` (
  `id_blog` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_blog` datetime DEFAULT NULL,
  `judul_blog` varchar(100) DEFAULT NULL,
  `isi_blog` text,
  `gambar_blog` text,
  `keterangan_blog` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_blog`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_blog`
--

LOCK TABLES `tbl_blog` WRITE;
/*!40000 ALTER TABLE `tbl_blog` DISABLE KEYS */;
INSERT INTO `tbl_blog` VALUES (12,'2017-06-22 16:14:26','Informasi Akreditasi','<p>Sesuai dengan peraturan perundang-undangan yang berlaku, Fakultas Hukum dilaksanakan dengan monoprogram yaitu jurusan Ilmu Hukum yang sudah terakreditasi dengan status &ldquo;Terakreditasi B&rdquo; .</p>\r\n','blog_1497336258.jpg',NULL);
/*!40000 ALTER TABLE `tbl_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dosen`
--

DROP TABLE IF EXISTS `tbl_dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_dosen` (
  `id_dosen` int(11) NOT NULL AUTO_INCREMENT,
  `foto_dosen` text,
  `nik_dosen` varchar(15) DEFAULT NULL,
  `password_dosen` text,
  `nama_dosen` text,
  `tempat_lahir_dosen` varchar(15) DEFAULT NULL,
  `tanggal_lahir_dosen` date DEFAULT '0000-00-00',
  `alamat_dosen` text,
  `agama_dosen` varchar(15) DEFAULT NULL,
  `kewarganegaraan_dosen` varchar(20) DEFAULT NULL,
  `golongan_darah_dosen` varchar(2) DEFAULT NULL,
  `status_dosen` varchar(20) DEFAULT NULL,
  `telp_dosen` varchar(50) DEFAULT NULL,
  `email_dosen` varchar(50) DEFAULT NULL,
  `file_status_dosen` text,
  `keterangan_status_dosen` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dosen`
--

LOCK TABLES `tbl_dosen` WRITE;
/*!40000 ALTER TABLE `tbl_dosen` DISABLE KEYS */;
INSERT INTO `tbl_dosen` VALUES (3,'dosen_1497840115.jpg','11111','okedeh','dhana','adoh2','2017-06-07','sidoarjo','islam','ri','AB','menikah','098765','dhana@gmail.com','sk_dos_14968907813.jpg','Dosen Tetap'),(4,'dosen_1499677435.jpg','0812020',NULL,'Dimas ','Surabaya','2017-07-11','sjsi','Islam','Indonesia','O','Lajang','08123006030','dimas@ubhara.ac.id',NULL,NULL);
/*!40000 ALTER TABLE `tbl_dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_download`
--

DROP TABLE IF EXISTS `tbl_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_download` (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `file_download` text,
  `nama_download` varchar(100) DEFAULT NULL,
  `keterangan_download` text,
  `kategori_download` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_download`
--

LOCK TABLES `tbl_download` WRITE;
/*!40000 ALTER TABLE `tbl_download` DISABLE KEYS */;
INSERT INTO `tbl_download` VALUES (6,'1008_k-pdt-2016_1497422927.pdf','1008_k-pdt-2016','Berkas Hukum Perdata',2),(7,'1009_K-PDT-2016-ttd_1497425582.pdf','1009_K-PDT-2016-ttd','Berkas Hukum Perdata',2);
/*!40000 ALTER TABLE `tbl_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_gallery`
--

DROP TABLE IF EXISTS `tbl_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_gallery` (
  `id_gallery` int(11) NOT NULL AUTO_INCREMENT,
  `namafile_gallery` text,
  `type_gallery` varchar(10) DEFAULT NULL,
  `keterangan_gallery` text,
  `kategori_gallery` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_gallery`
--

LOCK TABLES `tbl_gallery` WRITE;
/*!40000 ALTER TABLE `tbl_gallery` DISABLE KEYS */;
INSERT INTO `tbl_gallery` VALUES (26,'file_1494929924.jpg','image/jpeg','tesw',5),(28,'file_1495595264.JPG','image/jpeg','Rapat Dengan PERADI JATIM',2),(29,'file_1495595350.JPG','image/jpeg','Dengan Peradi Jatim',2),(30,'file_1495595692.JPG','image/jpeg','Nota Kesepahaman',2),(31,'file_1496029872.JPG','image/jpeg','Kuliah perdana mahasiswa baru 10 september 2013',4),(32,'file_1496030185.JPG','image/jpeg','Ruang Sidang',1),(33,'file_1497325862.jpg','image/jpeg','',1),(34,'file_1497325908.jpg','image/jpeg','',1),(35,'file_1497325932.jpg','image/jpeg','',1),(36,'file_1497326123.jpg','image/jpeg','',1),(37,'file_1497326332.jpg','image/jpeg','',1),(38,'file_1497326374.jpg','image/jpeg','',1);
/*!40000 ALTER TABLE `tbl_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_gallery_bem`
--

DROP TABLE IF EXISTS `tbl_gallery_bem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_gallery_bem` (
  `id_gallery_bem` int(11) NOT NULL AUTO_INCREMENT,
  `file_gallery_bem` text,
  `keterangan_gallery_bem` text,
  PRIMARY KEY (`id_gallery_bem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_gallery_bem`
--

LOCK TABLES `tbl_gallery_bem` WRITE;
/*!40000 ALTER TABLE `tbl_gallery_bem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_gallery_bem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_info_beasiswa`
--

DROP TABLE IF EXISTS `tbl_info_beasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_info_beasiswa` (
  `id_beasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_beasiswa` varchar(50) DEFAULT NULL,
  `sumber_dana` varchar(50) DEFAULT NULL,
  `info_beasiswa` text,
  PRIMARY KEY (`id_beasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_info_beasiswa`
--

LOCK TABLES `tbl_info_beasiswa` WRITE;
/*!40000 ALTER TABLE `tbl_info_beasiswa` DISABLE KEYS */;
INSERT INTO `tbl_info_beasiswa` VALUES (1,'Beasiswa Prestasi Akademik','DIKTI','Beasiswa Prestasi Akademik adalah beasiswa yang diberikan untuk mahasiswa yang unggul dalam prestasi akademik'),(2,'Beasiswa Akademik','tes2','Beasiswa Prestasi Akademik adalah beasiswa yang diberikan untuk mahasiswa yang unggul dalam prestasi akademik');
/*!40000 ALTER TABLE `tbl_info_beasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kerjasama`
--

DROP TABLE IF EXISTS `tbl_kerjasama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kerjasama` (
  `id_kerjasama` int(11) NOT NULL AUTO_INCREMENT,
  `judul_kerjasama` varchar(30) DEFAULT NULL,
  `isi_kerjasama` text,
  `gambar_kerjasama` text,
  `kategori_kerjasama` int(11) DEFAULT NULL,
  `file_kerjasama` text,
  PRIMARY KEY (`id_kerjasama`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kerjasama`
--

LOCK TABLES `tbl_kerjasama` WRITE;
/*!40000 ALTER TABLE `tbl_kerjasama` DISABLE KEYS */;
INSERT INTO `tbl_kerjasama` VALUES (22,'kerjasama_mk','berkas kerjasama dengan MK','kerjasama_1498118138.png',1,'kerjasama_mk_1498118138.pdf'),(23,'kerjasama_kompolnas','berkas kerjasama dengan kompolnas	','kerjasama_1498118390.png',2,'kerjasama_kompolnas_1498118389.pdf'),(24,'kerjasama_ky','berkas kerjasama denga KY','kerjasama_1498120696.png',3,'kerjasama_ky_1498120696.pdf'),(25,'kerjasama_rri','berkas kerjasama dengan rri','kerjasama_1498120868.png',4,'kerjasama_rri_1498120868.pdf'),(26,'kerjasama_kai','berkas kerjasama dengan kai','kerjasama_1498121063.png',5,'kerjasama_kai_1498121063.pdf'),(27,'kerjasama_peradi','berkas kerjasama dengan peradi','kerjasama_1498121209.png',6,'kerjasama_peradi_1498121209.pdf');
/*!40000 ALTER TABLE `tbl_kerjasama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kontak`
--

DROP TABLE IF EXISTS `tbl_kontak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kontak` (
  `id_kontak` int(1) NOT NULL,
  `telp_kontak` varchar(20) DEFAULT NULL,
  `email_kontak` varchar(50) DEFAULT NULL,
  `alamat_kontak` text,
  `web_kontak` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kontak`
--

LOCK TABLES `tbl_kontak` WRITE;
/*!40000 ALTER TABLE `tbl_kontak` DISABLE KEYS */;
INSERT INTO `tbl_kontak` VALUES (1,'031-8285602 ','murry.damoko@gmail.com ','Jl. Ahmad Yani 114, Surabaya, Jawa Timur 60231, Indonesia','fh.ubhara.ac.id');
/*!40000 ALTER TABLE `tbl_kontak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mahasiswa`
--

DROP TABLE IF EXISTS `tbl_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `nim_mahasiswa` varchar(15) DEFAULT NULL,
  `password_mahasiswa` text,
  `nama_mahasiswa` varchar(50) DEFAULT NULL,
  `tempat_lahir_mahasiswa` varchar(20) DEFAULT NULL,
  `tanggal_lahir_mahasiswa` date DEFAULT '0000-00-00',
  `agama_mahasiswa` varchar(15) DEFAULT NULL,
  `alamat_mahasiswa` text,
  `telp_mahasiswa` varchar(50) DEFAULT NULL,
  `email_mahasiswa` varchar(50) DEFAULT NULL,
  `status_mahasiswa` int(1) DEFAULT '1',
  `foto_mahasiswa` text,
  `kerja_mahasiswa` text,
  `ktm_mahasiswa` text,
  `judul_ta_mahasiswa` varchar(100) DEFAULT NULL,
  `dosen_pembimbing_1` varchar(50) DEFAULT NULL,
  `dosen_pembimbing_2` varchar(50) DEFAULT NULL,
  `file_skripsi` text,
  `file_kkn` text,
  `keterangan_kkn` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mahasiswa`
--

LOCK TABLES `tbl_mahasiswa` WRITE;
/*!40000 ALTER TABLE `tbl_mahasiswa` DISABLE KEYS */;
INSERT INTO `tbl_mahasiswa` VALUES (12,'12345','okedeh','kukuh',NULL,NULL,'islam','janti','081xxxxxxxx','kukuh',0,'mhs_1496127574.JPG','PT. Maju Jaya',NULL,'Ini judul TA','dos1','dos3',NULL,NULL,NULL),(14,'13043070','tes','dapit','surabaya','0000-00-00','Islam','Surabaya','085676141764','dapit@gmail.com',1,'mhs_1496123041.jpg',NULL,NULL,NULL,NULL,NULL,'tes','kkn_1496633469.jpg','KKN 2018'),(15,'13043072','13043072','david','surabaya','2017-05-22','islam','janti','0822347613899','ardydapit@gmail.com',1,'mhs_1495418558.jpg',NULL,NULL,'cerita si kancil','dos1','dos22','skripsi_1494924174.pdf','kkn_1497580160.jpg','KKN 2017'),(16,'13043073','12345678','dapp','sidoarjo','2017-06-07','islam','janti2','083','ardydapit@gmail.com',1,'mhs_1496975766.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'78009',NULL,'','','0000-00-00','','','','',1,'mhs_1500086444.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mailbox`
--

DROP TABLE IF EXISTS `tbl_mailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mailbox` (
  `id_mailbox` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mailbox` varchar(20) DEFAULT NULL,
  `email_mailbox` varchar(50) DEFAULT NULL,
  `pesan_mailbox` text,
  `status_mailbox` int(1) DEFAULT '1',
  PRIMARY KEY (`id_mailbox`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mailbox`
--

LOCK TABLES `tbl_mailbox` WRITE;
/*!40000 ALTER TABLE `tbl_mailbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_mailbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_master_surat`
--

DROP TABLE IF EXISTS `tbl_master_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_master_surat` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `isi_surat` text,
  `level_surat` int(11) DEFAULT NULL,
  `kop_surat` varchar(10) DEFAULT NULL,
  `nama_surat` varchar(50) DEFAULT NULL,
  `keterangan_surat` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_master_surat`
--

LOCK TABLES `tbl_master_surat` WRITE;
/*!40000 ALTER TABLE `tbl_master_surat` DISABLE KEYS */;
INSERT INTO `tbl_master_surat` VALUES (1,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Yth. Wakil Rektor II<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Universitas Bhayangkara<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<u>SURABAYA</u></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Dengan hormat,</p>\r\n\r\n			<ol>\r\n				<li>Dasar :<br />\r\n				Surat pemberitahuan dari Biro Kemahasiswaan dan Alumni,nomor 059/BKA/VII/2016/UBHARA,tertanggal 25 Juli 2016,tentang Penerimaan Bantuan Biaya Pendidikan.<br />\r\n				&nbsp;</li>\r\n				<li>Sehubungan dasar tersebut diatas,bersama ini kami kirimkan berkas nama mahasiswa yang diajukan untuk mendapatkan beasiswa tersebut.(terlampir)</li>\r\n			</ol>\r\n\r\n			<p>Demikian,atas perhatian dan kerjasamanya kami sampaikan terima kasih.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\"><br />\r\n			<br />\r\n			Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>Dr. ismu Gunadi W., SH., M.Hum., CH., MM.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Rektor Ubhara (sebagai laporan)<br />\r\n			2. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'1','Surat Permohonan Beasiswa',NULL),(2,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Yth. Wakil Rektor II<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Universitas Bhayangkara<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<u>SURABAYA</u></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Dengan hormat :</p>\r\n\r\n			<ol>\r\n				<li>Rujukan :&nbsp;<br />\r\n				Surat Undangan dari Keluarga Alumni Universitas Wijaya Kusuma Surabaya, tentang Seminar Nasional dengan Tema &quot;Relevansi Makar Dalam Era Reformasi di Indonesia&quot;.<br />\r\n				&nbsp;</li>\r\n				<li>Sehubungan Rujukan tersebut diatas, bersama ini kami mengajukan permohonan surat perintah jalan atas nama Jamil, SH., MH. untuk menghadiri kegiatan tersebut.<br />\r\n				&nbsp;</li>\r\n				<li>Adapun acara tersebut dilaksanakan pada :\r\n				<ul>\r\n					<table>\r\n						<tr>\r\n							<td>Hari / Tanggal</td><td> : Kamis, 5 Mei 2017</td> \r\n						</tr>\r\n						<tr>\r\n							<td>Tempat</td><td> : </td> \r\n						</tr>\r\n						<tr>\r\n							<td>Waktu</td><td> : </td> \r\n						</tr>\r\n						<tr>\r\n							<td>Acara</td><td> : </td> \r\n						</tr>\r\n					</table>\r\n				</ul>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>Demikian permohonan kami, atas kerjasamanya disampaikan terima kasih dan mohon kabar.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\"><br />\r\n			<br />\r\n			Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>Dr. ismu Gunadi W., SH., M.Hum., CH., MM.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Rektor Ubhara (sebagai laporan)<br />\r\n			2. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'1','Surat Perintah Jalan (1)',NULL),(3,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Yth. Wakil Rektor II<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Universitas Bhayangkara<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<u>SURABAYA</u></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Dengan Hormat,</p>\r\n\r\n			<ol>\r\n				<li>Dasar :\r\n				<ul>\r\n					<li>Program Kerja Anggaran Fakultas Hukum Universitas Bhayangkara Surabaya tahun 2017.</li>\r\n					<li>Nota Kesepahaman Nomor 602/RRI-SBY/VI/2009, tanggal 3 juni 2009, Perihal mengisi Program Siaran Radio tentang Dialog Hukum.<br />\r\n					&nbsp;</li>\r\n				</ul>\r\n				</li>\r\n				<li>Sehubungan dasar tersebut di atas, bersama ini kami mengajukan permohonan untuk dapatnya diterbitkan Surat Perintah Jalan bagi Dosen Fakultas Hukum yang bertugas untuk mengisi acara siaran di RRI Surabaya Tentang Permasalahan Hukum, No. MA. 33903 bulan April 2017 (4 kali siaran), sebesar Rp 280.000,-(dua ratus delapan puluh ribu rupiah).<br />\r\n				&nbsp;</li>\r\n				<li>Adapun pelaksanaan program Siaran RRI Surabaya sebagaimana terlampir.</li>\r\n			</ol>\r\n\r\n			<p>Demikian, atas perhatian dan kerjasama disampaikan terima kasih.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\"><br />\r\n			<br />\r\n			Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>Dr. ismu Gunadi W., SH., M.Hum., CH., MM.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Rektor Ubhara (sebagai laporan)<br />\r\n			2. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'1','Surat Perintah Jalan (2)',NULL),(4,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Yth. Ka. BAU<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Universitas Bhayangkara<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<u>SURABAYA</u></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Dengan hormat,</p>\r\n\r\n			<ol>\r\n				<li>Rujukan Kalender Akademik Semester Genap T.A. 2016/2017.<br />\r\n				&nbsp;</li>\r\n				<li style=\"text-align:justify\">Sehubungan dengan hal tersebut di atas dan akan dimulainya Ujian Akhir Semester Gasal TA. 2016/2017 maka bersama ini kami mohon untuk dapatnya diberikan ATK guna kelancaran administrasi dan UAS Gasal T.A 2016/2017 Fakultas Hukum UBHARA Surabaya.<br />\r\n				Adapun kebutuhan yang kami perlukan sebagai berikut:\r\n				<ul>\r\n					<li>Kertas Folio bergaris untuk lembar jawaban UAS&nbsp;(<strong>27 rim</strong>)</li>\r\n					<li>Amplop coklat besar untuk berkas ujian&nbsp;(<strong>8 rim</strong>)</li>\r\n					<li>Amplop coklat tanggung untuk soal ujian (<strong>8 rim</strong>)</li>\r\n					<li>Kertas polos putih ukuran HVS (<strong>10 rim</strong>)</li>\r\n					<li>Spidol whiteboard warna biru (<strong>10 pak</strong>)</li>\r\n					<li>Tinta printer Canon warna hitam merk Platinum botol besar (<strong>4 botol</strong>)</li>\r\n					<li>Tinta printer Epson warna hitam merk Bk T6641 (<strong>2 botol</strong>)</li>\r\n					<li>Baterei kotak untuk mic tanpa kabel merk Alkaline (<strong>15 buah</strong>)</li>\r\n					<li>Baterei kecil AAA(A3) untuk mic duduk merk Alkalin (<strong>20 buah</strong>)</li>\r\n					<li>Tisu kotak (<strong>3 buah</strong>)</li>\r\n					<li>Pengharum ruangan (<strong>15 buah</strong>)</li>\r\n					<li>Kertas computer form ukuran 9<sup>1/2&quot;</sup> x 11&quot; 2 play untuk presensi UAS (<strong>3 box</strong>)</li>\r\n					<li>Kertas computer form ukuran 9<sup>1/2&quot;</sup> x 11&quot; 1 play untuk presensi kuliah (<strong>4 box</strong>)</li>\r\n					<li>Tali raffia (<strong>1 glondong</strong>)</li>\r\n				</ul>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>Demikian atas bantuan dan perhatiannya kami sampaikan terima kasih.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\"><br />\r\n			<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Djoko Tjahjono, S.Sos.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Dekan FH Ubhara Surabaya<br />\r\n			2. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'1','Surat Pengajuan ATK',NULL),(5,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kepada Yth.&nbsp;:<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bpk/Ibu...............................................<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dosen Fakultas Hukum<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Universitas Bhayangkara Surabaya<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tempat</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ol>\r\n				<li style=\"text-align: justify;\">Dasar :<br />\r\n				Kalender Akademik UBHARA T.A. 2016/2017 tentang jadwal pelaksanaan kegiatan belajar mengajar semester genap.<br />\r\n				&nbsp;</li>\r\n				<li style=\"text-align: justify;\">Sehubungan dengan dasar tersebut di atas,mengharap kehadiran bapak/ibu dosen Fakultas Hukum untuk mengikuti pertemuan :<br />\r\n				&nbsp;\r\n				<table>\r\n					<tbody>\r\n						<tr>\r\n							<td>Hari</td>\r\n							<td>:</td>\r\n							<td>Kamis</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Tanggal</td>\r\n							<td>:</td>\r\n							<td>5 Mei 2017</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Pukul</td>\r\n							<td>:</td>\r\n							<td>&nbsp;</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Tempat</td>\r\n							<td>:</td>\r\n							<td>&nbsp;</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Acara</td>\r\n							<td>:</td>\r\n							<td>&nbsp;</td>\r\n						</tr>\r\n						<tr>\r\n							<td colspan=\"3\">\r\n							<ol>\r\n								<li>Evaluasi Proses Belajar Mengajar</li>\r\n								<li>Ploting Dosen</li>\r\n								<li>Lain-lain.</li>\r\n							</ol>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n				&nbsp;</li>\r\n			</ol>\r\n\r\n			<p>Demikian Undangan ini kami buat. Atas perhatian dan kerja samanya di haturkan terima kasih.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\"><br />\r\n			<br />\r\n			Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>Dr. ismu Gunadi W., SH., M.Hum., CH., MM.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'1','Surat Undangan',NULL),(6,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Yth. Ka. BAU<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Universitas Bhayangkara<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<u>SURABAYA</u></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Dengan hormat,</p>\r\n\r\n			<ol>\r\n				<li style=\"text-align: justify;\">Rujukan laporan Wakil Dekan II Fakultas Hukum Ubhara Surabaya.<br />\r\n				&nbsp;</li>\r\n				<li style=\"text-align: justify;\">Sehubungan dengan hal tersebut di atas bersama ini kami mohon dapatnya perbaikan printer Wakil Dekan II Fakultas Hukum Ubhara Surabaya merk Canon, type ip1980.</li>\r\n			</ol>\r\n\r\n			<p style=\"text-align:justify\">Demikian atas bantuan dan kerjasamanya kami sampaikan terima kasih.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\"><br />\r\n			<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Djoko Tjahjono, S.Sos.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Dekan FH Ubhara Surabaya<br />\r\n			2. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'1','Surat Pengajuan Perbaikan',NULL),(7,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Yth. Bpk. Drs. H. Hasan Bisri, S.H.,M.H.<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(Hakim Pengadilan Tinggi Agama Surabaya)<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<u>SURABAYA</u></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Dengan hormat :</p>\r\n\r\n			<ol>\r\n				<li style=\"text-align: justify;\">Rujukan :&nbsp;<br />\r\n				Memorandum of Agreement antara Fakultas Hukum Universitas Bhayangkara Surabaya dengan Dewan Pimpinan Cabang Perhimpunan Advokat Indonesia (PERADI) kota Surabaya tentang kerjasama untuk pelaksanaan Try Out, Ujian Profesi Advokat (UPA) serta Pendidikan Khusus Profesi Advokat (PKPA), Nomor 04/MOA/V/2016/UBHARA,tanggal 13 Mei 2016.<br />\r\n				&nbsp;</li>\r\n				<li style=\"text-align: justify;\">Sehubungan dengan point 1 (satu), bersama ini kami mengajukan permohonan kepada Bapak Drs. H. Hasan Bisri, S.H., M.H. agar berkenan memberikan materi dalam Pendidikan Khusus Profesi Advokat (PKPA) Perhimpunan Advokat Indonesia (PERADI), yang diselenggarakan pada :\r\n				<table>\r\n					<tbody>\r\n						<tr>\r\n							<td>Hari / Tanggal</td>\r\n							<td>: Kamis, 5 Mei 2017</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Jam</td>\r\n							<td>:</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Tempat</td>\r\n							<td>:</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Materi</td>\r\n							<td>:</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>Demikian permohonan kami, atas kerjasamanya disampaikan terima kasih dan mohon kabar.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\"><br />\r\n			<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Wakil Dekan I,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;M. A. Razak, S.H., M.H.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Rektor Ubhara (Sebagai Laporan)<br />\r\n			2. Ketua DPC Peradi Surabaya<br />\r\n			3. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'1','Permohonan Sebagai Pemateri',NULL),(8,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Pada hari ini, Rabu, tanggal 22 Februari 2017, Tim Penguji Skripsi tersebut dibawah ini telah melakukan pengujian terhadap skripsi mahasiswa:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N a m a</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N I M</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arah Minat</td>\r\n			<td>:</td>\r\n			<td>PIDANA/PERDATA/TATA NEGARA*)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Judul Skripsi</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"text-align:justify\">Setelah Tim melakukan pengujian terhadap skripsi dan mempertimbangkan kemampuan ybs. dalam mempertahankan materi skripsi, maka tim menetapkan bahwa mahasiswa ybs dinyatakan : LULUS/LULUS DENGAN CATATAN PERBAIKAN/TIDAK LULUS*) dengan ini : A B C D E **)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Demikian Berita Acara ini dibuat untuk dipergunakan sebagaimana mestinya</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mahasiswa ybs.:</td>\r\n			<td style=\"width:50%\">Surabaya, 22 Februari 2017<br />\r\n			Tim penguji:<br />\r\n			1)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><u>........................................................</u></td>\r\n			<td style=\"width:50%\">\r\n			<hr /></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mengetahui:<br />\r\n			Dekan Fakultas Hukum,</td>\r\n			<td style=\"width:50%\">2)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<hr /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Ismu Gunadi W,SH.,M.HUM.,CN.,MM</td>\r\n			<td>3)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<hr /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Keterangan:<br />\r\n			*)&nbsp;&nbsp;&nbsp;&nbsp;coret yang tidak perlu<br />\r\n			**)&nbsp;&nbsp;lingkari huruf yang di maksud</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n',NULL,'2','BERITA ACARA UJIAN SKRIPSI','BA/US'),(9,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Pada hari ini, Kamis, tanggal 23 April 2017, Tim Penguji Proposal Skripsi tersebut dibawah ini telah melakukan pengujian terhadap Proposal skripsi mahasiswa :</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N a m a</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N I M</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arah Minat</td>\r\n			<td>:</td>\r\n			<td>PIDANA/PERDATA/TATA NEGARA*)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Judul Skripsi</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"text-align:justify\">Setelah Tim melakukan pengujian terhadap proposal skripsi dan mempertimbangkan kemampuan ybs. dalam mempertahankan materi proposal skripsi, maka tim menetapkan bahwa mahasiswa ybs dinyatakan : LAYAK/LAYAK DENGAN CATATAN PERBAIKAN/TIDAK LAYAK untuk melanjutkan penulisan skripsi.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Demikian Berita Acara ini dibuat untuk dipergunakan sebagaimana mestinya</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mahasiswa ybs.:</td>\r\n			<td style=\"width:50%\">Surabaya, 22 Februari 2017<br />\r\n			Tim penguji:<br />\r\n			1)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><u>........................................................</u></td>\r\n			<td style=\"width:50%\">\r\n			<hr /></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mengetahui:<br />\r\n			Dekan Fakultas Hukum,</td>\r\n			<td style=\"width:50%\">2)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<hr /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Ismu Gunadi W,SH.,M.HUM.,CN.,MM</td>\r\n			<td>3)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<hr /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Keterangan:<br />\r\n			*)&nbsp;&nbsp;&nbsp;&nbsp;coret yang tidak perlu<br />\r\n			**)&nbsp;&nbsp;lingkari huruf yang di maksud</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n',NULL,'2','BERITA ACARA UJIAN PROPOSAL SKRIPSI','BA/US'),(10,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Dasar</td>\r\n			<td>:</td>\r\n			<td style=\"width:5%\">1.</td>\r\n			<td colspan=\"3\">Surat dari Dir. Pidum Bareskrim polri</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n			<td style=\"width:5%\">Nomor</td>\r\n			<td style=\"width:1%\">:</td>\r\n			<td>33 subdit/1/1/2015</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n			<td style=\"width:5%\">Perihal</td>\r\n			<td style=\"width:1%\">:</td>\r\n			<td>Bantuan Keterangan Ahli Hukum Pidana</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n			<td style=\"width:5%\">Tanggal</td>\r\n			<td style=\"width:1%\">:</td>\r\n			<td>23 Januari 2015</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td style=\"width:5%\">2.</td>\r\n			<td colspan=\"3\">Surat panggilan</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n			<td style=\"width:5%\">Nomor</td>\r\n			<td style=\"width:1%\">:</td>\r\n			<td>spg/216 subdit/1/1/2015/Dit Tipidum</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n			<td style=\"width:5%\">Tanggal</td>\r\n			<td style=\"width:1%\">:</td>\r\n			<td>28 Januari 2015</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ditugaskan kepada</td>\r\n			<td>:</td>\r\n			<td colspan=\"4\">Dr. Ismu Gunadi W., SH., M.Hum, CN., MM.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jabatan/Pangkat</td>\r\n			<td>:</td>\r\n			<td colspan=\"4\">Dekan Fakultas Hukum Ubhara Surabaya</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tujuan</td>\r\n			<td>:</td>\r\n			<td colspan=\"4\">Bareskrim Polri</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Keperluan</td>\r\n			<td>:</td>\r\n			<td colspan=\"4\">Memberikan Keterangan Ahli Hukum Pidana</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Keterangan lain-lain</td>\r\n			<td>:</td>\r\n			<td colspan=\"4\">-</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\">&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dikeluarkan di: S u r a b a y a</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\">&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Pada tanggal: 30 januari 2015</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\">&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------------------------------------</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\">&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dekan,</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\"><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\">&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Dr. Ismu Gunadi W., SH., M.Hum, CN., MM.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'2','SURAT TUGAS',NULL),(11,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\">Yang bertanda tangan dibawah ini:</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:150px\">Nama</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>Dr. Ismu Gunadi W., SH., M.Hum, CN., MM.</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:150px\">Pangkat/Golongan</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>lektor</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:150px\">jabatan</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>Dekan Fakultas Hukum Universitas Bhayangkara Surabaya</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Dengan ini menerangkan:</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:150px\">Nama</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>M. Mokharim</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:150px\">Tempat/Tgl. Lahir</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>Semarang, 27 September 1956</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Bahwa benar tercatat sebagai mahasiswa di <strong>Universitas Bhayangkara Surabaya</strong> pada:</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:200px\">Fakultas/Program Studi</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>Hukum/ ilmu Hukum</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:200px\">Status</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>Terakreditasi<br />\r\n			Keputusan Badan Akreditasi Nasional Perguruan Tinggi Depertemen Pendidikan Nasional RI Nomor : 007/BAN-PT/AK-V/S1/V/2002 Tanggal 06 Mei 2002.</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:200px\">NIM</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>99010146</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:200px\">Program Pendidikan</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>Sarjana (S-1)</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:200px\">Tahun Masuk</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>1999</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:200px\">Tanggal kelulusan</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>13 Desember 2003</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:200px\">Nomor seri ijazah</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>9901/2003-II/1614</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:200px\">Indexs Prestasi kumulatif</td>\r\n			<td style=\"width:5px\">:</td>\r\n			<td><strong>2,99</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Demikian surat keterangan ini dibuat, untuk dipergunakan sebagaimana mestinya.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Surabaya, 22 November 2015<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>Dr. ismu Gunadi W., SH., M.Hum., CH., MM.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'2','SURAT KETERANGAN',NULL),(12,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">Tentang<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">PEMBIMBING SKRIPSI MAHASISWA FAKULTAS HUKUM<br />\r\n			UNIVERSITAS BHAYANGKARA SURABAYA<br />\r\n			SEMESTER GENAP TAHUN AKADEMIK 2016/2017</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<hr /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">DEKAN FAKULTAS HUKUM UNIVERSITAS BHAYANGKARA SURABAYA, setelah:</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">MENIMBANG</td>\r\n			<td style=\"width:3%\">:</td>\r\n			<td style=\"width:3%\">1.<br />\r\n			&nbsp;</td>\r\n			<td style=\"text-align:justify\">Bahwa Penulisan Skripsi merupakan tugas akhir dari proses kegiatan akademik Mahasiswa Fakultas Hukum Universitas Bhayangkara Surabaya.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">&nbsp;</td>\r\n			<td style=\"width:3%\">&nbsp;</td>\r\n			<td style=\"text-align:justify; width:3%\">2.<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;</td>\r\n			<td style=\"text-align:justify\">Bahwa demi kelancaran kegiatan penulisan skripsi bagi setiap mahasiswa wajib didampingi oleh seorang pembimbing, agar mahasiswa yang bersnagkutan dapat melakukan proses penulisan sesuai dengan bidang penulisan yang dipilihnya dengan sebaik-baiknya hingga proses ujian berakhir dan dinyatakan lulus.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">&nbsp;</td>\r\n			<td style=\"width:3%\">&nbsp;</td>\r\n			<td style=\"width:3%\">3.<br />\r\n			&nbsp;</td>\r\n			<td style=\"text-align:justify\">Untuk melaksanakan butir 1 dan butir 2 di atas, maka dipandang perlu menerbitkan surat keputusan ini.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">MENGINGAT</td>\r\n			<td style=\"width:3%\">:</td>\r\n			<td style=\"width:3%\">1.</td>\r\n			<td>Undang-undang No.12 Tahun 2012 tentang Pendidikan Tinggi.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">&nbsp;</td>\r\n			<td style=\"width:3%\">&nbsp;</td>\r\n			<td style=\"width:3%\">2.</td>\r\n			<td>Permenristek Dikti No.44 Tahun 2015 tentang Standar Nasional Pendidikan Tinggi.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">&nbsp;</td>\r\n			<td style=\"width:3%\">&nbsp;</td>\r\n			<td style=\"width:3%\">3.</td>\r\n			<td>Statuta Universitas Bhayangkara Surabaya 2016.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">&nbsp;</td>\r\n			<td style=\"width:3%\">&nbsp;</td>\r\n			<td style=\"width:3%\">4.</td>\r\n			<td>Hasil seminar proposal pada Kamis, 6 April 2017.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"text-align:center\"><strong>MEMUTUSKAN</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>MENETAPKAN</td>\r\n			<td colspan=\"3\">:</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">Pertama</td>\r\n			<td style=\"width:3%\">:</td>\r\n			<td colspan=\"2\">Mengangkat Sdr <strong>Dr. Drs. Suharto, SH., MH</strong> sebagai Pembimbing, skripsi mahasiswa Fakultas Hukum Universitas Bhayangkara Semester Genap Tahun Akademik 2016/2017 sebagaimana tersebut dibawah ini:\r\n			<table border=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; border:1px solid black; width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"text-align:center\">NO</td>\r\n						<td>NAMA</td>\r\n						<td>NIM</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"text-align:center\">1</td>\r\n						<td>Indah Bernard sinurat</td>\r\n						<td>13010085</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"text-align:center\">2</td>\r\n						<td>Ventius Bernard Sinurat</td>\r\n						<td>13010072</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"text-align:center\">3</td>\r\n						<td>Andreas Fernanda Chrismawanto</td>\r\n						<td>13010008</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">Kedua</td>\r\n			<td style=\"width:3%\">:</td>\r\n			<td colspan=\"2\" style=\"text-align:justify; width:3%\">Apabila dikemudian hari terdapat kesalahan dalam Surat Keputusan ini akan diadakan pembetulan seperlunya.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">Ketiga</td>\r\n			<td style=\"width:3%\">:</td>\r\n			<td colspan=\"2\" style=\"width:3%\">Keputusan ini berlaku sejak ditetapkan.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:55%\">&nbsp;</td>\r\n			<td>Ditetapkan di : Surabaya<br />\r\n			Pada Tanggal : 25 April 2017<br />\r\n			Fakultas Hukum Universitas Bhayangkara<br />\r\n			Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			Dr. Ismu Gunadi W., SH., M.Hum, CN., MM.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'2','SURAT KEPUTUSAN','Skep'),(13,'<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Nama</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">.....................................................................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NIM</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">.....................................................................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Arah Minat</td>\r\n			<td>:</td>\r\n			<td>PIDANA/PERDATA/ADMINISTRASI</td>\r\n			<td>(coret salah satu)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>No Hp/WA/BB</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">.....................................................................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Judul Skripsi<br />\r\n			<br />\r\n			&nbsp;</td>\r\n			<td>:<br />\r\n			<br />\r\n			&nbsp;</td>\r\n			<td colspan=\"2\">.....................................................................<br />\r\n			.....................................................................<br />\r\n			.....................................................................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rumusan Masalah<br />\r\n			<br />\r\n			&nbsp;</td>\r\n			<td>:<br />\r\n			<br />\r\n			&nbsp;</td>\r\n			<td colspan=\"2\">.....................................................................<br />\r\n			.....................................................................<br />\r\n			.....................................................................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Surabaya, 5 Mei 2017</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Mahasiswa,</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\"><br />\r\n			<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; )</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">Saran / Pertimbangan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dosen<br />\r\n			&nbsp;</td>\r\n			<td>:<br />\r\n			&nbsp;</td>\r\n			<td colspan=\"2\">.....................................................................<br />\r\n			.....................................................................</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">Mengetahui/Menyetujui:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Surabaya, 6 Mei 2017</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dekan,</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Ketua program studi,</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\"><br />\r\n			<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Dr. Ismu Gunadi W.,SH.,M.HUM.,CN.,MM.</td>\r\n			<td>Ina Rosmaya, SH.,MHum.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\"><br />\r\n			<br />\r\n			Diisi Oleh Petugas:</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; border:1px solid black; width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:60%\"><strong>DOKUMEN</strong></td>\r\n			<td style=\"width:20%\"><strong>CENTANG</strong></td>\r\n			<td style=\"width:20%\"><strong>KEKURANGAN</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Proposal dibuat dalam rangkap 3(tiga) dengan cover merah</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Transkrip sementara hingga akhir semester VII</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Kwitansi Pembayaran Skripsi (Asli dan Fotocopy)</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Biodata</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Pas photo hitam putih ukuran 4 x 6 = 5 lembar</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Pas photo hitam putih ukuran 3 x 4 = 5 lembar</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Fotocopy Ijazah SLTA 2 lembar</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',NULL,'2','FORMULIR PERMOHONAN JUDUL SKRIPSI','Reg');
/*!40000 ALTER TABLE `tbl_master_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_news`
--

DROP TABLE IF EXISTS `tbl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_news` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `judul_news` text,
  `isi_news` text,
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_news`
--

LOCK TABLES `tbl_news` WRITE;
/*!40000 ALTER TABLE `tbl_news` DISABLE KEYS */;
INSERT INTO `tbl_news` VALUES (1,'Pengumuman','UAS 12 s/d 15 Juni 2017 ****** UAS Susulan 19 s/d 21 Juni 2017 ****** Libur Lebaran 23 s/d 28 Juni 2017 ****** Akhir Nilai Dosen 5 Juli 2017 ****** Daftar Remidi 6 s/d 14 Juli 2017');
/*!40000 ALTER TABLE `tbl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pendidikan`
--

DROP TABLE IF EXISTS `tbl_pendidikan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pendidikan` (
  `id_pendidikan` int(10) NOT NULL,
  `isi_pendidikan` text,
  PRIMARY KEY (`id_pendidikan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pendidikan`
--

LOCK TABLES `tbl_pendidikan` WRITE;
/*!40000 ALTER TABLE `tbl_pendidikan` DISABLE KEYS */;
INSERT INTO `tbl_pendidikan` VALUES (1,'<p style=\"margin-left:40px\">no data</p>\r\n'),(2,'sarjana'),(3,'master'),(4,'kalender_akademik_1497595833.jpg');
/*!40000 ALTER TABLE `tbl_pendidikan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_profil`
--

DROP TABLE IF EXISTS `tbl_profil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_profil` (
  `id_profil` int(10) NOT NULL,
  `isi_profil` text,
  PRIMARY KEY (`id_profil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_profil`
--

LOCK TABLES `tbl_profil` WRITE;
/*!40000 ALTER TABLE `tbl_profil` DISABLE KEYS */;
INSERT INTO `tbl_profil` VALUES (1,'<p>VISI</p>\r\n\r\n<p>&quot;Pada tahun 2020 menjadi program studi yang unggul dan kompetitif serta beretika dalam mengkaji, menerapkan dan mengembangkan ilmu hukum sehingga mampu memberikan kontribusi positif bagi penegak hukum&quot;</p>\r\n\r\n<p>MISI</p>\r\n\r\n<p>1. Menyelenggarakan pendidikan dan pengajaran ilmu hukum berbasis intelektual dan etika moral sehingga &nbsp; &nbsp; &nbsp; menghasilkan sarjana ilmu hukum yang memiliki kecerdasan sosial dan kecerdasan spiritual sehingga memberikan kontribusi positif terhadap penegak hukum.</p>\r\n\r\n<p>2. Melakukan kegiatan penelitian hukum yang berkualitas dan bermanfaat bagi masyarakat dan dunia hukum serta mengembangkan kerja sama dengan institusi lain secara berkelanjutan, baik lokal,nasional maupun internasional berbasis teknologi informasi dan komunikasi.</p>\r\n\r\n<p>3. Melakukan pengabdian kepada masyarakat secara efektif dan berkelanjutan khususnya dibidang advokasi hukum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-right:35px\">Fakultas Hukum UBHARA</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-right:127px\">Juni 2012</p>\r\n'),(2,'<p>Sesuai dengan peraturan perundang-undangan yang berlaku, Fakultas Hukum dilaksanakan dengan monoprogram yaitu jurusan Ilmu Hukum yang sudah terakreditasi dengan status &ldquo;Terakreditasi&rdquo; berdasarkan Surat Keputusan No. 007/BAN-PT/Ak IV/SI/V/2002 tanggal 6 Mei 2002. Dengan konsentrasi Hukum Pidana, Hukum Keperdataan, sesuai dengan target market saat ini. Fakultas Hukum Universitas Bhayangkara Surabaya mendidik ahli hukum dalam bidang yang dihadapi masyarakat saat ini, yaitu era global. SK tersebut sudah diperbarui dengan Surat Keputusan Badan Akreditasi Nasional Perguruan Tinggi Departemen Pendidikan Nasional Nomor : 157/SK/BAN-PT/Ak-XVI/VII/2013, dengan nilai B.</p>\r\n'),(3,'struktur_organisasi_1498013033.png'),(4,'<p>Sesuai dengan peraturan perundang-undangan yang berlaku, Fakultas Hukum dilaksanakan dengan monoprogram yaitu jurusan Ilmu Hukum yang sudah terakreditasi dengan status &ldquo;Terakreditasi&rdquo; berdasarkan Surat Keputusan No. 007/BAN-PT/Ak IV/SI/V/2002 tanggal 6 Mei 2002. Dengan konsentrasi Hukum Pidana, Hukum Keperdataan, sesuai dengan target market saat ini. Fakultas Hukum Universitas Bhayangkara Surabaya mendidik ahli hukum dalam bidang yang dihadapi masyarakat saat ini, yaitu era global. SK tersebut sudah diperbarui dengan Surat Keputusan Badan Akreditasi Nasional Perguruan Tinggi Departemen Pendidikan Nasional Nomor : 157/SK/BAN-PT/Ak-XVI/VII/2013, dengan nilai B.</p>\r\n');
/*!40000 ALTER TABLE `tbl_profil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_senat`
--

DROP TABLE IF EXISTS `tbl_senat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_senat` (
  `id_senat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_senat` varchar(50) DEFAULT NULL,
  `jabatan_senat` varchar(25) DEFAULT NULL,
  `foto_senat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_senat`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_senat`
--

LOCK TABLES `tbl_senat` WRITE;
/*!40000 ALTER TABLE `tbl_senat` DISABLE KEYS */;
INSERT INTO `tbl_senat` VALUES (1,'tes','tes233','senat_1498097623.jpg'),(2,'tes2',NULL,'senat_1498096790.png');
/*!40000 ALTER TABLE `tbl_senat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_surat_keluar`
--

DROP TABLE IF EXISTS `tbl_surat_keluar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_surat_keluar` (
  `id_surat_keluar` int(11) NOT NULL AUTO_INCREMENT,
  `no_surat_keluar` varchar(50) DEFAULT NULL,
  `alamat_surat_keluar` text,
  `tanggal_surat_keluar` date DEFAULT NULL,
  `perihal_surat_keluar` varchar(100) DEFAULT NULL,
  `isi_surat_keluar` text,
  `keterangan_surat_keluar` int(2) DEFAULT NULL,
  `tempat_surat` varchar(15) DEFAULT NULL,
  `lampiran_surat_keluar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_surat_keluar`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_surat_keluar`
--

LOCK TABLES `tbl_surat_keluar` WRITE;
/*!40000 ALTER TABLE `tbl_surat_keluar` DISABLE KEYS */;
INSERT INTO `tbl_surat_keluar` VALUES (122,'122/FH/V/2017/UBHARA','teskh','2017-05-05','tes','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Yth. Bpk. Drs. H. Hasan Bisri, S.H.,M.H.<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(Hakim Pengadilan Tinggi Agama Surabaya)<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<u>SURABAYA</u></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Dengan hormat :</p>\r\n\r\n			<ol>\r\n				<li style=\"text-align:justify\">Rujukan :&nbsp;<br />\r\n				Memorandum of Agreement antara Fakultas Hukum Universitas Bhayangkara Surabaya dengan Dewan Pimpinan Cabang Perhimpunan Advokat Indonesia (PERADI) kota Surabaya tentang kerjasama untuk pelaksanaan Try Out, Ujian Profesi Advokat (UPA) serta Pendidikan Khusus Profesi Advokat (PKPA), Nomor 04/MOA/V/2016/UBHARA,tanggal 13 Mei 2016.<br />\r\n				&nbsp;</li>\r\n				<li style=\"text-align:justify\">Sehubungan dengan point 1 (satu), bersama ini kami mengajukan permohonan kepada Bapak Drs. H. Hasan Bisri, S.H., M.H. agar berkenan memberikan materi dalam Pendidikan Khusus Profesi Advokat (PKPA) Perhimpunan Advokat Indonesia (PERADI), yang diselenggarakan pada :\r\n				<table>\r\n					<tbody>\r\n						<tr>\r\n							<td>Hari / Tanggal</td>\r\n							<td>: Kamis, 5 Mei 2017</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Jam</td>\r\n							<td>:</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Tempat</td>\r\n							<td>:</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Materi</td>\r\n							<td>:</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>Demikian permohonan kami, atas kerjasamanya disampaikan terima kasih dan mohon kabar.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\"><br />\r\n			<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Wakil Dekan I,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;M. A. Razak, S.H., M.H.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Rektor Ubhara (Sebagai Laporan)<br />\r\n			2. Ketua DPC Peradi Surabaya<br />\r\n			3. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',1,'Surabaya','1 terlampir'),(123,'123/FH/V/2017/UBHARA','tes','2017-05-05','hal','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Yth. Bpk. Drs. H. Hasan Bisri, S.H.,M.H.<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(Hakim Pengadilan Tinggi Agama Surabaya)<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<u>SURABAYA</u></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Dengan hormat :</p>\r\n\r\n			<ol>\r\n				<li style=\"text-align:justify\">Rujukan :&nbsp;<br />\r\n				Memorandum of Agreement antara Fakultas Hukum Universitas Bhayangkara Surabaya dengan Dewan Pimpinan Cabang Perhimpunan Advokat Indonesia (PERADI) kota Surabaya tentang kerjasama untuk pelaksanaan Try Out, Ujian Profesi Advokat (UPA) serta Pendidikan Khusus Profesi Advokat (PKPA), Nomor 04/MOA/V/2016/UBHARA,tanggal 13 Mei 2016.<br />\r\n				&nbsp;</li>\r\n				<li style=\"text-align:justify\">Sehubungan dengan point 1 (satu), bersama ini kami mengajukan permohonan kepada Bapak Drs. H. Hasan Bisri, S.H., M.H. agar berkenan memberikan materi dalam Pendidikan Khusus Profesi Advokat (PKPA) Perhimpunan Advokat Indonesia (PERADI), yang diselenggarakan pada :\r\n				<table>\r\n					<tbody>\r\n						<tr>\r\n							<td>Hari / Tanggal</td>\r\n							<td>: Kamis, 5 Mei 2017</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Jam</td>\r\n							<td>:</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Tempat</td>\r\n							<td>:</td>\r\n						</tr>\r\n						<tr>\r\n							<td>Materi</td>\r\n							<td>:</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>Demikian permohonan kami, atas kerjasamanya disampaikan terima kasih dan mohon kabar.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\"><br />\r\n			<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Wakil Dekan I,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;M. A. Razak, S.H., M.H.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Rektor Ubhara (Sebagai Laporan)<br />\r\n			2. Ketua DPC Peradi Surabaya<br />\r\n			3. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',2,'Surabaya',NULL),(126,'BA/US/126/FH/V/2017/UBHARA','-','2017-05-05','BERITA ACARA UJIAN SKRIPSI','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Pada hari ini, Rabu, tanggal 22 Februari 2017, Tim Penguji Skripsi tersebut dibawah ini telah melakukan pengujian terhadap skripsi mahasiswa:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N a m a</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N I M</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arah Minat</td>\r\n			<td>:</td>\r\n			<td>PIDANA/PERDATA/TATA NEGARA*)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Judul Skripsi</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"text-align:justify\">Setelah Tim melakukan pengujian terhadap skripsi dan mempertimbangkan kemampuan ybs. dalam mempertahankan materi skripsi, maka tim menetapkan bahwa mahasiswa ybs dinyatakan : LULUS/LULUS DENGAN CATATAN PERBAIKAN/TIDAK LULUS*) dengan ini : A B C D E **)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Demikian Berita Acara ini dibuat untuk dipergunakan sebagaimana mestinya</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mahasiswa ybs.:</td>\r\n			<td style=\"width:50%\">Surabaya, 22 Februari 2017<br />\r\n			Tim penguji:<br />\r\n			1)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><u>........................................................</u></td>\r\n			<td style=\"width:50%\">\r\n			<hr /></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mengetahui:<br />\r\n			Dekan Fakultas Hukum,</td>\r\n			<td style=\"width:50%\">2)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<hr /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Ismu Gunadi W,SH.,M.HUM.,CN.,MM</td>\r\n			<td>3)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<hr /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Keterangan:<br />\r\n			*)&nbsp;&nbsp;&nbsp;&nbsp;coret yang tidak perlu<br />\r\n			**)&nbsp;&nbsp;lingkari huruf yang di maksud</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n',3,'Surabaya',NULL),(127,'BA/US/127/FH/V/2017/UBHARA','-','2017-05-05','BERITA ACARA UJIAN PROPOSAL SKRIPSI','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Pada hari ini, Kamis, tanggal 23 April 2017, Tim Penguji Proposal Skripsi tersebut dibawah ini telah melakukan pengujian terhadap Proposal skripsi mahasiswa :</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N a m a</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N I M</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arah Minat</td>\r\n			<td>:</td>\r\n			<td>PIDANA/PERDATA/TATA NEGARA*)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Judul Skripsi</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"text-align:justify\">Setelah Tim melakukan pengujian terhadap proposal skripsi dan mempertimbangkan kemampuan ybs. dalam mempertahankan materi proposal skripsi, maka tim menetapkan bahwa mahasiswa ybs dinyatakan : LAYAK/LAYAK DENGAN CATATAN PERBAIKAN/TIDAK LAYAK untuk melanjutkan penulisan skripsi.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Demikian Berita Acara ini dibuat untuk dipergunakan sebagaimana mestinya</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mahasiswa ybs.:</td>\r\n			<td style=\"width:50%\">Surabaya, 22 Februari 2017<br />\r\n			Tim penguji:<br />\r\n			1)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><u>........................................................</u></td>\r\n			<td style=\"width:50%\">\r\n			<hr /></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mengetahui:<br />\r\n			Dekan Fakultas Hukum,</td>\r\n			<td style=\"width:50%\">2)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<hr /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Ismu Gunadi W,SH.,M.HUM.,CN.,MM</td>\r\n			<td>3)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<hr /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Keterangan:<br />\r\n			*)&nbsp;&nbsp;&nbsp;&nbsp;coret yang tidak perlu<br />\r\n			**)&nbsp;&nbsp;lingkari huruf yang di maksud</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n',3,'Surabaya',NULL),(129,'R/129/FH/V/2017/UBHARA','-','2017-05-08','SURAT TUGAS','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Dasar</td>\r\n			<td>:</td>\r\n			<td style=\"width:5%\">1.</td>\r\n			<td colspan=\"3\">Surat dari Dir. Pidum Bareskrim polri</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n			<td style=\"width:5%\">Nomor</td>\r\n			<td style=\"width:1%\">:</td>\r\n			<td>33 subdit/1/1/2015</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n			<td style=\"width:5%\">Perihal</td>\r\n			<td style=\"width:1%\">:</td>\r\n			<td>Bantuan Keterangan Ahli Hukum Pidana</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n			<td style=\"width:5%\">Tanggal</td>\r\n			<td style=\"width:1%\">:</td>\r\n			<td>23 Januari 2015</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td style=\"width:5%\">2.</td>\r\n			<td colspan=\"3\">Surat panggilan</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n			<td style=\"width:5%\">Nomor</td>\r\n			<td style=\"width:1%\">:</td>\r\n			<td>spg/216 subdit/1/1/2015/Dit Tipidum</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n			<td style=\"width:5%\">Tanggal</td>\r\n			<td style=\"width:1%\">:</td>\r\n			<td>28 Januari 2015</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ditugaskan kepada</td>\r\n			<td>:</td>\r\n			<td colspan=\"4\">Dr. Ismu Gunadi W., SH., M.Hum, CN., MM.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jabatan/Pangkat</td>\r\n			<td>:</td>\r\n			<td colspan=\"4\">Dekan Fakultas Hukum Ubhara Surabaya</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tujuan</td>\r\n			<td>:</td>\r\n			<td colspan=\"4\">Bareskrim Polri</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Keperluan</td>\r\n			<td>:</td>\r\n			<td colspan=\"4\">Memberikan Keterangan Ahli Hukum Pidana</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Keterangan lain-lain</td>\r\n			<td>:</td>\r\n			<td colspan=\"4\">-</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\">&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dikeluarkan di: S u r a b a y a</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\">&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Pada tanggal: 30 januari 2015</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\">&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------------------------------------</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\">&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dekan,</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"5\">&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Dr. Ismu Gunadi W., SH., M.Hum, CN., MM.</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',3,'Surabaya','-'),(133,'Skep/133/FH/V/2017/UBHARA','-','2017-05-05','SURAT KEPUTUSAN','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">Tentang<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">PEMBIMBING SKRIPSI MAHASISWA FAKULTAS HUKUM<br />\r\n			UNIVERSITAS BHAYANGKARA SURABAYA<br />\r\n			SEMESTER GENAP TAHUN AKADEMIK 2016/2017</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<hr /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">DEKAN FAKULTAS HUKUM UNIVERSITAS BHAYANGKARA SURABAYA, setelah:</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">MENIMBANG</td>\r\n			<td style=\"width:3%\">:</td>\r\n			<td style=\"width:3%\">1.<br />\r\n			&nbsp;</td>\r\n			<td style=\"text-align:justify\">Bahwa Penulisan Skripsi merupakan tugas akhir dari proses kegiatan akademik Mahasiswa Fakultas Hukum Universitas Bhayangkara Surabaya.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">&nbsp;</td>\r\n			<td style=\"width:3%\">&nbsp;</td>\r\n			<td style=\"text-align:justify; width:3%\">2.<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;</td>\r\n			<td style=\"text-align:justify\">Bahwa demi kelancaran kegiatan penulisan skripsi bagi setiap mahasiswa wajib didampingi oleh seorang pembimbing, agar mahasiswa yang bersnagkutan dapat melakukan proses penulisan sesuai dengan bidang penulisan yang dipilihnya dengan sebaik-baiknya hingga proses ujian berakhir dan dinyatakan lulus.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">&nbsp;</td>\r\n			<td style=\"width:3%\">&nbsp;</td>\r\n			<td style=\"width:3%\">3.<br />\r\n			&nbsp;</td>\r\n			<td style=\"text-align:justify\">Untuk melaksanakan butir 1 dan butir 2 di atas, maka dipandang perlu menerbitkan surat keputusan ini.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">MENGINGAT</td>\r\n			<td style=\"width:3%\">:</td>\r\n			<td style=\"width:3%\">1.</td>\r\n			<td>Undang-undang No.12 Tahun 2012 tentang Pendidikan Tinggi.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">&nbsp;</td>\r\n			<td style=\"width:3%\">&nbsp;</td>\r\n			<td style=\"width:3%\">2.</td>\r\n			<td>Permenristek Dikti No.44 Tahun 2015 tentang Standar Nasional Pendidikan Tinggi.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">&nbsp;</td>\r\n			<td style=\"width:3%\">&nbsp;</td>\r\n			<td style=\"width:3%\">3.</td>\r\n			<td>Statuta Universitas Bhayangkara Surabaya 2016.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">&nbsp;</td>\r\n			<td style=\"width:3%\">&nbsp;</td>\r\n			<td style=\"width:3%\">4.</td>\r\n			<td>Hasil seminar proposal pada Kamis, 6 April 2017.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"text-align:center\"><strong>MEMUTUSKAN</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>MENETAPKAN</td>\r\n			<td colspan=\"3\">:</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">Pertama</td>\r\n			<td style=\"width:3%\">:</td>\r\n			<td colspan=\"2\">Mengangkat Sdr <strong>Dr. Drs. Suharto, SH., MH</strong> sebagai Pembimbing, skripsi mahasiswa Fakultas Hukum Universitas Bhayangkara Semester Genap Tahun Akademik 2016/2017 sebagaimana tersebut dibawah ini:\r\n			<table border=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; border:1px solid black; width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>NO</td>\r\n						<td>NAMA</td>\r\n						<td>NIM</td>\r\n					</tr>\r\n					<tr>\r\n						<td>1</td>\r\n						<td>Indah Bernard sinurat</td>\r\n						<td>13010085</td>\r\n					</tr>\r\n					<tr>\r\n						<td>2</td>\r\n						<td>Ventius Bernard Sinurat</td>\r\n						<td>13010072</td>\r\n					</tr>\r\n					<tr>\r\n						<td>2</td>\r\n						<td>Andreas Fernanda Chrismawanto</td>\r\n						<td>13010008</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">Kedua</td>\r\n			<td style=\"width:3%\">:</td>\r\n			<td colspan=\"2\" style=\"text-align:justify; width:3%\">Apabila dikemudian hari terdapat kesalahan dalam Surat Keputusan ini akan diadakan pembetulan seperlunya.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:21%\">Ketiga</td>\r\n			<td style=\"width:3%\">:</td>\r\n			<td colspan=\"2\" style=\"width:3%\">Keputusan ini berlaku sejak ditetapkan.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:55%\">&nbsp;</td>\r\n			<td>Ditetapkan di : Surabaya<br />\r\n			Pada Tanggal : 25 April 2017<br />\r\n			Fakultas Hukum Universitas Bhayangkara<br />\r\n			Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			Dr. Ismu Gunadi W., SH., M.Hum, CN., MM.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',3,'Surabaya',NULL),(134,'Reg/134/FH/V/2017/UBHARA','-','2017-05-05','FORMULIR PERMOHONAN JUDUL SKRIPSI','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Nama</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">.................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NIM</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">...................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Arah Minat</td>\r\n			<td>:</td>\r\n			<td>PIDANA/PERDATA/ADMINISTRASI</td>\r\n			<td>(coret salah satu)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>No Hp/WA/BB</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">...................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Judul Skripsi</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">...................<br />\r\n			....................<br />\r\n			...............</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rumusan Masalah</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">...................<br />\r\n			....................<br />\r\n			...............</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Surabaya, 5 Mei 2017</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Mahasiswa,</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; )</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">Saran / Pertimbangan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dosen</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">...................<br />\r\n			....................</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">Mengetahui/Menyetujui:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Surabaya, 6 Mei 2017</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dekan,</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Ketua program studi,</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\"><br />\r\n			<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Dr. Ismu Gunadi W.,SH.,M.HUM.,CN.,MM.</td>\r\n			<td>Ina Rosmaya, SH.,MHum.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">Diisi Oleh Petugas:</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; border:1px solid black; width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:60%\"><strong>DOKUMEN</strong></td>\r\n			<td style=\"width:20%\"><strong>CENTANG</strong></td>\r\n			<td style=\"width:20%\"><strong>KEKURANGAN</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Proposal dibuat dalam rangkap 3(tiga) dengan cover merah</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Transkrip sementara hingga akhir semester VII</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Kwitansi Pembayaran Skripsi (Asli dan Fotocopy)</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Biodata</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Pas photo hitam putih ukuran 4 x 6 = 5 lembar</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Pas photo hitam putih ukuran 3 x 4 = 5 lembar</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Fotocopy Ijazah SLTA 2 lembar</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',3,'Surabaya',NULL),(135,'Reg/135/FH/V/2017/UBHARA','-','2017-05-05','FORMULIR PERMOHONAN JUDUL SKRIPSI','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Nama</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">.................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NIM</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">...................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Arah Minat</td>\r\n			<td>:</td>\r\n			<td>PIDANA/PERDATA/ADMINISTRASI</td>\r\n			<td>(coret salah satu)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>No Hp/WA/BB</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">...................</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Judul Skripsi</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">...................<br />\r\n			....................<br />\r\n			...............</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rumusan Masalah</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">...................<br />\r\n			....................<br />\r\n			...............</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Surabaya, 5 Mei 2017</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Mahasiswa,</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\"><br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; )</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">Saran / Pertimbangan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dosen</td>\r\n			<td>:</td>\r\n			<td colspan=\"2\">...................<br />\r\n			....................</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">Mengetahui/Menyetujui:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Surabaya, 6 Mei 2017</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dekan,</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Ketua program studi,</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\"><br />\r\n			<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">Dr. Ismu Gunadi W.,SH.,M.HUM.,CN.,MM.</td>\r\n			<td>Ina Rosmaya, SH.,MHum.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">Diisi Oleh Petugas:</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; border:1px solid black; width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:60%\"><strong>DOKUMEN</strong></td>\r\n			<td style=\"width:20%\"><strong>CENTANG</strong></td>\r\n			<td style=\"width:20%\"><strong>KEKURANGAN</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Proposal dibuat dalam rangkap 3(tiga) dengan cover merah</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Transkrip sementara hingga akhir semester VII</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Kwitansi Pembayaran Skripsi (Asli dan Fotocopy)</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Biodata</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Pas photo hitam putih ukuran 4 x 6 = 5 lembar</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Pas photo hitam putih ukuran 3 x 4 = 5 lembar</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:60%\">Fotocopy Ijazah SLTA 2 lembar</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n			<td style=\"width:20%\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',3,'Surabaya',NULL),(141,'141/FH/V/2017/UBHARA','Ka. PUSKOM','2017-05-23','Permohonan username dan password pada Server dan Database serta Sub. Domain fh.ubhara.ac.id pada web','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Yth. Ka. PUSKOM<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Universitas Bhayangkara<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<u>SURABAYA</u></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:14px\">Dengan hormat,</span></p>\r\n\r\n			<ol>\r\n				<li style=\"text-align:justify\"><span style=\"font-size:14px\">Rujukan Pembuatan website Fakultas Hukum Ubhara Surabaya pada website&nbsp;ubhara.ac.id</span><br />\r\n				&nbsp;</li>\r\n				<li style=\"text-align:justify\"><span style=\"font-size:14px\">Sehubungan dengan hal tersebut di atas bersama ini kami mohon dapatnya memberikan kepada FH hal hal berikut :&nbsp;(a) Akses Server berupa username dan passwordnya, (b) Database berupa username database dan password databasenya, (3) Permohonan sub.domain : fh.ubhara.ac.id</span></li>\r\n			</ol>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-size:14px\">Demikian atas bantuan dan kerjasamanya kami sampaikan terima kasih.</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\"><br />\r\n			<span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; Surabaya, 23 Mei 2017<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>&nbsp; &nbsp; &nbsp; &nbsp; Dr. Ismu Gunadi W, SH., M.Hum., CN., MM.</strong></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:14px\">Tembusan Yth:<br />\r\n			1. Rektor UBHARA Surabaya<br />\r\n			2. Arsip.</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',2,'Surabaya','-'),(142,'142/FH/V/2017/UBHARA','Ka. PUSKOM','2017-05-23','\r\nPermohonan username dan password pada server dan database serta sub.domain fh.ubhara.ac.id','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Yth. Ka. PUSKOM<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Universitas Bhayangkara<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<u>SURABAYA</u></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Dengan hormat,</p>\r\n\r\n			<ol>\r\n				<li style=\"text-align:justify\">Rujukan pembuatan website Fakultas Hukum Ubhara Surabaya pada website ubhara.ac.id.<br />\r\n				&nbsp;</li>\r\n				<li style=\"text-align:justify\">Sehubungan dengan hal tersebut di atas bersama ini kami mohon dapat memberikan kepada FH hal-hal berikut : (a) akses server berupa username dan passwordnya, (b) database berupa username database dan password databasenya, serta (c) permohonan sub.domain : fh.ubhara.ac.id&nbsp; .</li>\r\n			</ol>\r\n\r\n			<p style=\"text-align:justify\">Demikian atas bantuan dan kerjasamanya kami sampaikan terima kasih.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\">\r\n			<p>&nbsp;</p>\r\n\r\n			<p><br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dr. Ismu Gunadi W, SH., M.Hum, CN, MM</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Rektor UBHARA Surabaya<br />\r\n			2. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',2,'Surabaya','-'),(143,'143/FH/V/2017/UBHARA','Ka. PUSKOM','2017-05-23','\r\n\r\nPermohonan username dan password pada server dan database serta sub.domain fh.ubhara.ac.id','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Yth. Ka. PUSKOM<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Universitas Bhayangkara<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<u>SURABAYA</u></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Dengan hormat,</p>\r\n\r\n			<ol>\r\n				<li style=\"text-align:justify\">Rujukan pembuatan website Fakultas Hukum Ubhara Surabaya pada website ubhara.ac.id.<br />\r\n				&nbsp;</li>\r\n				<li style=\"text-align:justify\">Sehubungan dengan hal tersebut di atas bersama ini kami mohon dapat memberikan kepada FH hal-hal berikut : (a) akses server berupa username dan passwordnya, (b) database berupa username database dan password databasenya, serta (c) permohonan sub.domain : fh.ubhara.ac.id&nbsp; .</li>\r\n			</ol>\r\n\r\n			<p style=\"text-align:justify\">Demikian atas bantuan dan kerjasamanya kami sampaikan terima kasih.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\">\r\n			<p>&nbsp;</p>\r\n\r\n			<p><br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dr. Ismu Gunadi W, SH., M.Hum, CN, MM</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Rektor UBHARA Surabaya<br />\r\n			2. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',2,'Surabaya','-'),(176,'176/FH/V/2017/UBHARA','Ka. PUSKOM','2017-05-23','\r\n\r\nPermohonan username dan password pada server dan database serta sub.domain fh.ubhara.ac.id','<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kepada :<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Yth. Ka. PUSKOM<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Universitas Bhayangkara<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di -<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<u>SURABAYA</u></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Dengan hormat,</p>\r\n\r\n			<ol>\r\n				<li style=\"text-align:justify\">Rujukan pembuatan website Fakultas Hukum Ubhara Surabaya pada website ubhara.ac.id.<br />\r\n				&nbsp;</li>\r\n				<li style=\"text-align:justify\">Sehubungan dengan hal tersebut di atas bersama ini kami mohon dapat memberikan kepada FH hal-hal berikut : (a) akses server berupa username dan passwordnya, (b) database berupa username database dan password databasenya, serta (c) permohonan sub.domain : fh.ubhara.ac.id&nbsp; .</li>\r\n			</ol>\r\n\r\n			<p style=\"text-align:justify\">Demikian atas bantuan dan kerjasamanya kami sampaikan terima kasih.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\">&nbsp;</td>\r\n			<td style=\"width:50%\">\r\n			<p>&nbsp;</p>\r\n\r\n			<p><br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dekan,<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dr. Ismu Gunadi W, SH., M.Hum, CN, MM</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tembusan Yth:<br />\r\n			1. Rektor UBHARA Surabaya<br />\r\n			2. Arsip.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',2,'Surabaya','-');
/*!40000 ALTER TABLE `tbl_surat_keluar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_surat_masuk`
--

DROP TABLE IF EXISTS `tbl_surat_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT,
  `no_surat_masuk` varchar(50) DEFAULT NULL,
  `tanggal_msk_surat_masuk` date DEFAULT NULL,
  `alamat_pengirim_surat_masuk` varchar(100) DEFAULT NULL,
  `tanggal_kirim_surat_masuk` date DEFAULT NULL,
  `kode_surat_masuk` varchar(50) DEFAULT NULL,
  `perihal_surat_masuk` varchar(100) DEFAULT NULL,
  `pdf_surat_masuk` text,
  PRIMARY KEY (`id_surat_masuk`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_surat_masuk`
--

LOCK TABLES `tbl_surat_masuk` WRITE;
/*!40000 ALTER TABLE `tbl_surat_masuk` DISABLE KEYS */;
INSERT INTO `tbl_surat_masuk` VALUES (5,'5/FH/V/2017/UBHARA','2017-05-09','yuyiuyiui','2017-05-03','dsadd','asdasd','PDF_1494300147.pdf'),(6,'6/FH/V/2017/UBHARA','2017-05-09','dasda','2017-05-02','sdasd','sdad','PDF_1494300373.pdf');
/*!40000 ALTER TABLE `tbl_surat_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (4,'admin','admin');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-15  9:50:21
