-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: virapagina
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `autor` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'CS Lewis'),(2,'Robert T. Kiyosaki'),(3,'Markus Zusak'),(5,'Jorge Amado'),(6,'Seu Madruga'),(7,'Antoine de Saint-Exupéry'),(8,'George R. R. Martin'),(9,'Itamar Vieira Junior'),(10,'Gabriela Lacerda'),(11,'J. K. Rowling'),(12,'George Orwell'),(13,'Chico Buarque'),(14,'Preston Prescott'),(15,'Gilclér Regina'),(16,'Norman Vincent Peale'),(17,'John Vask'),(18,'David Leavitt');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco_usuario`
--

DROP TABLE IF EXISTS `endereco_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rua` varchar(100) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `usuario_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id_idx` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco_usuario`
--

LOCK TABLES `endereco_usuario` WRITE;
/*!40000 ALTER TABLE `endereco_usuario` DISABLE KEYS */;
INSERT INTO `endereco_usuario` VALUES (1,'Rua Maria Elizabeth Aguiar Muniz',67,'','Araruna','Timbaúba','Pernambuco','55870000','2'),(2,'Sitio Gameleira',1,'Sede','Zona Rural','Macaparana','Pernambuco','5555555','05abb54b-2830-49c6-b961-99476ef58863'),(3,'Rua Bonita',17,NULL,'Itaim','São Paulo','São Paulo','99933330','049a2392-0bd2-4089-b0b1-e435dba5f19d'),(4,'Rua Rui Barbosa',92,NULL,'Parnamirim','Recife','Pernambuco','09988900','4e130e9f-ecbc-4a4a-baa6-de4163f85d5d'),(5,'Avenida Rosa e Silva',500,NULL,'Agamenon Magalhães','Recife','Pernambuco','99879890','52c9e123-a494-4a09-9fdf-f33f4cbad8fa'),(6,'Avenida Boa Viagem',87,'ap 1102','Boa Viagem','Recife','Pernambuco','99879890','70fd3bdb-a232-4b09-a20f-12b6fc915f7b'),(7,NULL,NULL,NULL,'Boa Vista','Recife','PE',NULL,'8ca11dfc-0067-41e7-9f30-b3e4362e1a4f'),(8,NULL,NULL,NULL,'Boa Vista','Recife','PE',NULL,NULL),(9,NULL,NULL,NULL,'Barracuda','Barracuda','Barracuda',NULL,NULL),(10,NULL,NULL,NULL,'GUGAEND','GUGAEND','GUGAEND',NULL,NULL),(11,NULL,NULL,NULL,'DUDAEND','DUDAEND','DUDAEND',NULL,NULL),(12,NULL,NULL,NULL,'BATATABAIRRO','BATATACITY','BATATASTATE',NULL,NULL),(13,NULL,NULL,NULL,'maicouneighbohood','MAicouland','maicoustate',NULL,'10a9640a-85f8-45ac-abef-0bc0c56e741e');
/*!40000 ALTER TABLE `endereco_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Terror/Horror'),(3,'Romance'),(4,'Fantasia'),(6,'romance'),(7,'drama'),(8,'cronica'),(9,'ficcao'),(10,'aventura'),(11,'terror'),(12,'tecnologia'),(13,'biografia'),(14,'autoajuda'),(15,'comedia'),(16,'infantil');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma`
--

DROP TABLE IF EXISTS `idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idioma` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idioma` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` VALUES (1,'Português-BR'),(2,'Inglês'),(3,'Espanhol'),(4,'Alemão'),(5,'Francês'),(6,'Norueguês'),(7,'Estoniano'),(8,'Japonês'),(9,'Chinês'),(10,'Coreano'),(11,'Thailandês');
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `id` varchar(40) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `isbn` varchar(100) DEFAULT NULL,
  `editora` varchar(100) DEFAULT NULL,
  `ano` year DEFAULT NULL,
  `edicao` varchar(45) DEFAULT NULL,
  `quantidade` int DEFAULT '1',
  `conservacao` varchar(200) NOT NULL,
  `venda` tinyint DEFAULT '0',
  `troca` tinyint DEFAULT '1',
  `imagem` varchar(500) DEFAULT 'https://ufo.com.br/uploads/blo_441.jpg',
  `usuario_id` varchar(40) DEFAULT NULL,
  `idioma_id` int DEFAULT NULL,
  `autor_id` int DEFAULT NULL,
  `genero_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `genero_id_idx` (`genero_id`),
  KEY `idioma_id_idx` (`idioma_id`),
  KEY `autor_id_idx` (`autor_id`),
  KEY `usuario_id_idx` (`usuario_id`),
  CONSTRAINT `autor_id` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`),
  CONSTRAINT `genero_id` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`),
  CONSTRAINT `idioma_id` FOREIGN KEY (`idioma_id`) REFERENCES `idioma` (`id`),
  CONSTRAINT `usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES ('06f9a3bc-5040-4986-bddc-b8d9d3665a6f','Tereza Batista Cansada de Guerra','934235538, 8546900841','Martins',1952,NULL,1,'Usado',1,1,'https://images-na.ssl-images-amazon.com/images/I/411GJZBuvQL._SX331_BO1,204,203,200_.jpg','2',1,5,3,'2021-04-30 17:33:08','2021-05-03 21:38:15'),('1','Como Aplicar um Cascudo','234324','viraPagina',2021,'1º',2,'Novo',1,1,'https://i.pinimg.com/originals/8f/e0/b8/8fe0b864991b04bef203d4bfef6b188d.jpg','90e844b3-83a7-4bca-9e0a-08998bfbea3e',1,6,1,'2021-04-24 10:57:05','2021-05-05 12:52:49'),('2','A Menina que Roubava Livros','9788580570182','Intrínseca',2011,NULL,1,'Novo',1,1,'https://images-na.ssl-images-amazon.com/images/I/514GbfM-F4L._SX347_BO1,204,203,200_.jpg','049a2392-0bd2-4089-b0b1-e435dba5f19d',2,3,1,'2021-04-24 10:57:05','2021-05-03 22:19:52'),('3','Pai Rico, Pai Pobre','9788550801483, 8550801488','Alta Books',2018,NULL,1,'Novo',1,1,'http://lojasaraiva.vteximg.com.br/arquivos/ids/2835272/1002201245.jpg?v=637025233886330000','2',3,3,14,'2021-04-24 10:57:05','2021-05-03 21:39:20'),('315df9b7-6655-4399-987c-db52890b13f7','Essa gente','9789896659738','COMPANHIA DAS LETRAS',2019,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/tTbDDwAAQBAJ?fife=w400-h600','7dff4e0b-5cde-4e85-a4e3-ce2d66844bb2',1,13,9,'2021-05-03 13:37:00','2021-05-03 22:19:52'),('3e9d612b-a95d-42ce-9c9e-c6f22eaddadc','A revolução dos bichos','9788580861921','Editora Companhia das Letras',2007,NULL,1,'Usado',1,1,'https://books.google.com/books/content/images/frontcover/Gqgxpt060qYC?fife=w400-h600','18350998-1481-4bed-9018-f50e5d282b4f',1,7,12,'2021-05-03 13:34:45','2021-05-03 22:19:52'),('4','Um livro para todos dominar','9788546900848, 8546900841','Sauron Books',2018,NULL,1,'Usado',1,1,'https://i.pinimg.com/originals/1a/d2/cb/1ad2cb19874caac6bff6597c8dd0675f.jpg','7dff4e0b-5cde-4e85-a4e3-ce2d66844bb2',4,6,1,'2021-04-24 10:57:05','2021-05-03 22:19:52'),('41e27db5-0b0c-4c67-a01e-398b3c7e3bc9','Conexão com o bebe','9788582457283','Simplíssimo',2019,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/H_O2DwAAQBAJ?fife=w400-h600','aef58c21-57c3-4556-9cce-7f2a153afb26',1,10,14,'2021-05-03 13:33:46','2021-05-03 22:19:52'),('4b9ac0a5-a43e-4423-b911-b97d2569dcac','As Crônicas Do Pai D`égua','9788531610706','Clube de Autores',2019,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/4J7tDwAAQBAJ?fife=w400-h600','049a2392-0bd2-4089-b0b1-e435dba5f19d',1,17,14,'2021-05-03 13:36:15','2021-05-03 22:19:52'),('61da6887-c39d-4c99-b963-7500937f08ac','Game of Thrones','9780553897845','Bantam',2003,NULL,1,'Novo',1,1,'https://books.google.com/books/content/images/frontcover/5NomkK4EV68C?fife=w400-h600','7dff4e0b-5cde-4e85-a4e3-ce2d66844bb2',1,8,10,'2021-05-03 13:31:34','2021-05-03 22:19:52'),('634d0f22-b539-4e59-86c0-14927696eb77','SQL para iniciantes','9781507113370','Babelcube Inc.',2015,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/q64cCgAAQBAJ?fife=w400-h600','2',1,14,12,'2021-05-03 13:37:22','2021-05-03 11:17:49'),('8dd9e67f-4d4c-4daf-bdf6-cf2c0f89d87d','O poder do pensamento positivo','9788531610707','Editora Cultrix',2015,NULL,1,'Usado',1,1,'https://books.google.com/books/content/images/frontcover/yiUVUy05pHkC?fife=w400-h600','049a2392-0bd2-4089-b0b1-e435dba5f19d',1,16,14,'2021-05-03 13:35:45','2021-05-03 22:19:52'),('8fffc1a3-ea3b-47d5-b784-89aa9866de10','Budapest','9789896658977','Editora Companhia das Letras',2019,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/TSGyDwAAQBAJ?fife=w400-h600','2',1,13,9,'2021-05-03 13:35:01','2021-05-03 11:17:49'),('91493b91-8e99-45f9-a9e4-3b0e417ab0c0','Harry Potter','9781781103081','Pottermore Publishing',2015,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/FDYQCwAAQBAJ?fife=w400-h600','0553848e-a899-4e19-8001-24c2b9c53dde',1,11,4,'2021-05-03 13:34:30','2021-05-03 22:19:52'),('a6bbe6b3-5566-46f7-913b-9e017015a4aa','O Homem que Sabia Demais','9788599560273, 8599560271','Novo Conceito',2007,NULL,1,'Usado',1,1,'https://images-na.ssl-images-amazon.com/images/I/71Zwd7LFwCL.jpg','0553848e-a899-4e19-8001-24c2b9c53dde',1,18,14,'2021-04-24 13:35:00','2021-05-03 22:19:52'),('bbe63424-83c6-4f49-90f2-dd8b98849812','Maternidade e Propósito de vida','9788582458020','Simplíssimo',2020,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/IrzPDwAAQBAJ?fife=w400-h600','4e130e9f-ecbc-4a4a-baa6-de4163f85d5d',1,10,14,'2021-05-03 13:38:15','2021-05-03 22:19:52'),('cc823a29-16c1-45b5-9c2f-af5dd2e59f8a','O Pequeno Príncipe','9786180400380','Pelekanos Books',2000,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/SCwnCAAAQBAJ?fife=w400-h600','18350998-1481-4bed-9018-f50e5d282b4f',1,7,3,'2021-05-03 13:17:27','2021-05-03 22:19:52'),('e18c51b7-2853-49be-ae44-96347ea74922','As Crônicas de Nárnia','9788578275693, 8578275691','Editora WMF MARTINS FONTES',2015,NULL,1,'Usado',1,1,'https://images-na.ssl-images-amazon.com/images/I/71yJLhQekBL.jpg','52c9e123-a494-4a09-9fdf-f33f4cbad8fa',1,1,4,'2021-05-01 11:24:02','2021-05-03 22:19:52'),('e771ea1d-8917-4628-8168-3ebc9a8ded2c','Carta a um refém','9781507170601','Babelcube Inc.',2017,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/rNwKDgAAQBAJ?fife=w400-h600','52c9e123-a494-4a09-9fdf-f33f4cbad8fa',1,7,9,'2021-05-03 13:36:40','2021-05-03 22:19:52'),('ed8a1fee-d0b1-4b44-b2ca-5f329f6a0023','Martin Luther King','9788583863502','LeBooks Editora',2019,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/v0KgDwAAQBAJ?fife=w400-h600','4e130e9f-ecbc-4a4a-baa6-de4163f85d5d',1,1,13,'2021-05-03 13:37:41','2021-05-03 22:19:52'),('f30879da-6070-4676-8a62-d38059ac507a','Torto Arado','9789896605858','Leya',2019,NULL,1,'Usado',1,1,'https://books.google.com/books/publisher/content/images/frontcover/lL2GDwAAQBAJ?fife=w400-h600','70fd3bdb-a232-4b09-a20f-12b6fc915f7b',1,9,14,'2021-05-03 13:32:37','2021-05-03 22:19:52');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` varchar(40) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `login` varchar(45) NOT NULL,
  `senha` varchar(150) DEFAULT NULL,
  `livros_favoritos` varchar(100) DEFAULT NULL,
  `livros_id` varchar(40) DEFAULT NULL,
  `imagem` varchar(500) DEFAULT 'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',
  `endereco_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `endereco_id_idx` (`endereco_id`),
  KEY `livros_id_idx` (`livros_id`),
  CONSTRAINT `endereco_id` FOREIGN KEY (`endereco_id`) REFERENCES `endereco_usuario` (`id`),
  CONSTRAINT `livros_id` FOREIGN KEY (`livros_id`) REFERENCES `livros` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('00c31c5d-0014-4c2f-bb46-35f6ec83b06c','Irmão Metralha',NULL,'5581989366459','irmao@metralha.com','$2a$10$CWGKp8gs8eWLxxjNcv.n1eVDQfQWUukselNWw2RXIYFNK/A44/Mm6',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:18:33','2021-05-05 13:18:33'),('049a2392-0bd2-4089-b0b1-e435dba5f19d','Hendy Almeida','23487752240','5581991000961','hendy2@dh.com','$2a$10$EdP2wflZYKn/AGXuLipetu.uIrCXv3uNOsU5bDQFOAgQ1E53jZZAG','O poder do pensamento positivo, Front-Hendy auto-biografia',NULL,'/img/user-hendy.jpeg',3,'2021-05-03 16:54:11','2021-05-04 15:10:46'),('0553848e-a899-4e19-8001-24c2b9c53dde','Iago','89076543287','999996543','iago@dh.com','$2a$10$jeBHosfB1/rWaMEc8Mo/deNMyAtbskF56dUUYtuRhiJquFzrngonG','Programando em javascript',NULL,'/img/user-iago.jpeg',2,'2021-05-03 16:53:57','2021-05-04 14:54:47'),('05abb54b-2830-49c6-b961-99476ef58863','Ozzy Osbourne','94342854859','666 6666-9999','ozy@sabbath.com','$2a$10$Yxv3jz07uO71DrHFxpxUSOLkrtiZ0lcb3faHYEQgPgT1HaxjDGXli','I dont wanna change the world',NULL,'/img/user-ozzy.jpeg',3,'2021-04-23 17:28:30','2021-05-04 14:51:09'),('07873ea8-0794-4f66-89c9-42cc86117d5c','Macaco Rato',NULL,'5581989366459','macaco@rato.com','$2a$10$UsXADAwYvtE2wZyxUzRymejId/IL4gd1obqkGAB9PVPTS/XoVbq0m',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:20:48','2021-05-05 13:20:48'),('10a9640a-85f8-45ac-abef-0bc0c56e741e','Maicou',NULL,'5581989366459','maicou@maicou.com','$2a$10$c/GPnZdf4cq5OhKW1UG4Yufp5MVTbJdVP2H6OWX6..S.ofHAzBK0u',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 14:11:56','2021-05-05 14:11:56'),('18350998-1481-4bed-9018-f50e5d282b4f','Mario','23445676590','999994356','mario@dh.com','$2a$10$241O0StajqRclTjgJ9Bs8usVaZs.AyC5pOoau43KnxA4NhiFm2TvW','As Crônicas Do Pai D`égua',NULL,'/img/user-mario.jpeg',2,'2021-05-03 16:54:28','2021-05-04 14:53:00'),('2','Luiz Negrinho','02343212345','81 989366459','lulq@avanacle.com','$2a$10$iZ5JNt87hB2rPTWQVRtAlurbeQORwOPs5WSttP8Lk1X4eA.QY9DRW','As Crônicas de Nárnia, Senhor dos Anéis',NULL,'/img/profile-pic.png',1,'2021-04-23 17:28:30','2021-05-04 17:56:15'),('209923d5-386b-47de-8d36-ebd704d2e9bd','Ciclano','12435364534','66 6666-9999','ciclano@avanacle.com','$2a$10$muLIRu1K2yUaOFjjohgyL.u6CQymGJ9K7bXqeIvFy/G6ddhLDYwgu','Eu queria ser um urso',NULL,'/img/user-ciclano.jpeg',4,'2021-04-24 11:58:04','2021-05-04 14:53:00'),('4e130e9f-ecbc-4a4a-baa6-de4163f85d5d','Miguel','18906741140','988335678','miguel@miguel.com','$2a$10$IJ.L05lHk7CrY3itb1QGMeyCZQ8/cRvCC7uCaI6BAiLOPyjdu2vhW','A revolucao dos bichos',NULL,'/img/user-miguel.jpeg',5,'2021-05-03 16:53:41','2021-05-04 14:53:00'),('502f1138-0f67-416d-a754-111620302cd9','Guga',NULL,'+5581989366459','guga@guga.com','$2a$10$46YhYEoV6mTnlBevagBLIOf30HB3jMD1Sso3.c8LELY7SAbQQ4jrK',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:54:18','2021-05-05 13:54:18'),('52c9e123-a494-4a09-9fdf-f33f4cbad8fa','Ludmylla Valadares','92312382934','81 9999-9999','ludmylla@ludmylla.com','$2a$10$sKrNBIsfnvytBBDvzxtgeuSyFj3nRjWDDLX.CkjbadUlVSqu243yy','o sapo que cantava na lagoa',NULL,'/img/user-ludmylla.jpeg',6,'2021-04-23 17:28:30','2021-05-04 14:53:00'),('52e3f5cf-62ed-42f8-aa36-a568bccaf364','manta aguada',NULL,'+5581989366459','manta@aguada.com','$2a$10$yVj4gsWklZBmLZsQWDEtwevTZKEHMVh84vEFmPisCp6MLm64FLja2',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:52:40','2021-05-05 13:52:40'),('70fd3bdb-a232-4b09-a20f-12b6fc915f7b','Lenildo','12345676548','988445432','lenildo@avanade.com','$2a$10$4V5OOKGkHatjDZt3AQ4v4uRAC9ziqGaa4hZtXHAZ5XGyG1UDmG8rS','Harry Potter',NULL,'/img/user-lenildo.jpeg',1,'2021-05-03 16:53:23','2021-05-04 14:53:22'),('716213a6-6b72-42b7-8804-772d36b9f6b7','REECOOO','12312312312','123123412','Reco@reco.com','$2a$10$Fqgd7jcEGyUiBIRJBf8Ezu/RvIPJarF9Od0t3P2ldFGDWjim/Nedy',NULL,NULL,NULL,2,'2021-05-04 12:40:45','2021-05-04 14:53:22'),('7dff4e0b-5cde-4e85-a4e3-ce2d66844bb2','Moara','19284265460','988883106','moa@avanade.com','$2a$10$ZUYlJzSM1l6ZxfCLI4fIAeG5Bej7a5lzOyCie9S4JNc/CkHjWEEwq','pequeno principe',NULL,'/img/user-moara.jpeg',3,'2021-05-03 16:52:58','2021-05-04 14:53:22'),('85e1e150-3b9d-4fc8-b829-cb352ff4e465','Tanga de Sarita',NULL,'9191919191','tanga@sarita.com','$2a$10$M/iCM5X0S42JJKC9Sxr7qeI5/r1g76ATpOol6iDeYgSgQ2fpycBF.',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:26:51','2021-05-05 13:26:51'),('89dfd442-446e-403c-a8ad-5c1547aeb7cb','Tio Patinhas',NULL,'5581989366459','tio@patinhas.com','$2a$10$XmHlgcQxWSyTNnF.j3f1MexKueRaflp.qhRc54u15noKmPVNwKO/6',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:17:29','2021-05-05 13:17:29'),('8ca11dfc-0067-41e7-9f30-b3e4362e1a4f','Pedrinho',NULL,'55 81 989366459','pedrinho@casa.com','$2a$10$mvVe2.9P50VPK5ry1G8xRO7FDmRA1iRrJBO6ggsntVR4HMuFTj/ii',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:05:38','2021-05-05 10:14:31'),('8ffd7e84-e6a2-411d-a136-4ac447f77fd6','cobra verde',NULL,'+5581989366459','cobra@verde.com','$2a$10$4jCexMsPS3EVBAHpMbz0.O/l7V6RC/3CjwDWs1vzNxCWaX6lFyl7i',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:45:46','2021-05-05 13:45:46'),('9077e230-df13-4990-9242-30adb259a20e','carpacho',NULL,'5581989366459','mata@mata.com','$2a$10$/ViIgLByXJcB8foEu2FncOnOHzKaBcgYnZOtZJYliJxHwb9.iX1Vy',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 14:09:43','2021-05-05 14:09:43'),('90e844b3-83a7-4bca-9e0a-08998bfbea3e','Geisiane Martins','16383456431','81 9397-9999','geisiania@avanade.com','oiturubem','eu queria ir pra marte, era uma vez em peritoró',NULL,'/img/profile-pic-geisiane.png',4,'2021-04-23 17:28:30','2021-05-04 14:53:22'),('95794fa5-bb77-4262-b0ea-f37dcc9368f4','Paca Rato',NULL,'5581989366459','Paca@rato.com','$2a$10$glSUyeLoyBIh/NJa7PUGlustChs8kNzyEuCF2BWyqy3wfRjvxdbSW',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:23:03','2021-05-05 13:23:03'),('9b471919-d7f9-4d09-9e8b-6989adf79a03','Francisca',NULL,'+5598984324795','franciscaparente98@gmail.com','$2a$10$7VHgdD3g8rLIK8P5qhTTG.m8IOsn2vcgjeYFXMpa9Dhl7jieX5V6W',NULL,NULL,NULL,5,'2021-05-04 12:54:39','2021-05-04 14:53:22'),('9b4b039d-da96-4868-8c95-de25a830f036','Balalaika',NULL,'81 989366459','balalaika@balalaika.com','$2a$10$GRy88oXN/mQRZZQOagO8vu47RtYs/k2gIhu3j7Jz.fpfFDsvqwwXS',NULL,NULL,NULL,6,'2021-05-04 12:52:06','2021-05-04 14:53:22'),('9db2031a-b69a-4413-a20e-066faf1e0873','Miguelito','22222222222','66 6666-9999','miguelito@avanacle.com','$2a$10$iIAqH8tLKbp74IZiYAbkR.b0MAeKTmeQMjM7LRDPaVVreKDasiuVS','Como trocar meu nome no cartório',NULL,'/img/user-miguelito',1,'2021-04-23 17:31:20','2021-05-04 14:53:22'),('9f77cebf-b7ac-485a-8018-b88d4e8ab66a','usuarioteste',NULL,'9191919191','teste@teste.com','$2a$10$Amv7tAyi2pSwbsYD.4qKKO7TeALEYMD1KMzHL1i6j4maVrOdu0KNa',NULL,NULL,NULL,2,'2021-05-04 16:37:20','2021-05-04 14:53:22'),('a3941d7f-1f97-4411-b4b8-20543f54b8d0','Vaca Azul',NULL,'+5581989366459','vaca@azul.com','$2a$10$xjGzMij7VYpNsEeturJVnuRAkZF3j.DiTVFqDL26BkXE1QDsVXZce',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:32:21','2021-05-05 13:32:21'),('a7e950f1-583c-4bba-a4fd-951a211799f1','duda',NULL,'+5581989366459','duda@duda.com','$2a$10$HpHNy9qbHHOnXczS7UvROOvbBGsspow0YdetZzFJKOqjQmu15tAGm',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:58:34','2021-05-05 13:58:34'),('aef58c21-57c3-4556-9cce-7f2a153afb26','Renata Garcia','34582666431','81 9399-9999','garrrcia@github.com','patodonald','alguem comeu meu bolo!, era uma vez uma ratazana',NULL,'/img/user-renata.jpeg',3,'2021-04-23 17:28:30','2021-05-04 14:53:22'),('d3e1ca26-3f6d-4737-987b-278075d9c121','Balalaika2',NULL,'81 989366459','balalaika2@balalaika.com','$2a$10$HOMFAt2fRsB6g4YKLot/1eeppDj/cachdpD9GKiEB2O6yD5TujNd2',NULL,NULL,NULL,4,'2021-05-04 12:53:51','2021-05-04 14:53:22'),('e1b624ba-d2da-4f6e-ac77-6eda52bc6606','batata',NULL,'+5581989366459','batata@frita.com','$2a$10$2O8bKR7pSPdCATsOjB3dY.t9pSq63Swz8vMVc7x6IvKfc54eio88m',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 14:02:31','2021-05-05 14:02:31'),('e4e6d2d3-654f-429f-bebd-69f24fb70a4c','Demóstenes',NULL,'81 989366459','demo@stenes.com','$2a$10$2BzdzUZ0D/Hz7q9VtO/Y4.6gYUeUCf/MofTXzoJNw.sO592ULXWqK',NULL,NULL,NULL,2,'2021-05-04 12:46:48','2021-05-04 14:53:22'),('f13e5a9f-464d-487e-a93f-1d058500e75a','Gato Rato',NULL,'5581989366459','gato@rato.com','$2a$10$7bb/7ZKG4y69sN.ysBt6LuBJB0ZxF.4WpZusUOVeKcxT61GFnps8e',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:22:01','2021-05-05 13:22:01'),('faf87dc2-9c30-4bce-bafb-2f18cc781ef2','fada do dente',NULL,'+5581989366459','fada@dente.com','$2a$10$BeaQ3ErZaiTQmzVoxTlW4OkHUMxWnEa/cFXHu.YdOi32X9eTuDKCC',NULL,NULL,'https://th.bing.com/th/id/R67a608fbcafbff0b56b51e7985154e9e?rik=ZfConEJaeeTERA&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2014%2f07%2fgeneric-facebook-profile_352867.png&ehk=H6Cd8fmQxILGVwk6W%2ffLG%2f7aUxdgnSiU4GlVMnmzPdc%3d&risl=&pid=ImgRaw',NULL,'2021-05-05 13:50:43','2021-05-05 13:50:43');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-05 13:05:26
