
--  PROGETTO BASI DI DATI
-- --------------------------------------
--  Anno 2017-2018
--  Università degli studi di Padova
--  Laurea in Informatica
-- -------------------------------------- 
--  Francesco Bari
--  Samuele De Grandi




-- CREAZIONE E POPOLAMENTO TABELLE


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET GLOBAL log_bin_trust_function_creators = 1;





CREATE DATABASE /*!32312 IF NOT EXISTS*/`Ebbflits` /*!40100 DEFAULT CHARACTER SET latin1 */;


USE `Ebbflits`;



DROP TABLE IF EXISTS `CLIENTI`;

CREATE TABLE `CLIENTI` (
`Email` VARCHAR(55) NOT NULL,
`Nome` VARCHAR(55) NOT NULL,
`Cognome` VARCHAR(55) NOT NULL,
`Citta` VARCHAR(55) NOT NULL,
`CartaDiCredito` VARCHAR(55) NOT NULL,
`Via` VARCHAR(55) NOT NULL,
`Civico` SMALLINT NOT NULL,
`CAP` INT NOT NULL,
`Latitudine` DECIMAL(8,6) NOT NULL,
`Longitudine` DECIMAL(8,6) NOT NULL,
PRIMARY KEY (`Email`),
unique(`CartaDiCredito`))
ENGINE=InnoDB;

INSERT INTO `CLIENTI` (`Email`,`Nome`,`Cognome`,`Citta`,`CartaDiCredito`,`Via`,`Civico`,`CAP`,`Latitudine`, `Longitudine`) 
VALUES
('francescobari@gmail.com','Francesco','Bari', 'Padova','6820 6603 2109 3823','Via Berchet','16','35131','45.413394','11.885604'),
('samueledegrandi@gmail.com','Samuele','De Grandi','Milano','4039 7595 2339 0944','Via del Vecchio Politecnico','4','20121','45.472104','9.196442'),
('giovannironconi@gmail.com', 'Giovanni','Ronconi','Firenze','5643 8111 3722 4843','Via dei Pepi','8','50122','43.769539','11.262530'),
('sebastianoposenato@gmail.com','Sebastiano','Posenato','Torino','7600 6575 3399 9126','Via Gozzi','5','10121','45.070325','7.667241'),
('ettoreretis@gmail.com','Ettore','Retis','Livorno','6000 4748 3734 9680','Via Cecconi','50','57126','43.542212','10.311636'),
('enricograzioli@gmail.com','Enrico','Grazioli','Roma','2138 8500 7522 5370','Via Ivrea','30','00183','41.876876','12.517085'),
('marcomissaggia@gmail.com','Marco','Missaggia','Palermo','4622 2222 8500 6511','Via Malaspina','6','90141','38.124825','13.346919'),
('angelospiller@gmail.com','Angelo','Spiller','Napoli','4822 4700 1043 6000','Via Brombeis','1','80135','40.849914','14.248737'),
('antoniotrevisan@gmail.com','Antonio','Trevisan','Vicenza','5765 3922 5660 2121','Viale del Lavoro','41','36100','45.526075','11.513177'),
('lucatrivisonno@gmail.com','Luca','Trivisonno','Verona','3462 4343 0000 7490','Via Paglieri','6','37122','45.436420','10.992341'),
('luciaquagliarella@gmail.com','Lucia','Quagliarella','Padova','7110 3830 3840 4547','Via Trieste','130','35131','45.411165','11.886992'),
('martafini@gmail.com','Marta','Fini','Milano','6330 3730 4740 8404','Via Sabatelli','18','20154','45.480972','9.168220'),
('francescagiocondi@gmail.com','Francesca','Giocondi','Firenze','6110 4764 2022 4900','Via del Fico','4','50122','43.769494','11.263133'),
('claraverdi@gmail.com','Clara','Verdi','Torino','6474 4840 4001','Via Avigliana','7','10138','45.071384','7.662746'),
('sofiabianchi@gmail.com','Sofia','Verdi','Livorno','4740 3622 4074','Via Roma','61','57126','43.541509','10.313006'),
('mararossi@gmail.com','Mara','Rossi','Roma','6589 2734 0928 8750','Via Gallia','202','00183','41.880441','12.507007'),
('martinazonda@gmail.com','Martina','Zonda','Palermo','4749 4895 1111 2304','Via Agrigento','15','90141','38.128223','13.350208'),
('paolacortellesi@gmail.com','Paola','Cortellesi','Napoli','4648 4700 1234 4749','Via Partenope','42','80132','40.829878','14.248225'),
('claudiafico@gmail.com','Claudia','Fico','Vicenza','7565 4300 6171 2939','Viale Sella','32','36100','45.542551','11.524916'),
('jessicariva@gmail.com','Jessica','Riva','Verona','5657 4400 4111 0000','Corso Porta Nuova','18','37122','45.435478','10.990235');


