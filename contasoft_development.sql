-- MySQL dump 10.13  Distrib 5.5.15, for osx10.6 (i386)
--
-- Host: localhost    Database: contasoft_development
-- ------------------------------------------------------
-- Server version	5.5.15

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `category` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Caja','Activo Circulante','Representa el dineroen efectivo. Billetes,Monedas,Cheques,Giros Bancarios o Telegraficos, etc.','2011-10-20 22:46:14','2011-10-20 22:46:14'),(2,'Bancos','Activo Circulante','Es el valor de los depósitos en cuentas bancarias.','2011-10-20 22:49:14','2011-10-20 22:49:14'),(3,'Clientes','Activo Circulante','Son los que deben al negocio por haberles vendido mercancias a crédito, sin garantia documental.','2011-10-21 15:12:36','2011-10-21 15:12:36'),(4,'Mercancias','Activo Circulante','Son las mercancias, las cuales son adquiridas para ser vendidas como actividad principal del negocio.','2011-10-21 15:15:59','2011-10-21 15:15:59'),(5,'Iva Acreditable','Activo Circulante','Es el Impuesto que la empresa paga por la adquisición de mercancías, bienes o servicios.','2011-10-21 15:19:52','2011-10-21 15:19:52'),(6,'Documentos por Cobrar','Activo Circulante','Son los titulos de crédito a favor del negocio(letras de cambio, pagarés.','2011-10-21 15:21:23','2011-10-21 15:21:23'),(7,'Deudores Diversos','Activo Circulante','Son las personas que deben a la empresa por un concepto distinto al de venta de mercancias.','2011-10-21 16:28:24','2011-10-21 16:28:24'),(8,'Terrenos','Activo Fijo','Son los predios que pertenecen al negocio.','2011-10-21 16:35:34','2011-10-21 16:35:34'),(9,'Edificios','Activo Fijo','Son las construcciones propiedad del negocio.','2011-10-21 16:37:20','2011-10-21 16:37:20'),(10,'Mobiliario y Equipo','Activo Fijo','Son los muebles y equipo de oficina (sillas, mesas, escritorios, etc.).','2011-10-21 16:39:56','2011-10-21 16:39:56'),(11,'Equipo de Transporte','Activo Fijo','Son los vehículos utilizados por la empresa para el transporte de persional.','2011-10-21 16:46:11','2011-10-21 16:46:11'),(12,'Equipo de Reparto','Activo Fijo','Son los vehículos de transporte (Camiones, Motocicletas, etc.).','2011-10-21 16:57:27','2011-10-21 16:57:27'),(13,'Depositos en Garantia','Activo Fijo','Son los contratos con los que se amparan las cantidades que se dejan en guarda para garantizar valores o servicios.','2011-10-21 17:01:01','2011-10-21 17:01:01'),(14,'Gastos de Instalación','Activo de Cargos Diferidos','Son los gastos que se hacen para acondicionar el local, asi como para darle cierta comodidad y presentación.','2011-10-21 17:03:34','2011-10-21 17:03:34'),(15,'Papeleria y Utiles','Activo de Cargos Diferidos','Son los materiales y útiles que se emplean en la empresa como papel, sobres, facturas, etc.','2011-10-21 17:06:02','2011-10-21 17:06:02'),(16,'Propaganda o Publicidad','Activo de Cargos Diferidos','Son los medios por los que se da a conocer al público determinada actividad, servicio o producto','2011-10-21 17:07:36','2011-10-21 17:07:36'),(17,'Primas de Seguro','Activo de Cargos Diferidos','Son los pagos por los cuales se adquiere el derecho de asegurar los bienes contra incendio, robo, accidentes.','2011-10-21 17:12:21','2011-10-21 17:12:21'),(18,'Rentas Pagadas por Anticipación','Activo de Cargos Diferidos','Son las rentas que aun no estando vencidas se pagaron anticipadamente.','2011-10-21 17:13:36','2011-10-21 17:13:36'),(19,'Intereses Pagados por Anticipado','Activo de Cargos Diferidos','Son los que se pagan antes de la fecha de vencimiento del crédito.','2011-10-21 17:22:52','2011-10-21 17:22:52'),(20,'Proveedores','Pasivo Circulante','Es a quien les debemos por haberles comprado mercancías a crédito sin ninguna garantía documental.','2011-10-21 17:26:13','2011-10-21 17:26:13'),(21,'Iva por Pagar','Pasivo Circulante','Es el impuesto retenido por la venta de mercancías o la prestación de servicios.','2011-10-21 17:35:48','2011-10-21 17:35:48'),(22,'Documentos por Pagar','Pasivo Circulante','Son los títulos de crédito a cargo de la empresa, tales como letras de cambio, pagares, etc.','2011-10-21 17:37:39','2011-10-21 17:37:39'),(23,'Acreedores Diversos','Pasivo Circulante','Es a quien le debemos por concepto distinto a la compra de mercancías.','2011-10-21 17:39:03','2011-10-21 17:39:03'),(24,'Hipotecas por Pagar','Pasivo Fijo','Son las obligaciones que tienen como garantía la escritura de bienes inmuebles (terrenos, edificios).','2011-10-21 17:41:59','2011-10-21 17:41:59'),(25,'Documentos por Pagar a Largo Plazo','Pasivo Fijo','Son los títulos de crédito a cargo de la empresa, con vencimiento mayor a un año.','2011-10-21 17:53:28','2011-10-21 17:53:28'),(26,'Rentas Cobradas por Anticipación','Pasivo de Creditos Diferidos','Son el importe de una o varias rentas que no estando vencidas se han cobrado anticipadamente.','2011-10-21 18:33:42','2011-10-21 18:33:42'),(27,'Intereses Cobrados por Anticipado','Pasivo de Creditos Diferidos','Son los intereses que aún no estando vencidos se han cobrado anticipadamente.','2011-10-21 18:34:45','2011-10-21 18:34:45');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movements`
--

DROP TABLE IF EXISTS `movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `movement_type` varchar(25) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_movements_on_account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movements`
--

LOCK TABLES `movements` WRITE;
/*!40000 ALTER TABLE `movements` DISABLE KEYS */;
INSERT INTO `movements` VALUES (1,1,'Cargo',NULL,3000,'2011-10-21 21:57:22','2011-10-21 21:57:22'),(2,1,'Abono',NULL,1500,'2011-10-21 21:58:34','2011-10-21 21:58:34');
/*!40000 ALTER TABLE `movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20111020203417'),('20111020203431');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-22 15:15:08
