-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: investment
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `owned_bonds`
--

DROP TABLE IF EXISTS `owned_bonds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owned_bonds` (
  `Fund_ID` int NOT NULL,
  `Ticker_Symbol` varchar(10) NOT NULL,
  `Shares` int NOT NULL,
  PRIMARY KEY (`Fund_ID`,`Ticker_Symbol`),
  KEY `Ticker_Symbol` (`Ticker_Symbol`),
  CONSTRAINT `owned_bonds_ibfk_1` FOREIGN KEY (`Fund_ID`) REFERENCES `fund_manager` (`Fund_ID`),
  CONSTRAINT `owned_bonds_ibfk_2` FOREIGN KEY (`Ticker_Symbol`) REFERENCES `bonds` (`Ticker_Symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_bonds`
--

LOCK TABLES `owned_bonds` WRITE;
/*!40000 ALTER TABLE `owned_bonds` DISABLE KEYS */;
INSERT INTO `owned_bonds` VALUES (245,'AKGNZT',6288),(245,'ANQLUZ',8449),(245,'APHEAI',16912),(245,'ARXTLQ',18391),(245,'AZKRXW',13579),(245,'AZPRTQ',18886),(245,'AZQOWN',18061),(245,'BLQNCI',8993),(245,'BOFEKB',11317),(245,'BOQCPI',17805),(245,'CAZRGN',12556),(245,'CHWUGL',12991),(245,'CJIVDH',7488),(245,'CZVNMV',18026),(245,'DAMOOE',14962),(245,'DGKPWU',8687),(245,'DHNINL',13313),(245,'DQMNCE',18921),(245,'DZTXVX',19373),(245,'EGJKGC',18723),(245,'EHAZCY',11602),(245,'EKSLJF',13071),(245,'EQPWKW',13675),(245,'EWUNVU',5208),(245,'FDVJEV',7492),(245,'FEOYUS',14993),(245,'FHSOCH',10638),(245,'FLAATQ',15492),(245,'FLXHUM',6307),(245,'FMCXMH',18377),(245,'FTNWQT',17851),(245,'GEOXIE',11331),(245,'HGMBHQ',11113),(245,'IAAIBT',14623),(245,'ICDMHA',14248),(245,'IHLNTQ',17758),(245,'INBIZG',7774),(245,'JBLHHT',12579),(245,'JOSYAC',11407),(245,'JQJDXC',9463),(245,'JTKDOY',17250),(245,'KJYXKW',10120),(245,'KPXXRG',14778),(245,'KVNCXN',11029),(245,'LLBCUW',16044),(245,'LXUVDQ',12798),(245,'MHBNUF',8330),(245,'MLUTJK',5309),(245,'MTQLAH',9268),(245,'NOYKFH',6040),(245,'NRIZUP',17119),(245,'NRZJET',17461),(245,'NWNKBV',8287),(245,'OHYPKR',5125),(245,'PCVUJI',7458),(245,'POFAJL',8358),(245,'PQNQAO',13610),(245,'QDSAZP',19070),(245,'QFOJEK',6880),(245,'QNEDZA',13593),(245,'QNHCDY',11037),(245,'QQNYZZ',15172),(245,'QSLCPI',18696),(245,'RFXIGY',12051),(245,'SGLTLX',15898),(245,'SHMLTF',11665),(245,'SHUHOB',11731),(245,'TMFOAZ',10189),(245,'TXYTVV',9851),(245,'TYZXFQ',11046),(245,'UPIMDL',5614),(245,'UWAAWE',14479),(245,'VDGGVQ',12047),(245,'VMPTWZ',8458),(245,'VMYYIM',5930),(245,'VTUSBM',17124),(245,'WBIDLF',19487),(245,'WLGFSH',9023),(245,'XFONTG',9122),(245,'XOSZIN',12347),(245,'XWAABE',15523),(245,'XXOGVQ',11902),(245,'YEIDYJ',5128),(245,'YKBSDA',18699),(245,'YKOZSX',6241),(245,'YMYCSY',9148),(245,'YTNJXS',14148),(245,'ZEWPBM',6594),(245,'ZSYXZR',11634),(246,'AFAUDA',19208),(246,'ALJMAU',7085),(246,'ANFHLU',9643),(246,'BCLJWU',16206),(246,'BDESKG',5138),(246,'BGENRS',8333),(246,'BMLNGZ',7783),(246,'BWMPQQ',7231),(246,'BYFKBI',16475),(246,'BYRXYH',12033),(246,'CJALKG',15420),(246,'CZIIAE',19064),(246,'DMDJAG',16477),(246,'DNRQSO',6873),(246,'EAARLJ',6601),(246,'EHNMRG',16948),(246,'ERYIHR',18166),(246,'ESXJAI',19956),(246,'EYHFBT',5897),(246,'EYIUTH',12794),(246,'EZNEPE',13185),(246,'FEOYUS',8279),(246,'FLSECS',18077),(246,'FNRYQM',11893),(246,'FPWJEX',19539),(246,'GTESTG',11166),(246,'GZQWNP',17307),(246,'HBGVSA',13893),(246,'HKPBJS',15119),(246,'HUPJHA',16341),(246,'HUZGYM',13560),(246,'INKSDG',12549),(246,'IQOMFB',14670),(246,'JIRSAZ',5398),(246,'JKARKN',18271),(246,'JMAIHD',14091),(246,'JZVTGY',6030),(246,'KLCHBT',16767),(246,'KNMMNJ',18853),(246,'KRALHL',15445),(246,'KRMRKG',13531),(246,'KVAKBG',17029),(246,'KWXIQW',18629),(246,'MNEABC',13387),(246,'MNGADJ',11633),(246,'NCOZPC',19016),(246,'NRTDQN',6589),(246,'NUGVTQ',12301),(246,'NYNKDI',6525),(246,'OFOPSS',15781),(246,'OGCPYS',5242),(246,'OHRJDH',7036),(246,'OIYUTP',17902),(246,'OPOHIG',17792),(246,'PBDPFW',16606),(246,'PFVYYO',16914),(246,'PNKYAA',16260),(246,'PRXCYB',7972),(246,'PVVIAO',19453),(246,'QGLLZK',6083),(246,'QGWSUI',18398),(246,'QMDZYR',17126),(246,'QRWHDL',7593),(246,'QXTJCD',10849),(246,'QYDZVG',15975),(246,'RLUOVP',5778),(246,'RQDFPM',14913),(246,'RYXRME',13739),(246,'SEGXGK',19994),(246,'SMPECD',14279),(246,'SPIKPJ',7274),(246,'SSOWDP',16842),(246,'SWWAJI',10300),(246,'SZULQJ',14994),(246,'TCIPDO',8755),(246,'TCZOWG',8265),(246,'TGKVUB',17608),(246,'UEWHUW',13940),(246,'UOAGNZ',19868),(246,'UOMYPR',11101),(246,'UPIMDL',11980),(246,'UUCBOJ',6505),(246,'UUFOZS',6704),(246,'UVAVUN',6226),(246,'VAQSCC',13135),(246,'VFPDMW',18449),(246,'VMYYIM',18257),(246,'VQTZLC',18335),(246,'WERJRS',14431),(246,'WGOZYF',12954),(246,'WIKXXS',12584),(246,'XKCANJ',8152),(246,'XNZYDX',16598),(246,'XRNNUX',11332),(246,'XROBGY',10616),(246,'YSDFUS',6574),(246,'YVHQSB',9359),(246,'YVZIVH',7313),(246,'ZFUHYA',5755),(246,'ZJWTLX',8321),(246,'ZXOWCJ',7178),(247,'AEWCQB',13215),(247,'AQSQUC',15250),(247,'ARFDDI',13678),(247,'BDNKUO',10603),(247,'BKEGKX',13519),(247,'BKEOCX',16265),(247,'BNEDHH',11646),(247,'BXSGYC',18743),(247,'CBUMTF',12829),(247,'CKQBUL',13436),(247,'COKTBA',6765),(247,'CQUVJU',16456),(247,'CWTIRB',16684),(247,'DDGZCZ',17174),(247,'DWLGCF',10687),(247,'ECZRUK',6401),(247,'EHBESI',9476),(247,'EPTSSO',18294),(247,'EYIUTH',6684),(247,'FAQSWF',6970),(247,'FEOTOQ',10448),(247,'FEOYUS',11927),(247,'FEPVEM',17428),(247,'FGVAJC',10454),(247,'FJGTBF',9579),(247,'FNTWYY',9171),(247,'FQJEYE',14074),(247,'FVHONG',14110),(247,'FWCHUQ',17566),(247,'GDWXLL',10738),(247,'GJHUWW',7935),(247,'GKFAHI',8312),(247,'GNIABC',10356),(247,'HBJYQN',10674),(247,'HCJOFD',15045),(247,'HDUIVZ',7915),(247,'HEQCAY',16025),(247,'HOITLD',12589),(247,'IPWLNB',7265),(247,'IQQHKQ',16999),(247,'IWQPRY',18206),(247,'JCTLBB',18147),(247,'JEFAIW',18826),(247,'JHFENW',6810),(247,'JXUTWS',17285),(247,'JZVTGY',8332),(247,'KOSOAM',18430),(247,'LCUWVM',19175),(247,'LIBYHY',15571),(247,'LIREPO',12154),(247,'LPBRMK',16384),(247,'LZYVLN',5712),(247,'MJKFWG',5639),(247,'MROXZG',5461),(247,'MTQCGN',5986),(247,'NGTRXG',16809),(247,'NHRDJE',16297),(247,'NKHRXQ',10448),(247,'NNVUAG',15570),(247,'NOYKFH',17468),(247,'NQXSVM',17834),(247,'NXAQDN',10458),(247,'OBIZFF',18983),(247,'OBNWQJ',7709),(247,'OGKPBE',6329),(247,'OZESUK',5030),(247,'PNRAAQ',19662),(247,'PYTCLU',12609),(247,'QJFSDC',9224),(247,'QPAJTA',9593),(247,'QRPEGI',15498),(247,'QTCKNL',16543),(247,'QWNYFN',18475),(247,'QZWCJM',15632),(247,'RARJGD',6835),(247,'RIPHLP',9465),(247,'RJSVEZ',19107),(247,'ROIGRO',9429),(247,'ROYPJB',7406),(247,'RTTCUZ',17685),(247,'SPWPMO',7199),(247,'SRDPZX',16726),(247,'SVMVOP',8685),(247,'SXEUQS',17347),(247,'TGKLSW',19632),(247,'TPGPFV',5041),(247,'TXVFGI',19423),(247,'TZYKZP',11952),(247,'UEESRG',13750),(247,'UMUHVC',5206),(247,'UWAAWE',17453),(247,'VHQLPH',10797),(247,'VXDMVF',5048),(247,'WNPYEO',11939),(247,'WOTGIU',11097),(247,'WQZYIZ',12821),(247,'XHFGVB',12135),(247,'XHNZRH',14195),(247,'XHYRMF',13542),(247,'XQVMBN',9920),(247,'XSXIXN',9785),(247,'XWAABE',17524),(247,'YQRUFM',10997),(247,'YWAZZR',17108),(247,'ZFFPYJ',5526),(247,'ZOKKNV',7645),(247,'ZOSUDQ',9195),(247,'ZRTTOO',17406),(247,'ZUHRDL',9155),(247,'ZVZQWQ',6134);
/*!40000 ALTER TABLE `owned_bonds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-28 18:21:27