--

DROP TABLE IF EXISTS `RIDER`;

CREATE TABLE `RIDER` (
`Email` VARCHAR(55) NOT NULL,
`IBAN` VARCHAR(55) NOT NULL,
`Nome` VARCHAR(55) NOT NULL,
`Cognome` VARCHAR(55) NOT NULL,
`NumeroTelefono` VARCHAR(55) NOT NULL,
`Stipendio` DECIMAL(6,2) NOT NULL,
`Citta` VARCHAR(55) NOT NULL,
PRIMARY KEY (`Email` , `IBAN`),
unique(`NumeroTelefono`))
ENGINE=InnoDB;

INSERT INTO `RIDER` (`Email`, `IBAN`, `Nome`, `Cognome`, `NumeroTelefono`, `Stipendio`, `Citta`)
 VALUES
('mariobruni@libero.com','IT02009 35761','Mario','Bruni','3498166336','5000','Vicenza'),
('brunoraro@libero.com', 'IT02005 67910','Bruno','Raro','3459194620','2000','Verona'),
('luigifini@libero.com', 'IT02004 45990','Luigi','Fini','3409184611','3300','Padova'),
('marcoformentin@libero.com', 'IT02002 00000','Marco','Formentin','3901234576','1000','Palermo'),
('alessandroborgo@libero.com', 'IT02004 76451','Alessandro','Borgo','3339012639','2220','Napoli'),
('alessiamala@libero.com', 'IT02007 35561','Alessia','Mala','3671230546','4500','Roma'),
('ludovicapaci@libero.com', 'IT02001 44461','Ludovica','Paci','3490011234','1000','Livorno'),
('giorgiafragola@libero.com', 'IT02002 25762','Giorgia','Fragola','3030214589','2800','Milano'),
('valentinanasa@libero.com', 'IT02000 22222','Valentina','Nasa','3451699990','6000','Torino'),
('filippabarba@libero.com', 'IT02006 55451','Filippa','Barba','37809126534','3000','Firenze');


--

DROP TABLE IF EXISTS `SEDE`;

CREATE TABLE `SEDE` (
`Citta` VARCHAR(55) NOT NULL,
`PIVA` VARCHAR(55) NOT NULL,
`Via` VARCHAR(55) NOT NULL,
`Civico` SMALLINT NOT NULL,
`CAP` INT NOT NULL,
`NumImpiegati` SMALLINT NOT NULL,
`Responsabile` VARCHAR(55) NOT NULL,
PRIMARY KEY (`Citta`),
unique (`PIVA`))
ENGINE=InnoDB;

INSERT INTO `SEDE` (`Citta`,`PIVA`,`Via`,`Civico`,`CAP`,`NumImpiegati`,`Responsabile`)
VALUES
('Vicenza','IT1234567891','Via Venezia','6','36100','10','Mario Bianchi'),
('Padova','IT9876543321','Via Milano','56','35151','15','Clemente Russo'),
('Verona','IT5681400937','Via Firenze','1','37125','20','Luciano Spalla'),
('Milano','IT8039106930','Via Paolotti','40','20100','30','Massimo Peso'),
('Torino','IT4510001349','Via Belzoni','82','10100','20','Giorgio Mancuso'),
('Livorno','IT4017922946','Via Pazzi','34','57100','12','Antonietta Sera'),
('Firenze','IT3845671111','Via Guaia','4','50100','25','Miriam Capoverde'),
('Napoli','IT5630003762','Viale Parteneope','55','80101','20','Laura Gaspare'),
('Roma','IT0193639710','Via Aridaje','51','00102','40','Cristina Procaci'),
('Palermo','IT0183047109','Via Camuzzi','200','90100','30','Gaia Scoperta');

--


DROP TABLE IF EXISTS `STAFFAMMINISTRATIVO`;

CREATE TABLE `STAFFAMMINISTRATIVO` (
`Email` VARCHAR(55) NOT NULL,
`IBAN` VARCHAR(55) NOT NULL,
`Nome` VARCHAR(55) NOT NULL,
`Cognome` VARCHAR(55) NOT NULL,
`Stipendio` DECIMAL(8,2),
`Eta` SMALLINT NOT NULL,
`Ruolo` VARCHAR(55) NOT NULL,
`Citta` VARCHAR(55) NOT NULL,
PRIMARY KEY (`Email` , `IBAN`),
FOREIGN KEY (`Citta`)
REFERENCES `SEDE`(`Citta`)
ON DELETE RESTRICT
ON UPDATE CASCADE)
ENGINE=InnoDB;

