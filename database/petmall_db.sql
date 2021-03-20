-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: petmall_db
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.10.1

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cpf` varchar(11) NOT NULL,
  `cpf_responsavel` varchar(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `rg` varchar(9) DEFAULT NULL,
  `sexo` tinyint(1) DEFAULT NULL,
  `telefone` varchar(10) DEFAULT NULL,
  `celular` varchar(11) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `data_modificacao` date DEFAULT NULL,
  `renda` decimal(6,2) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `CEP` varchar(20) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `cpf_responsavel` (`cpf_responsavel`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`cpf_responsavel`) REFERENCES `clientes` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('02418639703',NULL,'Sr. João Guilherme Jesus','273406152',1,'1927825880','41983902552','1970-02-07','1985-12-30','1973-02-04',1201.68,'Confisco','Vila de da Rosa','574','Sergipe','45651445','Costela de Minas'),('04371698204',NULL,'Juan Correia','160253470',0,'1934073810','31943479769','2008-05-31','1999-09-11','2006-11-04',6247.59,'Santa Monica','Largo Lima','392','Tocantins','91849-649','Correia'),('05831946215',NULL,'Luna Cunha','678213549',1,'1906618490','31916558960','2020-02-25','2011-03-10','2002-01-31',2769.01,'Vila Copacabana','Sítio Pereira','1122','Sergipe','86285434','Aragão das Flores'),('07192364878',NULL,'Clara Lima','037184623',0,'1966636879','31923441000','2009-01-26','1980-05-29','1996-11-21',3555.01,'Vila Maria','Campo Luiz Otávio Jesus','1590','Goiás','08131076','Barbosa'),('08617324996',NULL,'Bryan Mendes','481305270',1,'1918968310','31981841980','1972-06-29','1997-07-15','1998-02-08',7811.48,'Vila Piratininga Venda Nova','Pátio de Gonçalves','175','Minas Gerais','64966760','Fernandes das Pedras'),('08914263533',NULL,'Maria Cecília Dias','513784020',1,'1909569225','31918274455','1975-01-28','1987-10-06','2015-03-22',4272.46,'Alta Tensão 2ª Seção','Colônia de da Paz','741','Bahia','55703305','Rocha da Praia'),('12307586903',NULL,'Raquel Araújo','510632841',0,'1975325200','81918314424','1971-03-29','1971-04-14','2001-02-01',8158.41,'São Luiz','Campo de Costela','63','Distrito Federal','70776539','da Paz'),('14068957339',NULL,'Ana Júlia Vieira','640518230',1,'1944559310','31992398547','2020-08-19','1987-09-21','1983-12-27',1338.84,'Mala E Cuia','Vale Farias','775','Sergipe','23461081','Rocha'),('15604879339',NULL,'Juliana Freitas','640721850',0,'1931266359','84995679060','1981-08-11','1993-11-01','2015-12-22',8141.35,'Vila Bandeirantes','Lago de Azevedo','1682','Tocantins','58128007','Mendes de Minas'),('16302895405',NULL,'João Vitor Cardoso','720581436',1,'1965083235','84945538988','1980-09-09','2016-10-09','1987-06-24',2013.53,'Baleia','Largo de Castro','1016','Goiás','10053200','Rodrigues Alegre'),('17204956370',NULL,'Bruno da Paz','062135788',1,'1923104483','31909946573','1981-06-30','1979-12-12','2007-02-06',3499.84,'Caiçaras','Residencial Gabriel Lopes','681','Ceará','77552331','Souza da Praia'),('18257309621',NULL,'Luana Gomes','360284176',0,'1954229264','84974636611','1991-05-25','1990-12-07','2019-02-19',6727.36,'Vale Do Jatoba','Avenida de Barbosa','1624','Amazonas','17434219','Correia'),('18267904549','02418639703','Dra. Maitê da Mata','587130246',1,'4955314278','51972718648','1970-03-10','1987-05-29','2015-01-11',6156.53,'Santa Cruz','Lagoa de Ferreira','523','Paraná','60913863','Lima do Campo'),('18609275302',NULL,'Luiz Miguel Peixoto','162348757',1,'1945914451','81983434923','1978-07-30','2002-04-13','1975-07-10',9187.68,'Camargos','Trevo Cardoso','1172','Pernambuco','00843811','Vieira de Peixoto'),('18963524051','57943801601','Julia Porto','531702686',0,'4949958485','84962498212','1971-11-04','1974-09-29','1993-05-22',5576.49,'Lagoa','Rua de Souza','49','Acre','49785763','Costela'),('19062453805',NULL,'Catarina Freitas','632715807',1,'1953678523','84950441031','1991-08-02','2018-01-18','2004-03-30',5549.96,'Mangabeiras','Lagoa Anthony Rezende','371','Bahia','67870553','Castro de Farias'),('21950634752','73681095493','Rafael Campos','142563808',1,'1968533340','71980704609','1973-09-09','2010-08-04','2011-01-23',3945.15,'Nossa Senhora Do Rosário','Esplanada Davi Porto','1160','Espírito Santo','31403966','da Mota'),('23740918640',NULL,'Srta. Clarice Cunha','637108528',1,'4935748441','31934547929','1980-02-06','2015-03-31','1975-09-11',1630.20,'Vila Novo São Lucas','Trecho Barbosa','365','Paraíba','81366710','Fogaça'),('24935701897',NULL,'Bernardo Oliveira','513407868',0,'1952365872','84913704012','1990-10-07','2006-03-07','1980-12-19',4887.32,'Universo','Viela Vitor Ferreira','1053','Maranhão','66451-163','Pinto do Sul'),('26549087120','71094653810','Maria Julia Lopes','470853128',0,'1961976366','71939169326','1978-10-03','2003-01-15','2005-06-18',2926.49,'Vila Pinho','Chácara de Jesus','114','Amazonas','92484678','Silva'),('27856103930',NULL,'Lucca Gonçalves','42710368X',1,'1929983641','51988853798','1995-10-30','1973-12-16','1985-06-09',7063.75,'Antonio Ribeiro De Abreu 1ª Seção','Vale da Costa','1601','Bahia','97685148','Moraes Paulista'),('28159706359',NULL,'Miguel Porto','543781203',1,'1928640898','41915638677','1973-03-12','1974-05-14','2017-04-27',8762.17,'Vila Copacabana','Colônia de Correia','1598','Mato Grosso','94718-414','Moraes'),('28679130478','85391407648','Dr. Gabriel Ramos','64873125X',0,'4949879862','81936383850','1971-09-05','1994-08-31','2009-01-22',9056.64,'Pousada Santo Antonio','Trevo Laura Gomes','437','São Paulo','77312-372','Araújo'),('29708356140',NULL,'João Gabriel Azevedo','237041856',0,'1964577602','81986100507','2003-09-16','2015-07-23','2009-10-25',6190.70,'Vila Maloca','Lago Sales','529','Pará','74430-077','da Rocha Alegre'),('30867294140','08617324996','Dr. Paulo Moreira','713026455',0,'1926470606','11938981918','1995-05-04','1994-10-07','2018-10-21',2398.13,'Santo Agostinho','Área Maitê Caldeira','1675','Acre','98391648','Fernandes'),('31685974066',NULL,'Raquel Fernandes','364082756',0,'1965218119','84987572830','1989-07-18','1987-07-27','1985-09-11',9557.52,'Conjunto Capitão Eduardo','Conjunto Silva','101','Amapá','76324661','Moraes'),('36429780104',NULL,'Catarina da Conceição','761230580',1,'1901254259','61961189850','1985-10-04','2002-10-12','1982-03-12',2754.46,'Universitário','Setor de Teixeira','1436','Distrito Federal','25172568','Aragão Verde'),('37298041541','54708269102','Maria Luiza Dias','458073210',0,'1949147287','31984554523','1990-02-20','1983-11-25','1999-11-27',8232.76,'Vila Madre Gertrudes 2ª Seção','Avenida de Almeida','1058','São Paulo','65969-752','Farias de Nunes'),('38209457683',NULL,'João Gabriel Nunes','826743018',0,'1994347999','61978465169','1979-03-07','2002-07-22','1997-12-03',4621.42,'Heliopolis','Área da Costa','1371','São Paulo','50894-339','da Cruz da Serra'),('38246190598',NULL,'Ian Rodrigues','473218057',1,'1987731594','51972938137','2007-10-06','1972-06-13','1991-06-23',8503.06,'Aguas Claras','Loteamento Luiz Otávio Jesus','542','Pernambuco','14931665','Fogaça do Amparo'),('39217485004',NULL,'Evelyn da Paz','714625838',1,'1932901074','21986719366','1977-01-10','2003-09-20','1974-08-16',9368.49,'Vista Do Sol','Fazenda Isadora Lima','900','Sergipe','08212-070','Novaes de Ferreira'),('42517890676','51079238441','Luiz Miguel Silva','761203588',1,'1950169455','41969153656','1997-03-31','2004-11-18','1999-03-11',5666.47,'São Salvador','Praia Nunes','399','Rio de Janeiro','92169-335','da Rocha'),('43508921760',NULL,'Benjamin Moura','186347054',1,'4904970942','11954562412','2009-04-25','1992-12-03','1985-02-07',2384.98,'Monsenhor Messias','Quadra Viana','816','Bahia','48277180','Oliveira'),('43957801214','49638205105','Leonardo Santos','081436579',1,'1901480387','84996221535','1980-07-09','1978-02-23','2007-04-26',7193.89,'Independência','Fazenda Nascimento','1719','Rio de Janeiro','31307928','Lima de Gonçalves'),('45632708144',NULL,'Esther Fernandes','521763484',1,'1945814589','31958894170','1988-02-23','1989-11-17','1981-08-19',7908.31,'Nova Cintra','Favela de Novaes','1403','Piauí','47678662','Mendes'),('45917836000',NULL,'Catarina Pires','135802477',0,'4944970791','81981364154','1973-03-20','1974-09-06','1986-03-28',7717.20,'Mariano De Abreu','Ladeira de Souza','384','Rondônia','44063-054','da Cunha do Galho'),('46238075171',NULL,'Bryan da Paz','15206784X',0,'1931745250','31968987004','2012-04-06','2010-12-31','2017-10-28',1539.12,'Pindura Saia','Morro Santos','34','Roraima','73572831','Araújo da Serra'),('46713589219',NULL,'Catarina Alves','253061477',1,'1936205076','51927312853','2020-08-20','2006-02-28','2009-12-19',5894.40,'Vista Do Sol','Vereda de Nascimento','1548','Bahia','17348-529','Barbosa'),('46728109331',NULL,'Pedro Farias','730561422',1,'1901355813','51914311173','2017-06-03','1999-01-08','1974-01-28',1849.25,'Vila Barragem Santa Lúcia','Alameda Pires','388','Bahia','72142-915','Dias'),('46852713946',NULL,'Noah Rocha','783650140',0,'1923031774','31946388972','1981-12-05','1984-11-16','1997-09-12',6931.39,'Fernão Dias','Campo Gonçalves','328','Sergipe','72882491','Pereira'),('47521836090',NULL,'Calebe Freitas','648372108',0,'4998075781','84903031166','1994-12-04','2018-10-22','1992-06-26',6346.55,'Barroca','Ladeira da Paz','149','Rio Grande do Norte','55487087','Pereira'),('48073562162',NULL,'Larissa Nogueira','285134073',1,'1910594636','61921386454','2020-07-30','1981-10-11','2012-11-04',7534.68,'Vila Piratininga Venda Nova','Fazenda Sales','301','Amazonas','88224-721','da Cruz'),('48539162709',NULL,'Vinicius Ribeiro','071564329',1,'1955033255','84956198548','1976-05-22','1976-12-12','1976-03-07',2893.06,'Novo São Lucas','Lagoa de Almeida','325','Rio Grande do Norte','51117106','Moura do Amparo'),('48629507101',NULL,'Olivia Campos','501348761',0,'1969991929','71970299894','2020-10-19','2003-06-22','1985-06-01',9476.45,'Nova Esperança','Núcleo de Pires','687','Pará','09190906','Barbosa'),('48932715041',NULL,'Giovanna Cardoso','245837619',0,'1961249949','71933693485','1995-03-27','2016-03-30','1986-03-02',9352.53,'Confisco','Ladeira João Vitor Santos','421','Distrito Federal','91997-013','Aragão Alegre'),('49638205105',NULL,'Sr. Kaique Teixeira','140268534',0,'1923357556','41906989117','1980-02-16','1971-03-28','2005-08-05',7952.51,'Pantanal','Esplanada de Freitas','1546','Paraíba','84035-518','Nascimento do Norte'),('50389712612',NULL,'Laura Fernandes','278354609',1,'1938998110','81905568673','2000-04-15','1991-10-02','1974-09-05',8743.15,'Horto Florestal','Morro de Freitas','106','Paraíba','56179-631','das Neves'),('51079238441',NULL,'Danilo da Costa','10876543X',0,'4929513404','21995846078','1981-02-28','1974-02-13','1976-05-11',3705.47,'Lagoinha Leblon','Loteamento Sales','1531','Pernambuco','23428093','Pires dos Dourados'),('51247896030',NULL,'Juliana Viana','645720136',0,'1946089714','31974206600','2013-02-14','1993-03-24','1991-09-22',8142.38,'Barão Homem De Melo 2ª Seção','Morro Leonardo Correia','639','Minas Gerais','96369740','Ramos de da Luz'),('51674809220',NULL,'Sra. Gabrielly Moreira','417258069',0,'1963425652','11910091864','1971-01-16','2012-01-28','1983-09-10',7750.70,'Estoril','Distrito de Duarte','414','Piauí','72944089','da Mota'),('52037918488',NULL,'Pietro Novaes','784630525',1,'1952821756','31916993130','1991-02-25','1998-07-24','1981-11-28',8477.43,'Xangri-Lá','Morro Maria Alice da Luz','1032','Alagoas','43359-652','Viana da Prata'),('52108476326',NULL,'Marcela Costa','268357407',1,'1976032008','41958418454','2018-06-01','2013-05-13','1996-12-19',7186.52,'Maria Tereza','Vila Martins','194','Rio Grande do Norte','80099119','Lopes Alegre'),('53261487909',NULL,'Bruna Lima','162035482',0,'1959603080','71926176897','2010-04-08','1974-08-07','2001-01-22',2758.63,'Piraja','Feira de Moura','1062','Pará','40251302','Pinto'),('53416890205','95314872609','Pedro Henrique Costa','357184026',0,'1970002169','21985010760','1970-04-07','2006-09-02','1985-01-23',9806.23,'Comiteco','Sítio Barros','189','Mato Grosso do Sul','24857594','Porto'),('54186072353',NULL,'Sofia Carvalho','370615487',0,'1999874491','11910288583','2010-08-17','2003-07-06','1984-12-25',6172.85,'Conjunto Califórnia Ii','Praça de Ribeiro','1186','Mato Grosso','22093788','Almeida do Oeste'),('54708269102',NULL,'Isabel da Costa','72538461X',1,'1941740378','81940484937','1995-08-17','1988-10-10','1991-02-23',6587.17,'São Vicente','Área de Silva','1227','São Paulo','90115806','Ferreira do Amparo'),('54896723155',NULL,'Sr. Davi Luiz Melo','165487306',1,'1916350029','31977603855','1987-05-16','1978-02-08','2000-03-04',4533.60,'Jardim Atlântico','Rodovia de Carvalho','1449','Pará','62458769','Costa'),('56784931246','14068957339','Leonardo Lima','65178430X',1,'1913260029','81915913956','2012-02-06','1972-01-23','1991-07-21',9007.92,'Floramar','Sítio de Moreira','452','Piauí','71647299','Sales do Sul'),('56970814300','97460532800','Dr. Luiz Felipe Freitas','38407652X',1,'1929844240','31952541163','2001-06-30','2019-10-03','1993-12-01',7626.89,'Serrano','Fazenda Isis Correia','497','Goiás','68559607','Cavalcanti das Pedras'),('57143069299',NULL,'Kaique Alves','715062384',1,'1929223640','84998986633','2001-01-06','1993-06-14','1979-07-31',8319.23,'São Salvador','Esplanada Brenda da Cruz','505','Amazonas','58429082','Ramos'),('57408963120','48932715041','Sarah Pires','861345022',1,'1980521924','71975318869','2008-07-03','1996-07-15','1987-05-27',7752.80,'Vila Paraíso','Praia Heloísa Caldeira','677','Espírito Santo','70520-228','das Neves'),('57943801601',NULL,'Felipe Farias','804173254',0,'4959596906','51959921859','2000-06-17','1976-04-30','1989-02-24',1608.43,'São Francisco Das Chagas','Praia Lara Teixeira','406','São Paulo','18367944','Jesus'),('58934021624',NULL,'Davi Luiz Dias','576402813',1,'1993994726','41927195251','2008-03-09','1997-12-02','2017-08-26',2455.60,'Floresta','Estação Lima','313','Alagoas','63919-308','da Costa do Sul'),('59436218060','52108476326','Maria Clara Oliveira','16074832X',1,'1959761380','81925664831','2008-02-15','2012-07-13','2014-12-20',4975.93,'Planalto','Núcleo João Nascimento','1269','Rio de Janeiro','47702-039','Nogueira Verde'),('61574802976','18257309621','Sra. Ana Vitória Teixeira','278156344',0,'1952850247','84938579164','2020-04-09','2004-10-20','1988-11-26',2071.72,'Suzana','Estrada Vitor Melo','1647','Rio Grande do Norte','16618406','Almeida'),('62840719576',NULL,'Fernanda Fogaça','453712083',0,'1959310009','51910794244','2002-06-19','1996-11-23','2013-01-16',9892.89,'Xangri-Lá','Trecho Sophia Oliveira','1713','Mato Grosso do Sul','15850-919','Ribeiro do Campo'),('62870394500',NULL,'Cauê Ramos','812630452',0,'1983897218','31989871243','1999-08-22','2005-11-03','2008-08-05',2568.21,'Vila Ouro Minas','Loteamento Freitas','1361','Goiás','11355198','Araújo'),('68542391764','19062453805','João Felipe Almeida','286350476',0,'1977362931','84932867412','1995-09-04','1975-11-14','1979-07-26',5838.92,'Concórdia','Conjunto Viana','851','São Paulo','43386-405','Castro'),('71094653810',NULL,'Murilo Rocha','618740326',0,'1921751801','41925649645','2000-07-24','1985-09-05','1974-05-06',9350.34,'Juliana','Favela Jesus','252','Rio Grande do Sul','85874-422','Aragão do Norte'),('71432865080',NULL,'Evelyn da Mota','810523462',0,'1959142475','81954575890','2013-05-18','1990-04-21','1977-01-11',4629.72,'São Sebastião','Quadra da Mota','1693','Paraná','15404395','Barbosa'),('72645391800',NULL,'Guilherme Costa','613805276',1,'1902490143','11924811002','2005-09-17','1982-07-02','1971-11-03',6065.65,'Santana Do Cafezal','Núcleo de Costa','308','Minas Gerais','06736704','Araújo'),('73086541920','93250786195','Sr. Benjamin Melo','402163874',0,'1937834813','84905644883','1980-01-02','1993-02-10','1983-09-07',6303.77,'Piratininga','Favela Cunha','1378','Rio de Janeiro','73958713','Rezende'),('73129460543','39217485004','Natália Azevedo','740236817',0,'1967690537','61986261831','1995-04-20','1975-06-25','1973-02-20',9708.68,'Mangueiras','Estação Rodrigues','544','Sergipe','99638-964','Ribeiro'),('73681095493',NULL,'Bianca Nascimento','621850433',1,'1930970797','21906644894','1972-07-24','2019-08-14','2011-05-15',5624.81,'Vila São Geraldo','Campo de Cavalcanti','483','Pará','44709398','Viana da Prata'),('74830169575','82596713012','Vinicius Gomes','03456827X',0,'1944377923','84934433417','2005-02-16','2017-07-08','1983-06-29',9475.58,'União','Rua da Cunha','1839','Bahia','01844316','Ramos'),('76352489109','31685974066','Dr. Yago Nascimento','756102832',0,'1912499252','61918043877','2013-12-14','2009-09-23','1993-01-27',7267.06,'Nossa Senhora Da Aparecida','Praia Maria Fernanda da Paz','1886','Acre','47434-997','Cardoso'),('78921506330','38246190598','Larissa Freitas','648721036',0,'1938839511','51975646054','2020-01-03','1987-12-08','1979-12-22',6354.57,'Vila Coqueiral','Área Barros','1054','Tocantins','04572455','Cavalcanti'),('78926013502',NULL,'Isadora Castro','472603589',0,'1999572398','11965505947','1985-05-18','2000-11-17','1971-05-14',6094.68,'Vila Minaslandia','Residencial Cavalcanti','765','Rio de Janeiro','13458-630','Fernandes da Praia'),('81029347603','05831946215','Eduardo Correia','427831568',1,'1981357179','21977644163','1972-05-05','2005-05-07','2005-08-19',3498.51,'Santana Do Cafezal','Via Stephany da Costa','1203','Paraná','78533-788','Nunes'),('82596713012',NULL,'Srta. Maria Julia Lopes','06123574X',1,'1918686682','81965172711','2020-11-24','1990-01-03','1996-11-16',3016.28,'Cidade Jardim Taquaril','Conjunto Julia Dias','1343','Alagoas','22869267','Viana'),('85304169700','86159043757','Davi Lucca da Luz','285147602',0,'1921263026','81966056555','2015-12-23','1987-08-22','1998-09-09',8844.40,'Santa Cruz','Ladeira Isabella da Costa','418','Rondônia','70339662','Nogueira'),('85391407648',NULL,'Camila Almeida','413652804',1,'1980997342','61931383593','1970-07-04','1999-08-16','1972-05-10',9600.16,'Vila Boa Vista','Ladeira de Viana','1767','Paraíba','13150348','Lima da Serra'),('86159043757',NULL,'Gabriel Freitas','061752344',1,'1965905291','71970635684','1987-01-06','2018-05-19','2017-03-16',8450.60,'São João Batista','Favela Emanuel Vieira','1066','Acre','67713-752','Melo'),('86241705326','87590126411','Maitê Mendes','427306589',1,'4908263462','21979371614','2009-04-30','2020-03-12','2012-05-31',3069.95,'Vila Trinta E Um De Março','Condomínio Cunha','306','Sergipe','65836-010','Rezende'),('87143209678','46852713946','Luiz Gustavo Monteiro','407183267',0,'1933730297','11987527419','1976-08-19','1979-10-24','1975-04-25',4954.79,'Palmeiras','Praia Gustavo Henrique Ramos','1885','Amapá','00211-026','Moreira'),('87145069393','17204956370','Bianca Castro','514086737',1,'1966359500','71986737978','2018-12-06','1994-09-12','2004-06-06',2808.02,'Vila Califórnia','Viaduto de Martins','1336','Roraima','71847-575','da Conceição'),('87590126411',NULL,'Valentina Correia','724038152',1,'1942893201','61917978903','1977-12-25','1973-06-21','2007-05-03',2744.85,'Morro Dos Macacos','Colônia Ian Freitas','1129','Santa Catarina','05861571','Pereira Grande'),('89574612058',NULL,'Clara Caldeira','57634820X',1,'1990633064','84984876573','1988-12-25','1981-08-16','2008-04-17',9423.24,'Pirineus','Quadra Porto','510','Piauí','29027-207','Lima'),('90638154251',NULL,'Rafaela Monteiro','701532488',0,'1915076959','11914400394','2013-06-06','2017-02-11','1985-02-09',4277.47,'Baleia','Avenida Duarte','41','Amapá','28685241','Correia da Prata'),('93250786195',NULL,'Ryan Sales','618275046',0,'1971317811','11935592690','1986-02-19','1983-07-25','1987-09-16',2719.29,'Céu Azul','Residencial Nascimento','1805','Paraíba','12552819','Campos'),('93407518250','98574136093','Mirella Moreira','543062818',1,'1948943119','81930707801','2001-02-01','2015-03-02','2012-02-22',2159.13,'Teixeira Dias','Rodovia Isabelly Duarte','1220','Alagoas','27148426','Teixeira Paulista'),('93540728600',NULL,'Luna Rocha','183426757',0,'1907019511','71986865568','2007-08-25','2009-06-12','2008-03-18',1771.32,'São Bernardo','Trecho de Oliveira','1615','Paraíba','27111-048','Mendes'),('93547860229','46713589219','Ana Julia Fogaça','281304750',1,'1910777259','21904296546','1986-12-08','2007-06-15','1975-01-12',8038.05,'Graça','Campo de Aragão','1990','Rio de Janeiro','88338412','Souza'),('95083614766','45632708144','João Felipe Silva','634025879',1,'1997895403','71933717172','1992-05-30','2012-08-30','2012-07-25',5071.72,'Antonio Ribeiro De Abreu 1ª Seção','Viaduto Correia','926','Rio Grande do Sul','17368958','Azevedo do Amparo'),('95237180612',NULL,'Isaac Lima','654827138',0,'1925797915','84942061097','2001-06-24','1995-10-08','2006-10-06',3916.05,'Nova Suíça','Quadra Natália Rocha','1446','Pará','78305-120','Cavalcanti'),('95314872609',NULL,'Cauã da Luz','538216074',1,'1982840789','61950460494','2007-07-18','1978-09-02','2010-02-05',3357.13,'Vila Havaí','Conjunto Arthur Castro','680','Rio de Janeiro','43648130','Araújo'),('97438051684',NULL,'Noah Ferreira','731025465',0,'1914107155','21906303635','2003-12-25','1989-10-03','2016-12-06',8822.12,'Vila Piratininga Venda Nova','Rodovia Pedro Lucas Barbosa','1059','Alagoas','90770310','Peixoto'),('97460532800',NULL,'Sr. Davi Lucca Castro','052871368',1,'1960383775','41948881256','2015-03-23','1990-03-07','2016-08-21',6262.12,'Nova Floresta','Alameda Ana Sophia Cardoso','865','Alagoas','43359691','Novaes'),('98241706502','97438051684','Lucca Alves','27410538X',1,'1984360326','61939595662','2015-11-19','1978-12-21','2018-03-02',5573.88,'Lagoinha','Chácara de Ramos','1362','Piauí','81441-730','Gomes do Amparo'),('98574136093',NULL,'Ana Júlia Viana','580741266',1,'1952553626','11990262019','1974-09-24','1980-08-15','1978-11-16',5301.63,'Santa Lúcia','Trevo de Dias','1421','Mato Grosso do Sul','30912872','Fogaça');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_pets`
