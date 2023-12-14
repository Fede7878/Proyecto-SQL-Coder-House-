-- BACKUP 11-17-2023


/* TABLAS:
		empleados
        obras
        organos_municipio
        presupuesto
        proveedores
        puente_empleados_obras
		puente_empleados_organos_municipio
		puente_obras_organos_municipio
		puente_proveedores_obras
        puente_transacciones_organos_municipio
        transacciones
*/
        
        


CREATE DATABASE  IF NOT EXISTS `municipio_proyecto_final` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `municipio_proyecto_final`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: municipio_proyecto_final
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Carlos','Monterosa',2000,6,1,'Maestro mayor de obras',700000),(2,'Mario','Gutierrez',1984,2,11,'Sub secretario de Salud',650000),(3,'Norma','Madero',1977,6,2,'Arquitecto',675000),(4,'Mariano','Cordero',1988,1,11,'Asesor financiero',500000),(5,'Juan','Neura',1975,5,11,'contador publico',675000),(6,'Gustavo','Morel',1982,6,6,'obrero municipal',600000),(7,'Camila','Ferrero',1980,7,11,'Profesora de matematica',650000),(8,'Miguel','Di Fino',1979,5,11,'Asesor politico',600000),(9,'Maria','Cosera',1994,3,11,'Encargada hotelera',650000),(10,'Alejandra','Noria',1990,8,11,'Secretaria de mejoramiento social',775000),(11,'Patricia','Redondo',1986,4,11,'Colectivera',675000),(12,'Marcelo','Redrado',1989,6,9,'obrero municipal',600000),(13,'Federico','Ibañez',2002,1,11,'Asesor economia',750000),(14,'Leandra','Marineli',2000,7,11,'Secretaria de Economia',775000),(15,'Mariano','Estinaqui',1988,8,11,'Sociologo',675000);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `obras`
--