INSERT INTO `STAFFAMMINISTRATIVO` (`Email`,`IBAN`,`Nome`,`Cognome`,`Stipendio`,`Eta`,`Ruolo`,`Citta`)
VALUES
('mariorigo@gmail.com','IT46577 64747','Mario','Rigo','200000','45','Capo operativo','Padova'),
('marcominghetti@gmail.com','IT64748 74737','Marco','Minghetti','100000','40','CEO', 'Padova'),
('matteosanti@gmail.com','IT74747 93750','Matteo','Santi','70000','60','Amministratore','Milano'),
('mircogiacobelli@gmail.com','IT74747 94040','Mirco','Giacobelli','700000','55','Amministratore','Milano'),
('giacomofinesso@gmail.com','IT73802 78394','Giacomo','Finesso','70000','57','Amministratore','Milano'),            
('miriamcapoverde@gmail.com','IT53849 73738','Miriam','Capoverde','60000','50','Responsabile locale','Firenze'),
('andreaguagliazzo@gmail.com','IT73930 73749','Andrea','Guagliazzo','50000','35','Sviluppatore','Torino'),
('fabioroncaglia@gmail.com','IT73920 83940','Fabio','Roncaglia','50000','30','Sviluppatore','Livorno'),
('marianoceri@gmail.com','IT67839 83488','Mariano','Ceri','50000','25','Sviluppatore','Livorno'),
('francescotempo@gmail.com','IT63737 74838','Francesco','Tempo','40000','40','Addetto al marketing','Roma'),
('mariabeltrame@gmail.com','IT73893 84850','Maria','Beltrame','40000','35','Addetto al marketing','Palermo'),
('sofiadececco@gmail.com','IT73930 83748','Sofia','Dececco','40000','25','Addetto al marketing','Palermo'),
('martadelviano@gmail.com','IT62929 73794','Marta','Del Viano','40000','30','Addetto al marketing','Napoli'),
('marcelladomenica@gmail.com','IT74309 87870','Marcella','Domenica','20000','45','Istruttore locale','Vicenza'),
('veronicadallavia@gmail.com','IT74893 83829','Veronica','Dalla Via','20000','39','Istruttore locale','Verona');

--


DROP TABLE IF EXISTS `RISTORANTE`;

CREATE TABLE `RISTORANTE` (
`PIVA` VARCHAR(55) NOT NULL,
`Nome` VARCHAR(55) NOT NULL,
`Citta` VARCHAR(55) NOT NULL,
`Tipologia` VARCHAR(55) NOT NULL,
`Via` VARCHAR(55) NOT NULL,
`Civico` SMALLINT NOT NULL,
`CAP` INT NOT NULL,
`Latitudine` DECIMAL(8,6) NOT NULL,
`Longitudine` DECIMAL(8,6) NOT NULL,
`CodiceAffiliazione` VARCHAR(55) NOT NULL,
PRIMARY KEY (`PIVA` , `Nome`),
FOREIGN KEY (`CodiceAffiliazione`)
REFERENCES `AFFILIAZIONE`(`Codice`)
ON DELETE RESTRICT
ON UPDATE CASCADE)
ENGINE=InnoDB;

INSERT INTO `RISTORANTE` (`PIVA`,`Nome`,`Citta`,`Tipologia`,`CodiceAffiliazione`,`Via`,`Civico`,`CAP`,`Latitudine`,`Longitudine`)
VALUES
('IT5645010221','Pepas & Beer','Vicenza','Messicano','EBB123456','Via Faccio','73','36100','45.543962','11.528117'),
('IT0174936200','Shangai','Padova','Cinese','EBB654321','Via Bassi','54','35131','45.412029','11.891525'),
('IT4500987252','Zushi','Verona','Giapponese','EBB101888','Via Caboto','5','37138','45.445547','10.972807'),
('IT01846492493','O sole mio','Milano','Cucina italiana','EBB658123','Via Faravelli','38','20149','45.483068','9.151546'),
('IT01847123084','Sushi Shop','Torino','Giapponese','EBB000192','Corso Castelfidardo','30','10129','45.062420','7.659506'),
('IT0001112229','Akitaya','Livorno','Giapponese','EBB034555','Viale Carducci','45','57122','43.553308','10.322608'),
('IT3457682840','Ham Holi Burger','Firenze','Hamburger','EBB103948','Via Benedetta','8','50123','43.773957','11.246796'),
('IT8912892177','The Fisherman','Roma','Pesce','EBB901833','Via Cantore','33','00195','41.918587','12.463839'),
('IT0101010101','Fish Dancer','Napoli','Pesce','EBB567177','Viale Michelangelo','14','80129','40.847495','14.231795'),
('IT4526268181','Rossopomodoro','Palermo','Cucina italiana','EBB098322','Via Spallitta','1','90145','38.121749','13.343846'),
('IT2154009988','Piccola Ischia','Napoli','Cucina italiana','EBB122022','Rampa Pizzofalcone','36','80121','40.830513','14.247427'),
('IT2028751045','Tramezzeria','Palermo','Tramezzini','EBB198667','Via Giusino','3','90134','38.114629','13.358330'),
('IT0153017409','Temakinho','Roma','Cucina brasiliana','EBB568437','Via Vodice','9','00195','41.917774','12.460819'),
('IT1235609659','Indian Fusion Food','Livorno','Indiano','EBB111111','Via Galilei','2','57122','43.554061','10.318884'),
('IT4511022222','Il Wok','Firenze','Cinese','EBB007890','Via Zanella','13','50124','43.770541','11.237948');



