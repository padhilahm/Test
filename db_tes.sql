/*
SQLyog Enterprise v12.5.1 (64 bit)
MySQL - 10.4.20-MariaDB : Database - db_tes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_tes` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_tes`;

/*Table structure for table `riwayat` */

DROP TABLE IF EXISTS `riwayat`;

CREATE TABLE `riwayat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ukt` int(11) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_ukt` (`id_ukt`),
  CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_ukt`) REFERENCES `ukt` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `riwayat` */

insert  into `riwayat`(`id`,`id_ukt`,`biaya`,`tanggal`,`semester`) values 
(1,1,1200000,'2022-10-11',1),
(2,1,1000000,'2022-10-11',2),
(3,2,2000000,'2022-10-11',1),
(4,2,1500000,'2022-10-11',2);

/*Table structure for table `ukt` */

DROP TABLE IF EXISTS `ukt`;

CREATE TABLE `ukt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mahasiswa` varchar(200) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ukt` */

insert  into `ukt`(`id`,`nama_mahasiswa`,`biaya`,`semester`,`tanggal`) values 
(1,'Ahmad',1000000,2,'2022-10-11'),
(2,'Fajar',1500000,2,'2022-10-11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