LOCK TABLES `obras` WRITE;
/*!40000 ALTER TABLE `obras` DISABLE KEYS */;
INSERT INTO `obras` VALUES (1,1000000,6,'reparacion_colegio_San_Martin',1),(2,3000000,6,'construccion_plaza_eduardo_costa',1),(3,500000,1,'reparacion_cañerias_municipalidad',17),(4,500000000,6,'modernizacion_centro_jubilados',18),(5,750000,6,'reparacion_calle_Montesalvo',1),(6,500000,8,'puesta_bebederos_plaza_eduardo_costa',16),(7,4000000000,6,'construccion_viviendas_Balcarce',2),(8,1500000000,5,'remodelacion_consejo_deliberante',2),(9,10000000,6,'construccion_comedor_municipal',1),(10,4500000000,6,'reparacion_edificios_duplex_municipales',1),(11,100000000000,1,'pago_sueldo_empleados_estables',NULL);
/*!40000 ALTER TABLE `obras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `organos_municipio`
--

LOCK TABLES `organos_municipio` WRITE;
/*!40000 ALTER TABLE `organos_municipio` DISABLE KEYS */;
INSERT INTO `organos_municipio` VALUES (1,'administracion ejecutivo',1),(2,'Secretaria de Salud',2),(3,'Secretaria de Turismo',3),(4,'Secretaria de Transporte',4),(5,'Consejo Deliberante',5),(6,'Secretaria de obras publicas',6),(7,'Secretaria de Educacion',7),(8,'Secretaria de mejoramiento social',8);
/*!40000 ALTER TABLE `organos_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `presupuesto`
--

LOCK TABLES `presupuesto` WRITE;
/*!40000 ALTER TABLE `presupuesto` DISABLE KEYS */;
INSERT INTO `presupuesto` VALUES (202301,2023,34000000000,1,3000000000),(202302,2023,34000000000,2,4000000000),(202303,2023,34000000000,3,2000000000),(202304,2023,34000000000,4,3000000000),(202305,2023,34000000000,5,3000000000),(202306,2023,34000000000,6,6000000000),(202307,2023,34000000000,7,6000000000),(202308,2023,34000000000,8,5000000000);
/*!40000 ALTER TABLE `presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Campana_Materiales','Distrubucion'),(2,'Maderera_Mariel','Distrubucion'),(3,'Asesoria_Puerto_Nuevo','Servicio'),(4,'Museo_ferroviario','Servicio'),(5,'Banda_homenaje_Charly_Garcia','Servicio'),(6,'insumos_medicos_Homisped','Distrubucion'),(7,'consultoria_política_RealPolitik','Servicio'),(8,'Metropol_colectivos','Distrubucion'),(9,'Libreria_mayorista','Distribucion'),(10,'Textil_Carmela','Distribucion'),(11,'Verduleria_mayorista','Distribucion'),(12,'Hoteleria_Melco','Servicio'),(13,'Medicamentos_Medicare','Distribucion'),(14,'Constructora_corralon','Servicio'),(15,'Centro_cultural_Democracia','Servicio'),(16,'Industria_tecnotech','Servicio'),(17,'Cañerias_Metalcan','Servicio'),(18,'Casa_de_tecnologia_Coderdept','Distribucion');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puente_empleados_obras`
--

LOCK TABLES `puente_empleados_obras` WRITE;
/*!40000 ALTER TABLE `puente_empleados_obras` DISABLE KEYS */;
INSERT INTO `puente_empleados_obras` VALUES (1,1),(11,2),(2,3),(11,4),(11,5),(6,6),(11,7),(11,8),(11,9),(11,10),(11,11),(9,12),(11,13),(11,14),(11,15);
/*!40000 ALTER TABLE `puente_empleados_obras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puente_empleados_organos_municipio`
--

LOCK TABLES `puente_empleados_organos_municipio` WRITE;
/*!40000 ALTER TABLE `puente_empleados_organos_municipio` DISABLE KEYS */;
INSERT INTO `puente_empleados_organos_municipio` VALUES (4,1),(13,1),(2,2),(9,3),(11,4),(5,5),(8,5),(1,6),(3,6),(6,6),(12,6),(7,7),(14,7),(10,8),(15,8);
/*!40000 ALTER TABLE `puente_empleados_organos_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puente_obras_organos_municipio`
--

LOCK TABLES `puente_obras_organos_municipio` WRITE;
/*!40000 ALTER TABLE `puente_obras_organos_municipio` DISABLE KEYS */;
INSERT INTO `puente_obras_organos_municipio` VALUES (3,1),(8,5),(1,6),(2,6),(4,6),(5,6),(7,6),(9,6),(10,6),(6,8);
/*!40000 ALTER TABLE `puente_obras_organos_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puente_proveedores_obras`
--

LOCK TABLES `puente_proveedores_obras` WRITE;
/*!40000 ALTER TABLE `puente_proveedores_obras` DISABLE KEYS */;
INSERT INTO `puente_proveedores_obras` VALUES (1,1),(2,1),(5,1),(9,1),(10,1),(7,2),(8,2),(6,16),(3,17),(4,18);
/*!40000 ALTER TABLE `puente_proveedores_obras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puente_transacciones_organos_municipio`
--

LOCK TABLES `puente_transacciones_organos_municipio` WRITE;
/*!40000 ALTER TABLE `puente_transacciones_organos_municipio` DISABLE KEYS */;
INSERT INTO `puente_transacciones_organos_municipio` VALUES (3,1),(16,1),(8,2),(14,2),(9,3),(10,3),(11,3),(6,4),(13,5),(1,6),(2,6),(4,6),(5,7),(7,7),(12,7),(15,7);
/*!40000 ALTER TABLE `puente_transacciones_organos_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (1,'compra_materiales',500000,6,1,'2023-01-02'),(2,'compra_materiales',650000,6,2,'2023-01-05'),(3,'asesoria_financiera',400000,1,3,'2023-01-10'),(4,'subcontratacion_construccion',2000000,6,14,'2023-01-16'),(5,'compra_guardapolvos',500000,7,10,'2023-02-24'),(6,'compra_colectivos',500000000,4,8,'2023-03-03'),(7,'pasajes_viaje_estudiantil',100000,7,4,'2023-03-15'),(8,'compra_medicamentos',10000000,2,13,'2023-03-27'),(9,'pasajes_viaje_jubilados',500000,3,15,'2023-04-04'),(10,'hospedaje_viaje_jubilados',1000000,3,12,'2023-04-04'),(11,'espectaculo_banda_homenaje_viaje_jubilados',750000,3,5,'2023-04-04'),(12,'compra_pizarrones',600000,7,2,'2023-04-15'),(13,'compra_atriles_concejales',650000,5,2,'2023-04-15'),(14,'compra_insumos_medicos',2000000,2,6,'2023-04-23'),(15,'compra_utiles_escolares',1000000,7,9,'2023-05-03'),(16,'subcontratacion_reparaciones_cañerias',650000,1,17,'2023-05-14');
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-17 23:38:16