--


DROP TABLE IF EXISTS `MENU`;

CREATE TABLE `MENU` (
`ID` VARCHAR(55) NOT NULL,
`Prodotto` VARCHAR(55) NOT NULL,
`Prezzo` DECIMAL(6,4) NOT NULL,
`UltimaModifica` DATE,
`Ristorante` VARCHAR(55) NOT NULL,
`Codice` VARCHAR(55) NOT NULL,
PRIMARY KEY(`ID`),
FOREIGN KEY (`Codice`, `Ristorante`)
REFERENCES `RISTORANTE`(`PIVA`,`Nome`)
ON DELETE RESTRICT
ON UPDATE CASCADE)
ENGINE=InnoDB;

INSERT INTO `MENU` (`ID`,`Prodotto`,`Prezzo`,`UltimaModifica`,`Ristorante`,`Codice`)
VALUES

('00001','Azteca','4.50','2016-08-07','Pepas & Beer','IT5645010221'),
('00002','Sueno del gringo','10.50','2017-05-12','Pepas & Beer','IT5645010221'),
('00003','Filete Picante','12.50','2017-04-01','Pepas & Beer','IT5645010221'),
('00004','Nuvole di drago','3.50','2013-12-11','Shangai','IT0174936200'),
('00005','Riso Cantonese','5.50','2012-07-01','Shangai','IT0174936200'),
('00006','Ottawa','6.50','2010-04-03','Shangai','IT0174936200'),
('00007','Sashimi','13.50','2017-02-11','Zushi','IT4500987252'),
('00008','Chirashi','15.50','2016-02-03','Zushi','IT4500987252'),
('00009','Teriyaki','14.50','2013-12-04','Zushi','IT4500987252'),
('00010','Napoletana','7.50','2016-06-03','O sole mio','IT01846492493'),
('00011','Verace','6.50','2014-02-01','O sole mio','IT01846492493'),
('00012','Capricciosa','6.50','2012-02-05','O sole mio','IT01846492493'),
('00013','Calamari','7.50','2016-03-11','Sushi Shop','IT01847123084'),
('00014','Anelli di totano','10.50','2014-02-05','Sushi Shop','IT01847123084'),
('00015','Fish and crisp','9.50','2013-01-03','Sushi Shop','IT01847123084'),
('00016','Poke bowl','10.50','2013-02-01','Akitaya','IT0001112229'),
('00017','Salmone Tataki','12.50','2012-04-03','Akitaya','IT0001112229'),
('00018','Pacific','15.50','2014-04-03','Akitaya','IT0001112229'),
('00019','Fresh mix','17.50','2012-10-11','The Fisherman','IT8912892177'),
('00020','Super salmon','15.50','2017-03-12','The Fisherman','IT8912892177'),
('00021','California dream','12.50','2015-07-04','The Fisherman','IT8912892177'),
('00022','Hambrger di fassona','11.50','2012-04-02','Ham Holi Burger','IT3457682840'),
('00023','Burger di maialino nero','13.50','2017-03-02','Ham Holi Burger','IT3457682840'),
('00024','Burger di pollo','10.50','2015-05-03','Ham Holi Burger','IT3457682840'),
('00025','Fritto misto','12.50','2015-04-11','Fish Dancer','IT0101010101'),
('00026','Acciughe e cotolette','10.50','2014-01-02','Fish Dancer','IT0101010101'),
('00027','Branzino alla griglia','14.50','2017-01-04','Fish Dancer','IT0101010101'),
('00028','Margherita','4.50','2015-02-11','Rossopomodoro','IT4526268181'),
('00029','Diavola','5.50','2014-01-01','Rossopomodoro','IT4526268181'),
('00030','Quattro stagioni','7.00','2014-05-06','Rossopomodoro','IT4526268181'),
('00031','Coniglio all ischitana','12.50','2017-03-03','Piccola Ischia','IT2154009988'),
('00032','Spaghetto con le vongole','11.50','2017-02-01','Piccola Ischia','IT2154009988'),
('00033','Pizza di Scarola','13.50','2013-04-03','Piccola Ischia','IT2154009988'),
('00034','Vegetariano','5.50','2013-04.03','Tramezzeria','IT2028751045'),
('00035','Club sandwich','6.50','2017-05-04','Tramezzeria','IT2028751045'),
('00036','Prosciutto cotto','5.00','2014-02-01','Tramezzeria','IT2028751045'),
('00037','Churrasco','6.50','2017-02-04','Temakinho','IT0153017409'),
('00038','Coxinha','4.50','2014-01-05','Temakinho','IT0153017409'),
('00039','Cachaca','5.50','2013-01-11','Temakinho','IT0153017409'),
('00040','Chicken tandori','4.50','2015-03-02','Indian Fusion Food','IT1235609659'),
('00041','Seek Kebab','4.50','2012-01-11','Indian Fusion Food','IT1235609659'),
('00042','Chicken tikka','5.00','2014-01-02','Indian Fusion Food','IT1235609659'),
('00043','Ravioli alla griglia','8.50','2015-04-11','Il Wok','IT4511022222'),
('00044','Edamame','7.00','2015-03-02','Il Wok','IT4511022222'),
('00045','Involtino primavera','5.50','2016-03-05','Il Wok','IT4511022222');

