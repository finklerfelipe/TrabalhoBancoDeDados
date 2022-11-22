CREATE DATABASE  IF NOT EXISTS `taxi_maya`;
USE `taxi_maya`;

DROP TABLE IF EXISTS `boleto`;

CREATE TABLE `boleto` (
  `numero_boleto` int not null,
  `empresa_conveniada` varchar(40) DEFAULT NULL,
  primary key (numero_boleto)
);


LOCK TABLES `boleto` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `carteira_habilitaçao`;
CREATE TABLE `carteira_habilitaçao` (
  `numero_do_motorista` int NOT NULL,
  `numero_CNH` int NOT NULL PRIMARY KEY,
  `Categoria_CNH` varchar(2) NOT NULL,
  `data_emissão` date NOT NULL,
  `data_validade` date DEFAULT NULL
  ) ;


LOCK TABLES `carteira_habilitaçao` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `chamado`;
CREATE TABLE `chamado` (
  `data_chamado` date NOT NULL,
  `DDD` int NOT NULL,
  `telefone` int DEFAULT NULL,
  `local_de_destino` varchar(48) NOT NULL,
  `local_de_origem` varchar(45) DEFAULT NULL,
  `numero_de_chamado` varchar(10) NOT NULL PRIMARY KEY
) ;

LOCK TABLES `chamado` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `motorista`;
CREATE TABLE `motorista` (
  `Numero_motorista` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `data_nascimento` date NOT NULL,
  `DDD` int NOT NULL,
  `celular` int NOT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `nome_logradouro` varchar(30) NOT NULL,
  `numero` int DEFAULT NULL,
  `CEP` varchar(10) NOT NULL,
  `Bairro` varchar(30) NOT NULL,
  `cidade` varchar(30) NOT NULL
) ;

LOCK TABLES `motorista` WRITE;
UNLOCK TABLES;
--

DROP TABLE IF EXISTS `veiculo`;
CREATE TABLE `veiculo` (
  `numero_veiculo` int NOT NULL AUTO_INCREMENT primary key,
  `placa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `modelo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ano_de_fab` year DEFAULT NULL,
  `ano_de_modelo` year DEFAULT NULL
) ;

LOCK TABLES `veiculo` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `indica`;
create table indica (
numero_veiculo int NOT NULL AUTO_INCREMENT,
constraint fk_numeroveiculo foreign key (numero_veiculo) references veiculo (numero_veiculo),
numero_chamado varchar(10),
constraint fk_numerochamado foreign key (numero_chamado) references chamado (numero_de_chamado)
);