--

DROP TABLE IF EXISTS `clientes_pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_pets` (
  `id_cliente_pet` int NOT NULL AUTO_INCREMENT,
  `id_pet` int DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_cliente_pet`),
  KEY `id_pet` (`id_pet`),
  KEY `cpf` (`cpf`),
  CONSTRAINT `clientes_pets_ibfk_1` FOREIGN KEY (`id_pet`) REFERENCES `pets` (`id_pet`),
  CONSTRAINT `clientes_pets_ibfk_2` FOREIGN KEY (`cpf`) REFERENCES `clientes` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_pets`
--

LOCK TABLES `clientes_pets` WRITE;
/*!40000 ALTER TABLE `clientes_pets` DISABLE KEYS */;
INSERT INTO `clientes_pets` VALUES (1,1,'71094653810'),(2,2,'30867294140'),(3,3,'21950634752'),(4,4,'87145069393'),(5,5,'47521836090'),(6,6,'81029347603'),(7,7,'17204956370'),(8,8,'18257309621'),(9,9,'02418639703'),(10,10,'57943801601'),(11,11,'78926013502'),(12,12,'18963524051'),(13,13,'51247896030'),(14,14,'16302895405'),(15,15,'54708269102'),(16,16,'31685974066'),(17,17,'86241705326'),(18,18,'78921506330'),(19,19,'28159706359'),(20,20,'12307586903'),(21,21,'48932715041'),(22,22,'49638205105'),(23,23,'43957801214'),(24,24,'37298041541'),(25,25,'46713589219'),(26,26,'95314872609'),(27,27,'07192364878'),(28,28,'54896723155'),(29,29,'93407518250'),(30,30,'57408963120'),(31,31,'52037918488'),(32,32,'58934021624'),(33,33,'93540728600'),(34,34,'27856103930'),(35,35,'28679130478'),(36,36,'15604879339'),(37,37,'93547860229'),(38,38,'71432865080'),(39,39,'05831946215'),(40,40,'98241706502'),(41,41,'59436218060'),(42,42,'54186072353'),(43,43,'82596713012'),(44,44,'08617324996'),(45,45,'56784931246'),(46,46,'51674809220'),(47,47,'18267904549'),(48,48,'48539162709'),(49,49,'57143069299'),(50,50,'95237180612'),(51,51,'51079238441'),(52,52,'46238075171'),(53,53,'53261487909'),(54,54,'68542391764'),(55,55,'53416890205'),(56,56,'98574136093'),(57,57,'86159043757'),(58,58,'76352489109'),(59,59,'14068957339'),(60,60,'62870394500'),(61,61,'46728109331'),(62,62,'73129460543'),(63,63,'39217485004'),(64,64,'85391407648'),(65,65,'73086541920'),(66,66,'97438051684'),(67,67,'73681095493'),(68,68,'62840719576'),(69,69,'18609275302'),(70,70,'48073562162'),(71,71,'23740918640'),(72,72,'24935701897'),(73,73,'93250786195'),(74,74,'26549087120'),(75,75,'95083614766'),(76,76,'89574612058'),(77,77,'61574802976'),(78,78,'97460532800'),(79,79,'50389712612'),(80,80,'48629507101'),(81,81,'85304169700'),(82,82,'19062453805'),(83,83,'90638154251'),(84,84,'56970814300'),(85,85,'52108476326'),(86,86,'87143209678'),(87,87,'38246190598'),(88,88,'72645391800'),(89,89,'42517890676'),(90,90,'29708356140'),(91,91,'08914263533'),(92,92,'45632708144'),(93,93,'43508921760'),(94,94,'46852713946'),(95,95,'38209457683'),(96,96,'36429780104'),(97,97,'87590126411'),(98,98,'74830169575'),(99,99,'04371698204'),(100,100,'45917836000'),(101,101,'95237180612'),(102,102,'73681095493'),(103,103,'18257309621'),(104,104,'62870394500'),(105,105,'17204956370'),(106,106,'86159043757'),(107,107,'42517890676'),(108,108,'54708269102'),(109,109,'51674809220'),(110,110,'37298041541'),(111,111,'45917836000'),(112,112,'23740918640'),(113,113,'72645391800'),(114,114,'85304169700'),(115,115,'86159043757'),(116,116,'36429780104'),(117,117,'50389712612'),(118,118,'47521836090'),(119,119,'48539162709'),(120,120,'39217485004');
/*!40000 ALTER TABLE `clientes_pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `id_pet` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `sexo` tinyint(1) DEFAULT NULL,
  `especie` varchar(100) DEFAULT NULL,
  `raca` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pet`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,'Lucca','2021-01-05',0,'CACHORRO','mollitia'),(2,'Diogo','2020-05-03',0,'ROEDOR','sequi'),(3,'Calebe','2020-03-30',0,'GATO','consequatur'),(4,'Gustavo','2020-04-10',1,'CACHORRO','cupiditate'),(5,'Brenda','2020-10-14',1,'ROEDOR','corporis'),(6,'Helena','2020-01-17',0,'REPTIL','beatae'),(7,'Stella','2020-06-09',0,'GATO','deleniti'),(8,'Pedro','2020-10-21',0,'ROEDOR','facere'),(9,'Larissa','2020-11-25',1,'REPTIL','vitae'),(10,'Nicolas','2020-10-06',1,'GATO','occaecati'),(11,'Lorenzo','2020-02-19',1,'ROEDOR','ipsam'),(12,'Caio','2020-06-08',1,'REPTIL','voluptate'),(13,'Noah','2020-11-07',1,'CACHORRO','quia'),(14,'Vinicius','2021-02-12',0,'AVE','possimus'),(15,'Nicole','2020-08-24',1,'CACHORRO','facere'),(16,'Maria','2020-05-09',0,'GATO','ea'),(17,'Pedro','2020-01-17',1,'GATO','animi'),(18,'Rodrigo','2021-02-02',1,'GATO','iure'),(19,'Larissa','2020-10-07',0,'REPTIL','odit'),(20,'Sabrina','2020-04-05',1,'REPTIL','nostrum'),(21,'Davi','2020-08-16',1,'CACHORRO','tempora'),(22,'Amanda','2021-02-07',1,'AVE','corrupti'),(23,'Marina','2020-09-08',0,'CACHORRO','deleniti'),(24,'Yuri','2020-07-27',1,'AVE','perspiciatis'),(25,'Bruno','2020-10-19',1,'GATO','ab'),(26,'Alice','2020-01-22',0,'GATO','sunt'),(27,'Leonardo','2021-02-15',0,'ROEDOR','recusandae'),(28,'Giovanna','2020-02-19',0,'AVE','reprehenderit'),(29,'Cauê','2021-02-07',0,'REPTIL','minima'),(30,'Thomas','2021-01-15',0,'GATO','animi'),(31,'Maitê','2020-02-16',1,'ROEDOR','a'),(32,'Maria','2020-01-16',0,'ROEDOR','sit'),(33,'Esther','2020-06-19',1,'AVE','repudiandae'),(34,'Sabrina','2020-04-03',1,'ROEDOR','molestiae'),(35,'Matheus','2021-01-28',1,'CACHORRO','quos'),(36,'Sarah','2020-06-29',0,'CACHORRO','facere'),(37,'Noah','2020-02-19',0,'REPTIL','autem'),(38,'Pietra','2020-08-14',0,'AVE','iusto'),(39,'Maria','2020-09-22',1,'REPTIL','nisi'),(40,'Bruna','2020-01-30',0,'AVE','odit'),(41,'Amanda','2021-02-23',1,'REPTIL','itaque'),(42,'Pietra','2020-06-13',1,'REPTIL','eos'),(43,'Mirella','2020-06-04',1,'CACHORRO','fugit'),(44,'Antônio','2020-11-15',1,'ROEDOR','quia'),(45,'Luna','2020-01-24',1,'REPTIL','omnis'),(46,'André','2020-07-30',1,'AVE','non'),(47,'Nicole','2020-01-12',1,'CACHORRO','reprehenderit'),(48,'Calebe','2020-11-12',1,'CACHORRO','nisi'),(49,'Isaac','2020-03-09',1,'ROEDOR','occaecati'),(50,'Lucas','2020-01-31',1,'GATO','eum'),(51,'Letícia','2020-03-15',1,'AVE','fuga'),(52,'Anthony','2020-06-11',1,'AVE','tempore'),(53,'Lara','2020-11-06',1,'AVE','molestiae'),(54,'Gabriela','2020-01-21',0,'ROEDOR','eaque'),(55,'Lívia','2020-04-20',1,'AVE','consequatur'),(56,'Renan','2020-03-20',1,'AVE','quibusdam'),(57,'Davi','2020-03-12',0,'REPTIL','cum'),(58,'Ana','2020-01-25',0,'GATO','eligendi'),(59,'Alexia','2020-11-04',1,'REPTIL','eligendi'),(60,'Nicole','2020-09-12',1,'ROEDOR','ut'),(61,'Joana','2020-09-19',0,'REPTIL','aspernatur'),(62,'Cauã','2020-11-20',1,'REPTIL','quisquam'),(63,'Alice','2020-12-10',0,'AVE','ut'),(64,'Levi','2020-12-11',1,'ROEDOR','repellendus'),(65,'Maria','2020-12-17',0,'AVE','quaerat'),(66,'Milena','2020-10-08',1,'REPTIL','quae'),(67,'Luana','2020-09-10',0,'REPTIL','voluptas'),(68,'Heloísa','2020-08-10',0,'AVE','placeat'),(69,'Enzo','2021-02-01',0,'REPTIL','fugiat'),(70,'Caroline','2020-10-06',1,'CACHORRO','omnis'),(71,'Pietro','2020-03-22',1,'AVE','dignissimos'),(72,'João','2020-03-23',0,'CACHORRO','harum'),(73,'Alícia','2020-08-14',1,'ROEDOR','odit'),(74,'Clara','2020-07-27',0,'AVE','fugit'),(75,'Davi','2021-03-09',1,'GATO','repellendus'),(76,'Gabrielly','2020-02-06',0,'CACHORRO','perferendis'),(77,'Rafaela','2020-09-07',1,'REPTIL','numquam'),(78,'Emanuelly','2020-03-19',1,'CACHORRO','quis'),(79,'Carlos','2020-07-10',1,'CACHORRO','aliquid'),(80,'Kaique','2020-03-11',0,'ROEDOR','consequatur'),(81,'Alana','2020-11-04',0,'CACHORRO','maiores'),(82,'Melissa','2020-09-13',1,'GATO','consequatur'),(83,'Marcelo','2020-06-01',0,'REPTIL','saepe'),(84,'Fernanda','2020-04-18',0,'CACHORRO','totam'),(85,'Samuel','2020-10-09',1,'REPTIL','hic'),(86,'Eduarda','2021-01-09',1,'REPTIL','animi'),(87,'Emanuella','2020-12-28',1,'ROEDOR','animi'),(88,'Ana','2020-01-22',0,'GATO','eius'),(89,'Enzo','2020-08-19',0,'CACHORRO','ducimus'),(90,'Luiz','2021-02-07',1,'REPTIL','nobis'),(91,'Júlia','2020-05-03',1,'REPTIL','illum'),(92,'Catarina','2020-02-24',0,'REPTIL','provident'),(93,'Davi','2020-06-01',1,'AVE','laboriosam'),(94,'Ana','2020-03-15',0,'ROEDOR','officiis'),(95,'Joana','2020-03-28',0,'REPTIL','porro'),(96,'Maria','2021-01-21',1,'ROEDOR','mollitia'),(97,'Maria','2020-08-06',0,'AVE','illum'),(98,'Danilo','2020-11-21',0,'GATO','et'),(99,'Bernardo','2021-02-07',1,'AVE','qui'),(100,'Daniela','2020-08-27',1,'ROEDOR','tenetur'),(101,'Stephany','2020-04-28',1,'CACHORRO','praesentium'),(102,'Luiz','2021-01-21',1,'AVE','voluptas'),(103,'Emanuelly','2020-09-09',1,'REPTIL','excepturi'),(104,'Luiz','2020-12-12',1,'CACHORRO','quia'),(105,'Evelyn','2020-03-20',1,'ROEDOR','natus'),(106,'Erick','2020-03-05',1,'GATO','voluptatum'),(107,'João','2020-02-17',0,'GATO','unde'),(108,'Isadora','2020-10-27',1,'AVE','incidunt'),(109,'Luigi','2020-11-04',0,'ROEDOR','ea'),(110,'Mirella','2020-05-27',1,'ROEDOR','earum'),(111,'Gabriel','2020-07-10',0,'AVE','cupiditate'),(112,'Maria','2020-01-11',0,'CACHORRO','incidunt'),(113,'Marcos','2021-02-09',1,'GATO','enim'),(114,'Francisco','2020-02-17',1,'CACHORRO','reiciendis'),(115,'Laís','2020-08-17',0,'ROEDOR','molestias'),(116,'Pedro','2020-12-15',0,'AVE','suscipit'),(117,'Lucas','2020-05-11',0,'GATO','dignissimos'),(118,'Fernanda','2020-12-04',1,'ROEDOR','possimus'),(119,'Gabriel','2020-09-03',1,'REPTIL','dolores'),(120,'Guilherme','2021-01-18',0,'GATO','odio');
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `valor` decimal(6,2) DEFAULT NULL,
  `tipo` enum('AVE','CACHORRO','GATO','REPTIL','ROEDOR') DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'quod',28.76,'GATO'),(2,'aut',7.91,'CACHORRO'),(3,'molestias',8.00,'ROEDOR'),(4,'beatae',8.83,'REPTIL'),(5,'quisquam',35.70,'CACHORRO'),(6,'consequatur',42.35,'CACHORRO'),(7,'architecto',18.91,'CACHORRO'),(8,'fugiat',6.24,'AVE'),(9,'inventore',46.59,'CACHORRO'),(10,'itaque',44.62,'CACHORRO'),(11,'ea',14.72,'CACHORRO'),(12,'eius',44.79,'AVE'),(13,'vitae',47.25,'REPTIL'),(14,'exercitationem',7.98,'AVE'),(15,'temporibus',18.21,'ROEDOR'),(16,'ipsum',14.65,'GATO'),(17,'velit',13.80,'ROEDOR'),(18,'rem',36.64,'GATO'),(19,'voluptas',44.59,'REPTIL'),(20,'occaecati',49.15,'CACHORRO'),(21,'adipisci',42.39,'ROEDOR'),(22,'earum',29.66,'REPTIL'),(23,'repellat',44.68,'REPTIL'),(24,'eum',12.05,'CACHORRO'),(25,'voluptate',22.11,'REPTIL'),(26,'ducimus',8.26,'CACHORRO'),(27,'consectetur',29.64,'REPTIL'),(28,'iste',5.77,'REPTIL'),(29,'ut',19.38,'CACHORRO'),(30,'quos',13.28,'REPTIL'),(31,'iure',20.77,'AVE'),(32,'necessitatibus',20.57,'GATO'),(33,'quam',37.26,'CACHORRO'),(34,'nobis',46.27,'AVE'),(35,'perspiciatis',5.25,'GATO'),(36,'impedit',25.76,'GATO'),(37,'expedita',49.87,'AVE'),(38,'molestiae',42.65,'REPTIL'),(39,'voluptatibus',32.94,'CACHORRO'),(40,'cumque',9.71,'AVE'),(41,'perferendis',6.24,'REPTIL'),(42,'harum',15.92,'GATO'),(43,'doloremque',43.76,'GATO'),(44,'magnam',32.48,'REPTIL'),(45,'maxime',13.43,'CACHORRO'),(46,'facere',34.04,'GATO'),(47,'distinctio',19.17,'ROEDOR'),(48,'est',21.94,'REPTIL'),(49,'corporis',49.76,'GATO'),(50,'assumenda',6.97,'CACHORRO'),(51,'ratione',48.03,'CACHORRO'),(52,'dignissimos',19.85,'AVE'),(53,'possimus',29.89,'AVE'),(54,'porro',12.02,'REPTIL'),(55,'mollitia',22.46,'GATO'),(56,'fugit',22.52,'REPTIL'),(57,'sed',31.32,'GATO'),(58,'non',20.30,'REPTIL'),(59,'alias',33.53,'ROEDOR'),(60,'qui',22.91,'CACHORRO'),(61,'quis',9.63,'AVE'),(62,'quidem',27.53,'GATO'),(63,'iusto',11.81,'REPTIL'),(64,'deserunt',43.13,'GATO'),(65,'soluta',11.08,'REPTIL'),(66,'laboriosam',13.94,'REPTIL'),(67,'deleniti',36.02,'REPTIL'),(68,'illum',26.53,'GATO'),(69,'neque',11.85,'ROEDOR'),(70,'sequi',20.95,'GATO'),(71,'sunt',42.53,'CACHORRO'),(72,'dolorem',23.66,'CACHORRO'),(73,'veniam',11.09,'ROEDOR'),(74,'atque',35.95,'ROEDOR'),(75,'vel',28.19,'GATO'),(76,'ipsam',18.55,'ROEDOR'),(77,'commodi',17.95,'GATO'),(78,'dolor',42.23,'ROEDOR'),(79,'nihil',17.60,'CACHORRO'),(80,'sapiente',12.38,'AVE'),(81,'quae',48.72,'ROEDOR'),(82,'quibusdam',22.92,'CACHORRO'),(83,'provident',38.93,'ROEDOR'),(84,'modi',18.87,'ROEDOR'),(85,'sint',33.71,'ROEDOR'),(86,'reprehenderit',35.78,'ROEDOR'),(87,'nemo',45.63,'AVE'),(88,'omnis',35.78,'ROEDOR'),(89,'rerum',33.78,'ROEDOR'),(90,'accusamus',39.15,'AVE'),(91,'autem',36.31,'AVE'),(92,'eligendi',20.64,'CACHORRO'),(93,'minus',5.92,'GATO'),(94,'cum',27.41,'CACHORRO'),(95,'explicabo',39.18,'ROEDOR'),(96,'reiciendis',34.39,'REPTIL'),(97,'a',31.62,'AVE'),(98,'delectus',21.96,'ROEDOR'),(99,'optio',19.54,'CACHORRO'),(100,'amet',11.05,'AVE');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_transacoes`
--

DROP TABLE IF EXISTS `produtos_transacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_transacoes` (
  `id_transacao_produto` int NOT NULL AUTO_INCREMENT,
  `id_produto` int DEFAULT NULL,
  `id_transacao` int DEFAULT NULL,
  `valor` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id_transacao_produto`),
  KEY `id_produto` (`id_produto`),
  KEY `id_transacao` (`id_transacao`),
  CONSTRAINT `produtos_transacoes_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`),
  CONSTRAINT `produtos_transacoes_ibfk_2` FOREIGN KEY (`id_transacao`) REFERENCES `transacoes` (`id_transacao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_transacoes`
--

LOCK TABLES `produtos_transacoes` WRITE;
/*!40000 ALTER TABLE `produtos_transacoes` DISABLE KEYS */;
INSERT INTO `produtos_transacoes` VALUES (1,1,1,10.00),(2,2,1,12.00);
/*!40000 ALTER TABLE `produtos_transacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_unidades`
--

DROP TABLE IF EXISTS `produtos_unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_unidades` (
  `id_produto_unidade` int NOT NULL AUTO_INCREMENT,
  `id_produto` int DEFAULT NULL,
  `id_unidade` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  PRIMARY KEY (`id_produto_unidade`),
  KEY `id_produto` (`id_produto`),
  KEY `id_unidade` (`id_unidade`),
  CONSTRAINT `produtos_unidades_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`),
  CONSTRAINT `produtos_unidades_ibfk_2` FOREIGN KEY (`id_unidade`) REFERENCES `unidades` (`id_unidade`)
) ENGINE=InnoDB AUTO_INCREMENT=776 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_unidades`
--

LOCK TABLES `produtos_unidades` WRITE;
/*!40000 ALTER TABLE `produtos_unidades` DISABLE KEYS */;
INSERT INTO `produtos_unidades` VALUES (1,1,1,11),(2,2,1,21),(3,3,1,5),(4,4,1,29),(5,5,1,36),(6,6,1,49),(7,7,1,3),(8,8,1,30),(9,9,1,16),(10,10,1,19),(11,11,1,40),(12,12,1,44),(13,13,1,34),(14,14,1,28),(15,15,1,26),(16,16,1,4),(17,17,1,26),(18,18,1,16),(19,19,1,34),(20,20,1,6),(21,21,1,45),(22,22,1,4),(23,23,1,47),(24,24,1,8),(25,25,1,14),(26,26,1,35),(27,27,1,5),(28,28,1,27),(29,29,1,14),(30,30,1,15),(31,31,1,45),(32,32,1,26),(33,33,1,33),(34,34,1,37),(35,35,1,32),(36,36,1,20),(37,37,1,42),(38,38,1,23),(39,39,1,34),(40,40,1,25),(41,41,1,24),(42,42,1,45),(43,43,1,18),(44,44,1,32),(45,45,1,37),(46,46,1,24),(47,47,1,41),(48,48,1,40),(49,49,1,8),(50,50,1,32),(51,51,1,33),(52,52,1,10),(53,53,1,19),(54,54,1,22),(55,55,1,42),(56,56,1,50),(57,57,1,33),(58,58,1,27),(59,59,1,1),(60,60,1,2),(61,61,1,26),(62,62,1,4),(63,63,1,36),(64,64,1,35),(65,65,1,27),(66,66,1,20),(67,67,1,26),(68,68,1,26),(69,69,1,12),(70,70,1,7),(71,71,1,5),(72,72,1,7),(73,73,1,1),(74,74,1,22),(75,75,1,34),(76,76,1,12),(77,77,1,30),(78,78,1,31),(79,79,1,17),(80,80,1,16),(81,81,1,34),(82,82,1,32),(83,83,1,17),(84,84,1,8),(85,85,1,17),(86,86,1,46),(87,87,1,20),(88,88,1,12),(89,89,1,15),(90,90,1,25),(91,91,1,27),(92,92,1,46),(93,93,1,50),(94,94,1,14),(95,95,1,23),(96,96,1,44),(97,97,1,14),(98,98,1,26),(99,99,1,23),(100,100,1,21),(101,26,7,47),(102,27,7,25),(103,28,7,16),(104,29,7,47),(105,30,7,16),(106,31,7,46),(107,32,7,21),(108,33,7,9),(109,34,7,33),(110,35,7,46),(111,36,7,7),(112,37,7,45),(113,38,7,14),(114,39,7,1),(115,40,7,15),(116,41,7,41),(117,42,7,32),(118,43,7,18),(119,44,7,17),(120,45,7,40),(121,46,7,25),(122,47,7,45),(123,48,7,39),(124,49,7,8),(125,50,7,37),(126,51,7,14),(127,52,7,48),(128,53,7,24),(129,54,7,21),(130,55,7,33),(131,56,7,50),(132,57,7,33),(133,58,7,20),(134,59,7,11),(135,60,7,3),(136,61,7,29),(137,62,7,15),(138,63,7,36),(139,64,7,41),(140,65,7,39),(141,66,7,47),(142,67,7,49),(143,68,7,5),(144,69,7,8),(145,70,7,2),(146,71,7,11),(147,72,7,12),(148,73,7,15),(149,74,7,2),(150,75,7,36),(151,76,7,40),(152,77,7,6),(153,78,7,5),(154,79,7,40),(155,80,7,41),(156,81,7,25),(157,82,7,19),(158,83,7,41),(159,84,7,33),(160,85,7,29),(161,86,7,22),(162,87,7,43),(163,88,7,31),(164,89,7,27),(165,90,7,29),(166,91,7,28),(167,92,7,6),(168,93,7,37),(169,94,7,38),(170,95,7,22),(171,96,7,15),(172,97,7,1),(173,98,7,11),(174,99,7,43),(175,100,7,30),(176,26,6,24),(177,27,6,49),(178,28,6,27),(179,29,6,33),(180,30,6,24),(181,31,6,29),(182,32,6,34),(183,33,6,14),(184,34,6,46),(185,35,6,49),(186,36,6,22),(187,37,6,17),(188,38,6,19),(189,39,6,50),(190,40,6,8),(191,41,6,40),(192,42,6,20),(193,43,6,36),(194,44,6,15),(195,45,6,35),(196,46,6,14),(197,47,6,13),(198,48,6,9),(199,49,6,3),(200,50,6,1),(201,51,6,6),(202,52,6,28),(203,53,6,8),(204,54,6,35),(205,55,6,29),(206,56,6,29),(207,57,6,50),(208,58,6,45),(209,59,6,41),(210,60,6,13),(211,61,6,23),(212,62,6,28),(213,63,6,17),(214,64,6,43),(215,65,6,35),(216,66,6,5),(217,67,6,48),(218,68,6,18),(219,69,6,25),(220,70,6,42),(221,71,6,2),(222,72,6,22),(223,73,6,48),(224,74,6,50),(225,75,6,15),(226,76,6,26),(227,77,6,6),(228,78,6,22),(229,79,6,3),(230,80,6,43),(231,81,6,11),(232,82,6,1),(233,83,6,31),(234,84,6,25),(235,85,6,47),(236,86,6,28),(237,87,6,40),(238,88,6,7),(239,89,6,25),(240,90,6,16),(241,91,6,17),(242,92,6,14),(243,93,6,2),(244,94,6,1),(245,95,6,27),(246,96,6,7),(247,97,6,23),(248,98,6,18),(249,99,6,21),(250,100,6,20),(251,26,2,38),(252,27,2,21),(253,28,2,36),(254,29,2,27),(255,30,2,30),(256,31,2,11),(257,32,2,7),(258,33,2,50),(259,34,2,9),(260,35,2,21),(261,36,2,13),(262,37,2,9),(263,38,2,6),(264,39,2,1),(265,40,2,49),(266,41,2,14),(267,42,2,42),(268,43,2,49),(269,44,2,24),(270,45,2,30),(271,46,2,48),(272,47,2,12),(273,48,2,50),(274,49,2,14),(275,50,2,47),(276,51,2,22),(277,52,2,32),(278,53,2,41),(279,54,2,24),(280,55,2,18),(281,56,2,11),(282,57,2,34),(283,58,2,13),(284,59,2,34),(285,60,2,17),(286,61,2,31),(287,62,2,27),(288,63,2,27),(289,64,2,1),(290,65,2,37),(291,66,2,41),(292,67,2,30),(293,68,2,40),(294,69,2,47),(295,70,2,41),(296,71,2,17),(297,72,2,40),(298,73,2,18),(299,74,2,5),(300,75,2,20),(301,76,2,19),(302,77,2,27),(303,78,2,23),(304,79,2,8),(305,80,2,14),(306,81,2,26),(307,82,2,44),(308,83,2,42),(309,84,2,17),(310,85,2,29),(311,86,2,33),(312,87,2,33),(313,88,2,30),(314,89,2,20),(315,90,2,21),(316,91,2,23),(317,92,2,10),(318,93,2,22),(319,94,2,49),(320,95,2,5),(321,96,2,50),(322,97,2,25),(323,98,2,47),(324,99,2,27),(325,100,2,34),(326,26,4,10),(327,27,4,24),(328,28,4,32),(329,29,4,21),(330,30,4,30),(331,31,4,45),(332,32,4,33),(333,33,4,15),(334,34,4,46),(335,35,4,31),(336,36,4,50),(337,37,4,34),(338,38,4,4),(339,39,4,26),(340,40,4,29),(341,41,4,30),(342,42,4,10),(343,43,4,23),(344,44,4,7),(345,45,4,15),(346,46,4,23),(347,47,4,28),(348,48,4,11),(349,49,4,27),(350,50,4,35),(351,51,4,38),(352,52,4,8),(353,53,4,36),(354,54,4,12),(355,55,4,40),(356,56,4,22),(357,57,4,5),(358,58,4,46),(359,59,4,1),(360,60,4,21),(361,61,4,34),(362,62,4,41),(363,63,4,49),(364,64,4,16),(365,65,4,4),(366,66,4,13),(367,67,4,3),(368,68,4,2),(369,69,4,10),(370,70,4,15),(371,71,4,43),(372,72,4,19),(373,73,4,22),(374,74,4,3),(375,75,4,23),(376,76,4,29),(377,77,4,3),(378,78,4,9),(379,79,4,48),(380,80,4,20),(381,81,4,29),(382,82,4,32),(383,83,4,18),(384,84,4,21),(385,85,4,22),(386,86,4,3),(387,87,4,20),(388,88,4,7),(389,89,4,3),(390,90,4,42),(391,91,4,29),(392,92,4,7),(393,93,4,10),(394,94,4,29),(395,95,4,2),(396,96,4,42),(397,97,4,5),(398,98,4,3),(399,99,4,32),(400,100,4,21),(401,26,3,16),(402,27,3,14),(403,28,3,15),(404,29,3,11),(405,30,3,4),(406,31,3,14),(407,32,3,12),(408,33,3,21),(409,34,3,13),(410,35,3,14),(411,36,3,18),(412,37,3,1),(413,38,3,14),(414,39,3,6),(415,40,3,1),(416,41,3,45),(417,42,3,23),(418,43,3,35),(419,44,3,22),(420,45,3,25),(421,46,3,3),(422,47,3,18),(423,48,3,8),(424,49,3,46),(425,50,3,50),(426,51,3,4),(427,52,3,5),(428,53,3,1),(429,54,3,14),(430,55,3,29),(431,56,3,38),(432,57,3,50),(433,58,3,25),(434,59,3,26),(435,60,3,37),(436,61,3,32),(437,62,3,49),(438,63,3,7),(439,64,3,8),(440,65,3,10),(441,66,3,9),(442,67,3,16),(443,68,3,12),(444,69,3,1),(445,70,3,26),(446,71,3,19),(447,72,3,21),(448,73,3,21),(449,74,3,26),(450,75,3,26),(451,76,3,15),(452,77,3,3),(453,78,3,28),(454,79,3,27),(455,80,3,19),(456,81,3,28),(457,82,3,8),(458,83,3,38),(459,84,3,27),(460,85,3,17),(461,86,3,16),(462,87,3,35),(463,88,3,31),(464,89,3,38),(465,90,3,16),(466,91,3,46),(467,92,3,39),(468,93,3,30),(469,94,3,11),(470,95,3,1),(471,96,3,31),(472,97,3,46),(473,98,3,19),(474,99,3,33),(475,100,3,6),(476,26,10,5),(477,27,10,34),(478,28,10,23),(479,29,10,35),(480,30,10,17),(481,31,10,14),(482,32,10,47),(483,33,10,29),(484,34,10,20),(485,35,10,41),(486,36,10,10),(487,37,10,40),(488,38,10,11),(489,39,10,23),(490,40,10,11),(491,41,10,29),(492,42,10,32),(493,43,10,42),(494,44,10,12),(495,45,10,29),(496,46,10,24),(497,47,10,16),(498,48,10,34),(499,49,10,9),(500,50,10,14),(501,51,10,46),(502,52,10,47),(503,53,10,21),(504,54,10,18),(505,55,10,32),(506,56,10,13),(507,57,10,9),(508,58,10,45),(509,59,10,27),(510,60,10,41),(511,61,10,16),(512,62,10,21),(513,63,10,39),(514,64,10,6),(515,65,10,46),(516,66,10,10),(517,67,10,47),(518,68,10,43),(519,69,10,13),(520,70,10,8),(521,71,10,48),(522,72,10,30),(523,73,10,43),(524,74,10,39),(525,75,10,35),(526,76,10,35),(527,77,10,49),(528,78,10,45),(529,79,10,3),(530,80,10,39),(531,81,10,18),(532,82,10,17),(533,83,10,19),(534,84,10,5),(535,85,10,35),(536,86,10,45),(537,87,10,7),(538,88,10,30),(539,89,10,25),(540,90,10,33),(541,91,10,4),(542,92,10,16),(543,93,10,27),(544,94,10,25),(545,95,10,22),(546,96,10,33),(547,97,10,29),(548,98,10,49),(549,99,10,17),(550,100,10,44),(551,26,5,32),(552,27,5,41),(553,28,5,3),(554,29,5,19),(555,30,5,23),(556,31,5,31),(557,32,5,40),(558,33,5,41),(559,34,5,30),(560,35,5,20),(561,36,5,30),(562,37,5,37),(563,38,5,48),(564,39,5,4),(565,40,5,8),(566,41,5,49),(567,42,5,24),(568,43,5,25),(569,44,5,19),(570,45,5,45),(571,46,5,30),(572,47,5,14),(573,48,5,45),(574,49,5,36),(575,50,5,46),(576,51,5,25),(577,52,5,26),(578,53,5,23),(579,54,5,46),(580,55,5,22),(581,56,5,25),(582,57,5,29),(583,58,5,5),(584,59,5,14),(585,60,5,31),(586,61,5,22),(587,62,5,19),(588,63,5,36),(589,64,5,34),(590,65,5,17),(591,66,5,33),(592,67,5,45),(593,68,5,36),(594,69,5,45),(595,70,5,16),(596,71,5,24),(597,72,5,27),(598,73,5,22),(599,74,5,2),(600,75,5,16),(601,76,5,28),(602,77,5,1),(603,78,5,3),(604,79,5,48),(605,80,5,31),(606,81,5,10),(607,82,5,49),(608,83,5,44),(609,84,5,41),(610,85,5,14),(611,86,5,38),(612,87,5,50),(613,88,5,26),(614,89,5,10),(615,90,5,25),(616,91,5,21),(617,92,5,17),(618,93,5,29),(619,94,5,43),(620,95,5,13),(621,96,5,31),(622,97,5,43),(623,98,5,13),(624,99,5,32),(625,100,5,24),(626,26,8,1),(627,27,8,14),(628,28,8,46),(629,29,8,24),(630,30,8,1),(631,31,8,31),(632,32,8,39),(633,33,8,5),(634,34,8,38),(635,35,8,1),(636,36,8,42),(637,37,8,27),(638,38,8,47),(639,39,8,30),(640,40,8,22),(641,41,8,24),(642,42,8,27),(643,43,8,17),(644,44,8,20),(645,45,8,7),(646,46,8,48),(647,47,8,24),(648,48,8,28),(649,49,8,33),(650,50,8,23),(651,51,8,33),(652,52,8,36),(653,53,8,33),(654,54,8,4),(655,55,8,49),(656,56,8,29),(657,57,8,26),(658,58,8,9),(659,59,8,3),(660,60,8,32),(661,61,8,44),(662,62,8,50),(663,63,8,16),(664,64,8,42),(665,65,8,17),(666,66,8,47),(667,67,8,1),(668,68,8,42),(669,69,8,12),(670,70,8,38),(671,71,8,42),(672,72,8,42),(673,73,8,11),(674,74,8,13),(675,75,8,44),(676,76,8,2),(677,77,8,28),(678,78,8,18),(679,79,8,39),(680,80,8,5),(681,81,8,47),(682,82,8,29),(683,83,8,4),(684,84,8,18),(685,85,8,9),(686,86,8,43),(687,87,8,10),(688,88,8,44),(689,89,8,29),(690,90,8,18),(691,91,8,3),(692,92,8,44),(693,93,8,28),(694,94,8,11),(695,95,8,34),(696,96,8,44),(697,97,8,33),(698,98,8,19),(699,99,8,45),(700,100,8,38),(701,26,9,29),(702,27,9,12),(703,28,9,28),(704,29,9,22),(705,30,9,40),(706,31,9,13),(707,32,9,13),(708,33,9,46),(709,34,9,31),(710,35,9,25),(711,36,9,38),(712,37,9,17),(713,38,9,42),(714,39,9,39),(715,40,9,8),(716,41,9,34),(717,42,9,28),(718,43,9,41),(719,44,9,21),(720,45,9,38),(721,46,9,40),(722,47,9,47),(723,48,9,32),(724,49,9,36),(725,50,9,39),(726,51,9,15),(727,52,9,36),(728,53,9,49),(729,54,9,30),(730,55,9,18),(731,56,9,39),(732,57,9,45),(733,58,9,44),(734,59,9,42),(735,60,9,10),(736,61,9,16),(737,62,9,3),(738,63,9,22),(739,64,9,31),(740,65,9,49),(741,66,9,1),(742,67,9,36),(743,68,9,8),(744,69,9,28),(745,70,9,42),(746,71,9,10),(747,72,9,30),(748,73,9,1),(749,74,9,49),(750,75,9,35),(751,76,9,46),(752,77,9,13),(753,78,9,18),(754,79,9,18),(755,80,9,22),(756,81,9,17),(757,82,9,2),(758,83,9,39),(759,84,9,38),(760,85,9,21),(761,86,9,4),(762,87,9,15),(763,88,9,46),(764,89,9,23),(765,90,9,2),(766,91,9,33),(767,92,9,5),(768,93,9,27),(769,94,9,19),(770,95,9,46),(771,96,9,34),(772,97,9,2),(773,98,9,1),(774,99,9,25),(775,100,9,33);
/*!40000 ALTER TABLE `produtos_unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacoes`
--

DROP TABLE IF EXISTS `transacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacoes` (
  `id_transacao` int NOT NULL AUTO_INCREMENT,
  `id_unidade` int DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `data_transacao` datetime DEFAULT NULL,
  PRIMARY KEY (`id_transacao`),
  KEY `cpf` (`cpf`),
  KEY `id_unidade` (`id_unidade`),
  CONSTRAINT `transacoes_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `clientes` (`cpf`),
  CONSTRAINT `transacoes_ibfk_2` FOREIGN KEY (`id_unidade`) REFERENCES `unidades` (`id_unidade`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacoes`
--

LOCK TABLES `transacoes` WRITE;
/*!40000 ALTER TABLE `transacoes` DISABLE KEYS */;
INSERT INTO `transacoes` VALUES (1,1,'02418639703',NULL,'2020-10-10 10:55:00');
/*!40000 ALTER TABLE `transacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades`
--

DROP TABLE IF EXISTS `unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidades` (
  `id_unidade` int NOT NULL AUTO_INCREMENT,
  `razao_social` varchar(100) DEFAULT NULL,
  `nome_fantasia` varchar(100) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `CEP` varchar(20) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_unidade`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` VALUES (1,'PetMall São Jorge 1ª Seção S.A.','PetMall São Jorge 1ª Seção','74.836.925/0001-03','(051) 3235-7449','+55 68 96832 5517','qda-cruz@campos.net','São Jorge 1ª Seção','Chácara Alves','1','DF','96153970','Novaes'),(2,'PetMall Estrela S/A','PetMall Estrela','20.857.436/0001-09','21 4768 9379','+55 82 9 6417 9434','fernando83@gmail.com','Estrela','Vale Gomes','4','RN','17025-913','Santos'),(3,'PetMall Novo Tupi - ME','PetMall Novo Tupi','13.842.096/0001-87','(011) 7728-3686','+55 (60) 9 6738-6663','davi-luiz50@goncalves.com','Novo Tupi','Viaduto Moreira','78','GO','58081-829','Almeida'),(4,'PetMall Vila São Francisco - ME','PetMall Vila São Francisco','24.130.698/0001-28','61 7716-9120','+55 73 9 5501-8821','imendes@yahoo.com.br','Vila São Francisco','Passarela Cauã Barros','672','PE','11008-778','Castro de da Cunha'),(5,'PetMall Camponesa 2ª Seção - EI','PetMall Camponesa 2ª Seção','03.781.269/0001-40','51 6387 2577','+55 92 9 3055 4021','maria-cecilia69@gmail.com','Camponesa 2ª Seção','Campo Vitor Hugo Mendes','854','GO','50008-921','da Rocha do Oeste'),(6,'PetMall Bonsucesso Ltda.','PetMall Bonsucesso','29.764.305/0001-51','+55 81 7270-8578','+55 91 9 6089 8863','breno10@dias.org','Bonsucesso','Passarela de Nascimento','87','MS','65957-977','Monteiro'),(7,'PetMall Mantiqueira - EI','PetMall Mantiqueira','78.130.624/0001-10','(041) 1824 3788','+55 66 9 7483 6761','maria-aliceazevedo@jesus.br','Mantiqueira','Vila Viana','99','GO','55030588','Araújo de Mendes'),(8,'PetMall Araguaia Ltda.','PetMall Araguaia','39.624.081/0001-36','+55 84 3167-2785','+55 (65) 9 1342 5397','olivia97@gmail.com','Araguaia','Estação de da Conceição','5','MT','44174-594','Azevedo da Mata'),(9,'PetMall Boa União 2ª Seção e Filhos','PetMall Boa União 2ª Seção','60.278.914/0001-40','61 8601 7390','+55 (077) 97584-8374','da-rochamaria-sophia@gomes.com','Boa União 2ª Seção','Passarela de Martins','594','RJ','39120222','Pires'),(10,'PetMall Saudade e Filhos','PetMall Saudade','68.217.403/0001-20','41 4515 3528','+55 31 93994 7785','maria-luizaalves@araujo.br','Saudade','Passarela Rafael Nascimento','4','AM','91953-218','Ramos');
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19 16:02:16