--


DROP TABLE IF EXISTS `PAGAMENTO`;

CREATE TABLE `PAGAMENTO` (
`CittaSede` VARCHAR(55) NOT NULL,
`EmailCliente` VARCHAR(55) NOT NULL,
PRIMARY KEY (`CittaSede` , `EmailCliente`),
FOREIGN KEY (`CittaSede`)
REFERENCES `SEDE`(`Citta`)
ON DELETE RESTRICT
ON UPDATE CASCADE,
FOREIGN KEY (`EmailCliente`)
REFERENCES `CLIENTE`(`Email`)
ON DELETE RESTRICT
ON UPDATE CASCADE)
ENGINE=InnoDB;

INSERT INTO `PAGAMENTO` (`CittaSede`,`EmailCliente`)
VALUES

('Padova','francescobari@gmail.com'),
('Vicenza','antoniotrevisan@gmail.com'),
('Verona','jessicariva@gmail.com'),
('Verona','lucatrivisonno@gmail.com'),
('Livorno','sofiabianchi@gmail.com'),
('Palermo','martinazonda@gmail.com'),
('Milano','samueledegrandi@gmail.com'),
('Firenze','francescagiocondi@gmail.com'),
('Firenze','giovannironconi@gmail.com'),
('Livorno','ettoreretis@gmail.com');


--



DROP TABLE IF EXISTS `AFFILIAZIONE`;

CREATE TABLE `AFFILIAZIONE` (
`Codice` VARCHAR(55) NOT NULL,
`Giorno` SMALLINT NOT NULL,
`Mese` SMALLINT NOT NULL,
`Anno` SMALLINT NOT NULL,
`PIVARistorante` VARCHAR(55) NOT NULL,
`NomeRistorante` VARCHAR(55) NOT NULL,
PRIMARY KEY (`Codice`),
FOREIGN KEY (`PIVARistorante`,`NomeRistorante`)
REFERENCES `RISTORANTE`(`PIVA`,`Nome`)
ON DELETE RESTRICT
ON UPDATE CASCADE)
ENGINE=InnoDB;

INSERT INTO `AFFILIAZIONE` (`Codice`,`Giorno`,`Mese`,`Anno`,`PIVARistorante`,`NomeRistorante`) 
VALUES
('EBB123456','26','04','2016','IT5645010221','Pepas & Beer'),
('EBB654321','03','12','2011','IT0174936200','Shangai'),
('EBB101888','06','10','2010','IT4500987252','Zushi'),
('EBB658123','25','06','2017','IT01846492493','O sole mio'),
('EBB000192','14','03','2017','IT01847123084','Sushi shop'),
('EBB034555','02','11','2016','IT0001112229','Akitaya'),
('EBB103948','13','10','2015','IT3457682840','Ham Holi Burger'),
('EBB901833','12','12','2010','IT8912892177','The Fisherman'),
('EBB567177','10','04','2017','IT0101010101','Fish Dancer'),
('EBB098322','29','07','2017','IT4526268181','Rossopomodoro'),
('EBB122022','03','12','2016','IT2154009988','Piccola Ischia'),
('EBB198667','05','02','2015','IT2028751045','Tramezzeria'),
('EBB568437','15','11','2016','IT0153017409','Temakinho'),
('EBB111111','30','11','2013','IT1235609659','Indian Fusion Food'),
('EBB007890','28','10','2012','IT4511022222','Il Wok');


--



DROP TABLE IF EXISTS `ORDINE`;

CREATE TABLE `ORDINE` (
`Codice` VARCHAR(55) NOT NULL,
`PrezzoTotale` DECIMAL(7,2) NOT NULL,
`NomeRistorante` VARCHAR(55) NOT NULL,
`PIVARistorante` VARCHAR(55) NOT NULL,
`EmailCliente` VARCHAR(55) NOT NULL,
PRIMARY KEY (`Codice`),
FOREIGN KEY (`PIVARistorante`,`NomeRistorante`)
REFERENCES `RISTORANTE`(`PIVA`,`Nome`)
ON DELETE RESTRICT
ON UPDATE CASCADE,
FOREIGN KEY (`EmailCliente`)
REFERENCES `CLIENTE`(`Email`)
ON DELETE RESTRICT
ON UPDATE CASCADE)
ENGINE=InnoDB;

INSERT INTO `ORDINE` (`Codice`,`PrezzoTotale`,`NomeRistorante`,`PIVARistorante`,`EmailCliente`)
VALUES
('0001','50.00','Shangai','IT0174936200','francescobari@gmail.com'),
('0002','22.00','Pepas & Beer','IT5645010221','antoniotrevisan@gmail.com'),
('0003','10.50','Zushi','IT4500987252','jessicariva@gmail.com'),
('0004','34.00','Zushi','IT4500987252','lucatrivisonno@gmail.com'),
('0005','8.60','Indian Fusion Food','IT1235609659','sofiabianchi@gmail.com'),
('0006','22.00','Rossopomodoro','IT4526268181','martinazonda@gmail.com'),
('0007','12.50','O sole mio','IT01846492493','samueledegrandi@gmail.com'),
('0008','66.00','Ham Holi Burger','IT3457682840','francescagiocondi@gmail.com'),
('0009','10.00','Ham Holi Burger','IT3457682840','giovannironconi@gmail.com'),
('0010','15.99','Indian Fusion Food','IT1235609659','ettoreretis@gmail.com');



--


DROP TABLE IF EXISTS `CONSEGNA`;

CREATE TABLE `CONSEGNA` (
`EmailCliente` VARCHAR(55) NOT NULL,
`IBANRider` VARCHAR(55) NOT NULL,
`EmailRider` VARCHAR(55) NOT NULL,
PRIMARY KEY (`EmailCliente` , `IBANRider` , `EmailRider`),
FOREIGN KEY (`EmailCliente`)
REFERENCES `CLIENTE`(`Email`)
ON DELETE RESTRICT
ON UPDATE CASCADE,
FOREIGN KEY (`EmailRider`,`IBANRider`)
REFERENCES `RIDER`(`Email`,`IBAN`)
ON DELETE RESTRICT
ON UPDATE CASCADE)
ENGINE=InnoDB;

INSERT INTO `CONSEGNA` (`EmailCliente`,`IBANRider`,`EmailRider`)
VALUES
('francescobari@gmail.com','IT02004 45990','luigifini@libero.com'),
('antoniotrevisan@gmail.com','IT02009 35761','mariobruni@libero.com'),
('jessicariva@gmail.com','IT02005 67910','brunoraro@libero.com'),
('lucatrivisonno@gmail.com','IT02005 67910','brunoraro@libero.com'),
('sofiabianchi@gmail.com','IT02001 44461','ludovicapaci@libero.com'),
('martinazonda@gmail.com','IT02002 00000','marcoformentin@libero.com'),
('samueledegrandi@gmail.com','IT02002 25762','giorgiafragola@libero.com'),
('francescagiocondi@gmail.com','IT02006 55451','filippabarba@libero.com'),
('giovannironconi@gmail.com','IT02006 55451','filippabarba@libero.com'),
('ettoreretis@gmail.com','IT02001 44461','ludovicapaci@libero.com');


--



DROP TABLE IF EXISTS `PRESAINCARICO`;

CREATE TABLE `PRESAINCARICO` (
`PIVARistorante` VARCHAR(55) NOT NULL,
`NomeRistorante` VARCHAR(55) NOT NULL,
`EmailRider` VARCHAR(55) NOT NULL,
`IBANRider` VARCHAR(55) NOT NULL,
PRIMARY KEY ( `PIVARistorante` , `NomeRistorante` , `EmailRider`, `IBANRider`),
FOREIGN KEY (`PIVARistorante`,`NomeRistorante`)
REFERENCES `RISTORANTE` (`PIVA`,`Nome`)
ON DELETE RESTRICT
ON UPDATE CASCADE,
FOREIGN KEY (`EmailRider`,`IBANRider`)
REFERENCES `RIDER`(`Email`,`IBAN`)
ON DELETE RESTRICT
ON UPDATE CASCADE)
ENGINE=InnoDB;

INSERT INTO `PRESAINCARICO` (`PIVARistorante`,`NomeRistorante`,`EmailRider`,`IBANRider`)
VALUES
('IT5645010221','Pepas & Beer','mariobruni@libero.com','IT02009 35761'),
('IT0174936200','Shangai','luigifini@libero.com', 'IT02004 45990'),
('IT4500987252','Zushi','brunoraro@libero.com', 'IT02005 67910'),
('IT01846492493','O sole mio','giorgiafragola@libero.com', 'IT02002 25762'),
('IT3457682840','Ham Holi Burger','filippabarba@libero.com', 'IT02006 55451'),
('IT4526268181','Rossopomodoro','marcoformentin@libero.com', 'IT02002 00000'),
('IT1235609659','Indian Fusion Food','ludovicapaci@libero.com', 'IT02001 44461');

-- ------------------------------------------------------------------------------------------------------------





-- OPERAZIONI SULLA TABELLA




DROP VIEW IF EXISTS RistorantiGiapponesi;
DROP VIEW IF EXISTS PrezzoRistorante;
DROP VIEW IF EXISTS RistorantiVicini;
DROP VIEW IF EXISTS SociFedeli;
DROP VIEW IF EXISTS StipendiStaff;

--

CREATE VIEW RistorantiGiapponesi AS

SELECT CLIENTI.Email AS Cliente, RISTORANTE.Citta, RISTORANTE.Nome AS Ristorante
FROM RISTORANTE JOIN CLIENTI ON RISTORANTE.Citta = CLIENTI.Citta
WHERE RISTORANTE.Tipologia = "Giapponese";

--

CREATE VIEW PrezzoRistorante AS

SELECT RISTORANTE.Nome AS Ristorante, AVG(MENU.Prezzo) AS 'Prezzo Medio'
FROM RISTORANTE JOIN MENU ON RISTORANTE.Nome = MENU.Ristorante
WHERE (SELECT AVG (MENU.Prezzo) <= 5 ) 
GROUP BY RISTORANTE.Nome;

--

CREATE VIEW RistorantiVicini AS

SELECT  CLIENTI.Email AS Cliente, CLIENTI.Citta, RISTORANTE.Nome AS Ristorante
FROM RISTORANTE JOIN CLIENTI ON RISTORANTE.Citta = CLIENTI.Citta
WHERE (6370.0 * 3.14 * SQRT( (CLIENTI.Latitudine - RISTORANTE.Latitudine)
 * (CLIENTI.Latitudine - RISTORANTE.Latitudine) +  COS(CLIENTI.Latitudine/57.29)
 * COS(RISTORANTE.Latitudine/57.29) * (CLIENTI.Longitudine - RISTORANTE.Longitudine) * (CLIENTI.Longitudine - RISTORANTE.Longitudine) ) / 180 ) < 1 ;

--


CREATE VIEW SociFedeli AS

SELECT RISTORANTE.Nome AS Ristorante, AFFILIAZIONE.Giorno, AFFILIAZIONE.Mese, AFFILIAZIONE.Anno
FROM RISTORANTE JOIN AFFILIAZIONE ON RISTORANTE.PIVA = AFFILIAZIONE.PIVARistorante
GROUP BY RISTORANTE.Nome, AFFILIAZIONE.Giorno, AFFILIAZIONE.Mese, AFFILIAZIONE.Anno
HAVING AFFILIAZIONE.Anno = 2017 ;

--

CREATE VIEW StipendiStaff AS

SELECT SEDE.Citta AS Sede, SUM(Stipendio) AS 'Somma Stipendi'
FROM SEDE JOIN STAFFAMMINISTRATIVO ON SEDE.Citta = STAFFAMMINISTRATIVO.Citta
GROUP BY SEDE.Citta
HAVING SUM(Stipendio) >= 100000 ;



-- -------------------------------------------------------------------------------




DROP PROCEDURE IF EXISTS EliminaDipendenti;

DELIMITER ||

CREATE PROCEDURE EliminaDipendenti()
BEGIN
DELETE FROM STAFFAMMINISTRATIVO WHERE Ruolo != "CEO" AND Ruolo != "Capo operativo" AND Ruolo != "Amministratore" AND Stipendio = 0;
END ||
DELIMITER ;

--

DROP PROCEDURE IF EXISTS CancellaRistorantiItaliani;

DELIMITER ||
CREATE PROCEDURE CancellaRistorantiItaliani () 


BEGIN
DELETE 
FROM RISTORANTE
 WHERE Tipologica IN (
(SELECT RISTORANTE.Tipologia
FROM RISTORANTE
WHERE RISTORANTE.Tipologia = "Cucina italiana" AND ( SELECT COUNT(*) FROM ORDINE) <10));
END ||

DELIMITER ;


-- -------------------------------------------------------------------------------------------------------------

DROP FUNCTION IF EXISTS StelleRistorante;

DELIMITER ||

CREATE FUNCTION StelleRistorante (rist VARCHAR(40)) RETURNS INTEGER 

BEGIN
DECLARE prezzomedio INTEGER;
SELECT AVG (Prezzo) INTO prezzomedio
FROM Menu
WHERE RISTORANTE = rist;

IF ( 0 < prezzomedio <= 5 )
THEN
Return 1;

END IF;

IF ( 5 < prezzomedio <= 10 )
THEN
Return 2;

END IF;

IF ( 10 < prezzomedio <= 20 )
THEN
Return 3;

END IF;

IF ( 20 < prezzomedio <= 30)
THEN
Return 4;

END IF;

IF (prezzomedio > 30 )
THEN
Return 5;

END IF;

END || 

DELIMITER ;


--


DROP FUNCTION IF EXISTS DistanzaCasaRistorante;

DELIMITER ||

CREATE FUNCTION DistanzaCasaRistorante ( lat1 DECIMAL(8,6), lat2 DECIMAL(8,6), lon1 DECIMAL(8,6), lon2 DECIMAL(8,6)) RETURNS DECIMAL(8,2)

BEGIN
RETURN (6370 * 3.14 * SQRT( (lat1 - lat2) * (lat1- lat2) +  COS(lat1/57.29) * COS(lat2/57.29) * (lon1-lon2) * (lon1-lon2) ) / 180 ) ;
END || 
DELIMITER ;





-- -------------------------------------------------------------------------------------------






DROP TRIGGER IF EXISTS CheckOrdine; 

DELIMITER ||

CREATE TRIGGER CheckOrdine
BEFORE INSERT ON ORDINE
FOR EACH ROW 

BEGIN 
DECLARE prezzotot INTEGER; 
DECLARE message VARCHAR(255); 
SELECT PrezzoTotale INTO prezzotot
FROM ORDINE 
WHERE ORDINE.PrezzoTotale=NEW.ORDINE.PrezzoTotale 
IF (prezzotot < 5 )
THEN  SET message="Ordine inferiore al limite consentito"; 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = message; 
END IF;

END | |
DELIMITER ;


--



DROP TRIGGER IF EXISTS CheckStipendio; 

DELIMITER ||

CREATE TRIGGER CheckStipendio
AFTER UPDATE OF Stipendio ON STAFFAMMINISTRATIVO
FOR EACH ROW 
BEGIN 
DECLARE X INTEGER; 
DECLARE message VARCHAR(255); 
SELECT Stipendio INTO X
FROM STAFFAMMINISTRATIVO
WHERE STAFFAMMINISTRATIVO.Ruolo = "Capo operativo'" OR STAFFAMMINISTRATIVO.Ruolo = "CEO" OR STAFFAMMINISTRATIVO.Ruolo = "Amministratore"

IF (NEW.Stipendio > X AND STAFFAMMINISTRATIVO.Ruolo != "Capo operativo" AND STAFFAMMINISTRATIVO.Ruolo != "CEO" AND  STAFFAMMINISTRATIVO.Ruolo != "Amministratore") 
THEN  SET message="Errore inserimento stipendio"; 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = message; 
END IF; 

END | |

DELIMITER ; 



--






DROP TRIGGER IF EXISTS InserisciUtente;

DELIMITER ||

CREATE TRIGGER InserisciUtente
BEFORE INSERT ON CLIENTI
FOR EACH ROW 

BEGIN 

DECLARE contatore INTEGER;
DECLARE message VARCHAR(255);

SELECT COUNT(*) INTO contatore
FROM CLIENTI
WHERE CLIENTI.Email=NEW.CLIENTI.Email;

IF (contatore = 1) 
THEN SET message = "Email già utilizzata da un altro utente!";
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = message;
END IF;

END ||
DELIMITER ;





/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;