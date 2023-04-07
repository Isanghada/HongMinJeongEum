CREATE DATABASE  IF NOT EXISTS `hmje` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hmje`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: hmje.c2dmjuulvzgw.ap-northeast-2.rds.amazonaws.com    Database: hmje
-- ------------------------------------------------------
-- Server version	8.0.31

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `dogam`
--

DROP TABLE IF EXISTS `dogam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogam` (
  `dogam_id` bigint NOT NULL AUTO_INCREMENT,
  `dogam_name` varchar(255) DEFAULT NULL,
  `dogam_class` varchar(255) DEFAULT NULL,
  `dogam_origin` varchar(255) DEFAULT NULL,
  `dogam_mean1` varchar(255) DEFAULT NULL,
  `dogam_exam1` varchar(255) DEFAULT NULL,
  `dogam_mean2` varchar(255) DEFAULT NULL,
  `dogam_exam2` varchar(255) DEFAULT NULL,
  `dogam_mean3` varchar(255) DEFAULT NULL,
  `dogam_exam3` varchar(255) DEFAULT NULL,
  `is_rared` bit(1) DEFAULT NULL,
  PRIMARY KEY (`dogam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogam`
--

LOCK TABLES `dogam` WRITE;
/*!40000 ALTER TABLE `dogam` DISABLE KEYS */;
INSERT INTO `dogam` VALUES (1,'마음','고유어','','사람이 태어날 때부터 지닌 성질.','승규는 마음이 넓으니까 이런 일쯤은 용서해 줄 거야.','사람의 몸 안에서 느끼거나 생각하는 등의 정신적인 활동을 하는 곳.','바쁠 때일수록 자신의 마음을 다스리면서 천천히 생각하고 지나온 길을 돌아볼 줄 알아야 한다.','좋아하는 마음이나 관심.','나는 그 여자를 처음 본 순간 마음을 빼앗겨 내내 그 여자 생각만 난다.',_binary ''),(2,'말','고유어','','생각이나 느낌을 표현하고 전달하는 사람의 소리.','감기에 걸려 목이 아파서 말이 잘 안 나온다.','사건에 대한 이야기나 세상에 떠도는 소문.','물가가 곧 상승할 거라는 말이 있다.','논리적이거나 이치에 맞는 이야기.','너는 그걸 말이라고 하는 거야?',_binary ''),(3,'눈','고유어','','사람이나 동물의 얼굴에 있으며 빛의 자극을 받아 물체를 볼 수 있는 감각 기관.','민준이는 강렬한 햇빛 때문에 눈이 부셨다.','사물을 보고 판단하는 힘.','행위 예술은 때로 일부 사람들의 눈에 이상한 행동으로 보일 수 있다.','사람들의 눈이 가는 길이나 방향.','애림이는 사람들의 눈을 의식하여 길가에 버린 쓰레기를 다시 주웠다.',_binary ''),(4,'입','고유어','','음식을 먹고 소리를 내는 기관으로 입술에서 목구멍까지의 부분.','피로가 쌓이면 입에 염증이 생기기도 한다.','음식을 먹는 사람의 수.','우리 집은 입이 많아서 엄마가 음식을 많이 하신다.','(비유적으로) 사람이 하는 말.','권민이는 입으로만 떠들고 하는 일이 없는 걸로 유명하다.',_binary ''),(5,'손','고유어','','사람의 팔목 끝에 달린 부분. 손등, 손바닥, 손목으로 나뉘며 그 끝에 다섯 개의 손가락이 있어, 무엇을 만지거나 잡거나 한다.','손을 뻗다.','일을 하는 사람.','손이 부족하다.','어떤 일을 하는 데 드는 사람의 힘이나 노력, 기술.','그 일은 손이 많이 간다.',_binary ''),(6,'머리','고유어','','생각하고 판단하는 능력.','그는 머리가 좋아서 한 번 들은 내용도 절대 잊어버리지 않는다.','단체에서 대표가 되는 사람.','무리가 크건 작건 머리의 자리에 오르면 막중한 책임감이 따르기 마련이다.','(비유적으로) 일의 시작이나 처음.','책의 머리 부분에는 작가에 대한 간략한 소개가 적혀 있었다.',_binary ''),(7,'가슴','고유어','','인간이나 동물의 목과 배 사이에 있는 몸의 앞 부분.','어머니는 아이를 가슴에 꼭 안았다.','사람의 심장이나 폐.','너무나 조용해서 친구의 가슴 뛰는 소리까지 들리는 듯했다.','마음이나 느낌.','아버지는 가난해서 공부를 많이 하지 못한 서러움이 항상 가슴에 맺혀 있다고 말씀하셨다.',_binary ''),(8,'발','고유어','','사람이나 동물의 다리 맨 끝부분.','발을 디디다.','가구 따위의 밑을 받쳐 균형을 잡고 있는, 짧게 도드라진 부분.','장롱의 발','‘걸음’을 비유적으로 이르는 말','발이 빠른 선수.',_binary ''),(9,'귀','고유어','','사람이나 동물의 머리 양옆에 있어 소리를 듣는 몸의 한 부분.','그의 잔소리는 너무 심해서 이제 귀가 따가울 정도였다.','겉귀의 밖으로 드러난 가장자리 부분.','토끼는 귀가 하얗고 긴 동물이다.','윗옷의 옷깃 끝부분.','어머니는 셔츠의 귀에 묻은 때를 솔로 문지르며 빨래하셨다.',_binary ''),(10,'배','고유어','','사람이나 동물의 몸에서, 가슴 아래에서 다리 위까지의 부분.','천벌을 받아야 할 그가 배를 두드리며 잘 살고 있다는 소문을 들은 나는 기분이 씁쓸해졌다.','사람이나 동물의 몸에서 음식을 소화시키는 위장, 창자 등의 내장이 있는 곳.','그는 요새 배가 불렀는지 힘든 일은 이제 안 하려고 한다.','물건의 가운데 부분.','어머니는 서랍장 밑에서 배가 찢어져 속이 빈 인형을 발견했다.',_binary ''),(11,'목','고유어','','사람이나 동물의 머리와 몸통을 잇는 잘록한 부분.','민준이는 세수를 하는 김에 목도 깨끗하게 씻었다.','목을 통해 나오는 소리.','나는 사랑하는 사람과 이별한 슬픔에 목 놓아 울었다.','자리가 좋아 장사가 잘되는 곳이나 길.','그 가게는 목 좋은 곳에 위치해서 손님이 자주 드나든다.',_binary ''),(12,'얼굴','고유어','','눈, 코, 입이 있는 머리의 앞쪽 부분.','그들은 큰 모자로 얼굴을 가리고 남들이 모르게 건물을 빠져 나갔다.','주위에 널리 알려져 얻은 평판, 명예, 체면, 면목.','사람들 앞에서 큰 실수를 한 후부터는 나는 좀처럼 얼굴을 세울 수가 없었다.','어떠한 사물을 대표하거나 본래의 모습을 잘 드러내 주는 대표적인 것.','애림이는 홍민정음의 얼굴이다.',_binary ''),(13,'속','고유어','','거죽이나 껍질로 싸인 물체의 안쪽 부분.','그 배추는 싱싱하고 속이 꽉 차 있었다.','사람의 몸에서 배의 안 또는 위장.','찬희는 어제 마신 술로 속이 쓰리고 메스꺼웠다.','사람이나 사물을 대하는 자세나 태도.','그는 속이 좁아서 별것도 아닌 일에 쉽게 화를 내곤 했다.',_binary ''),(14,'길','고유어','','시간이 지남에 따라 사람이 살아가거나 사회가 발전해 나가는 과정.','내가 살아온 길은 수학을 배운 시기와 가르친 시기로 구분된다.','사람이나 사회가 지향하는 것을 향해 가는 일.','힘들다고 포기하지 않고 희망의 길을 찾는 사람들에게는 좋은 일이 생길 것이다.','무엇을 하기 위한 방법.','지금의 어려운 상황을 극복하는 길은 서로 돕고 의지하는 것뿐이다.',_binary ''),(15,'계단','한자어','階段','오르내리기 위하여 작은 단들을 비스듬하게 차례로 이어 놓은 시설.','키가 작은 유민이는 축제를 보기 위해 계단에 올라가 구경하였다.','어떤 목적을 이루기 위해서 마땅히 거쳐야 할 순서.','퀴즈 대회에 나간 남규는 마지막 계단을 통과하지 못해 우승을 놓쳤다.','오르내리기 위하여 작은 단들을 비스듬하게 차례로 이어 놓은 시설의 낱낱의 단을 세는 단위.','홍민이는 체력이 약해서 몇 계단도 채 오르지 못하고 털썩 주저앉았다.',_binary ''),(16,'주머니','고유어','','돈이나 물건 등을 넣어 가지고 다닐 수 있도록 천이나 가죽 등으로 만든 물건.','아이들은 크리스마스트리에 작은 주머니를 달아 놓았다.','(비유적으로) 무엇이 유난히 많은 사람.','혹부리 영감의 턱에는 커다란 노래주머니가 달려있었다.','(비유적으로) 이익을 차려 넣어 두는 곳.','민준이는 가게에서 지갑을 찾다가 주머니를 털린 사실을 알게 되었다.',_binary ''),(17,'밥','고유어','','쌀과 다른 곡식에 물을 붓고 물이 없어질 때까지 끓여서 익힌 음식.','밥이 뜸이 덜 들었나봐.','자기가 차지해야 할 것.','어머니는 막내가 너무 착해서 자기 밥도 못 찾아 먹을까 봐 걱정하신다.','(비유적으로) 다른 사람에게 이용당하거나 희생되는 사람.','은진이는 몸이 약하고 소심한 홍민이를 자기 밥으로 생각하고 궂은 일을 다 시킨다.',_binary ''),(18,'운동','한자어','運動','몸을 단련하거나 건강을 위하여 몸을 움직이는 일.','어제 자기 전에 운동을 했더니 깊이 잠이 들었다.','어떤 목적을 이루기 위한 활동.','많은 학생들이 등록금 인하 운동에 참가했다.','물체가 시간의 흐름에 따라 하는 어떤 활동이나 움직임.','달의 운동은 지구 바깥의 궤도를 벗어나지 않는다.',_binary ''),(19,'뼈','고유어','','동물이나 사람의 살 속에서 그 몸을 지탱하는 단단한 물질.','성공은 뼈를 깎는 노력을 통해서 이루어진다.','이야기의 기본 줄거리나 핵심.','주제를 가장 잘 드러내기 위해서는 글의 뼈를 잘 짜야 한다.','(비유적으로) 어떤 의도나 속에 품은 생각.','그가 뼈 있는 유머 한 마디를 던졌다.',_binary ''),(20,'층','한자어','層','서로 다른 물질이나 물체가 옆으로 넓게 퍼져 쌓여 있는 것 중의 하나. 또는 그렇게 쌓여 있는 상태.','사람을 발길이 끊긴 지 오래인 이 집 바닥은 먼지가 쌓여 두터운 층을 이루고 있었다.','위로 높이 포개어 지은 건물에서 같은 높이를 이루는 부분.','이 아파트는 층마다 감시카메라가 설치되어 있다.','사회적 신분, 재산, 수준이나 관심 분야 등이 서로 비슷한 사람들.','아무리 힘들다고 하지만 그래도 그는 우리 중에서는 제일 잘 사는 층에 속했다.',_binary ''),(21,'어른','고유어','','다 자란 사람.','너도 이제 어른이니 네 할 일은 네가 알아서 하도록 해라.','나이나 지위 등이 높은 윗사람.','동네 어른들이 평상에 모여 앉아 바둑을 두신다.','한 집안이나 집단 등에서 나이가 많고 경험이 많아 남에게 존경을 받는 사람.','모름지기 어른 앞에서는 말과 행동을 예의 바르고 조심스럽게 해야 한다.',_binary ''),(22,'면','한자어','面','사물의 겉에 있는 평평한 부분.','그 교회는 언덕 정상의 평평한 면 위에 위치하고 있다.','일의 어떤 측면이나 방면.','이 영화는 예술적인 면에만 치중해 상업적으로는 실패했다.','(옛 말투로) 남을 대하기에 떳떳한 도리나 명예.','옛날 양반들은 자신들의 면이 손상되지 않도록 행동을 조심스럽게 했다.',_binary ''),(23,'이름','고유어','','다른 것과 구별하기 위해 동물, 사물, 현상 등에 붙여서 부르는 말.','우리는 이 사건에 이름을 붙이기로 했다.','세상에 널리 알려진 명성.','최 씨는 글 쓰는 재주가 있어서 문장가로 이름을 꽤나 날렸다.','세상 사람들이 훌륭하다고 인정하는 평가와 그에 따르는 영광.','김 장관은 이번 비리 사건으로 그동안 얻었던 이름을 잃게 되었다.',_binary ''),(24,'짐','고유어','','다른 곳으로 옮기기 위해 꾸려 놓은 물건.','우리는 이사를 가기 위해 짐을 쌌다.','맡겨진 책임이나 부담.','가족의 생계를 책임져야 한다는 사실은 그에게 짐이 되었다.','남에게 폐를 끼치거나 귀찮게 여겨지는 물건이나 존재.','나는 나에게만 의지하려는 동생이 짐처럼 여겨졌다.',_binary ''),(25,'날','고유어','','밤 열두 시에서 다음 밤 열두 시까지의 이십사 시간 동안.','오늘같이 좋은 날에 어떻게 술 한잔이 빠질 수 있겠습니까?','어떠한 시절이나 때.','옛날에 인기 있었던 가수가 텔레비전에 나와 그녀가 젊었을 때의 화려했던 날들을 추억했다.','경우’의 뜻을 나타내는 말.','돈을 훔친 사실을 들키는 날에는 난 죽은 목숨이다.',_binary ''),(26,'책임','한자어','責任','맡은 일이나 의무.','자유에는 책임이 따른다.','어떤 일의 결과에 대해서 가지는 의무나 부담. 또는 그 결과에 따른 불이익.','김 씨는 화재의 책임을 지고 큰 벌금을 내야 했다.','법을 어긴 사람에게 법적 불이익을 주거나 제한을 두는 일.','운전자가 음주 운전으로 사고를 내었을 때에는 법적으로 책임이 있다.',_binary ''),(27,'꿈','고유어','','잠자는 동안에 깨어 있을 때처럼 보고 듣고 느끼는 정신 현상.','권민이는 요즘따라 꿈에서 프로젝트가 나온다.','앞으로 이루고 싶은 희망이나 목표.','꿈 많은 소년인 승규는 앞으로 하고 싶은 일이 너무 많아서 무엇부터 할지 고민이다.','이루어질 가능성이 아주 적거나 없는 헛된 기대나 생각.','삼촌은 복권에 당첨되어 노력도 없이 큰 부자가 되려는 헛된 꿈을 꾸고 있다.',_binary ''),(28,'힘','고유어','','활동, 작용, 기능 등을 할 수 있게 하는 사람의 능력.','아이들이 스스로 문제를 푸는 힘을 갖도록 훈련해야 한다.','정성이나 노력.','홍민이는 그녀의 마음을 얻는 데에 온 힘을 기울였다.','개인이나 단체를 통제하고 억지로 따르게 하는 권력이나 폭력.','김 의원은 박 사장에게 정치적인 힘을 행사하며 협박했다.',_binary ''),(29,'바가지','고유어','','박을 반으로 쪼개거나 플라스틱 등으로 이와 비슷하게 만들어 액체, 곡물, 가루 등을 푸거나 담는 데 쓰는 둥근 모양의 그릇.','옛날 예능에서는 머리로 바가지를 부수는 것이 유행이었다.','액체, 곡물, 가루 등을 바가지에 담아 그 분량을 세는 단위.','그 사람이 돌아가자 어머니는 집 앞에 소금을 한 바가지 뿌렸다.','제값보다 훨씬 비싼 요금이나 물건값.','여행에서 해당 나라의 언어를 모르면 바가지를 당하기 십상이다.',_binary ''),(30,'거울','고유어','','물체의 모양을 비추어 보는 얇고 평평한 물건.','여자는 거울을 보면서 화장을 했다.','(비유적으로) 어떤 사실을 그대로 드러내거나 보여 주는 것.','친구는 내가 어떤 사람인지 알 수 있게 해 주는 거울이다.','모범이나 교훈이 될 만한 것.','역사는 미래를 여는 데 있어 중요한 거울이 된다.',_binary ''),(31,'기운','고유어','','생물이 몸을 움직이고 활동하는 힘.','친구들의 응원을 받으니 기운이 펄펄 나서 무엇이든 할 수 있을 것 같다.','눈에 보이지는 않지만 느껴지는 힘이나 분위기.','어린 동생이 바깥 날씨의 찬 기운을 쐬고 나서 그만 감기에 걸려 버렸다.','감기나 몸살 등이 걸린 것을 알 수 있게 하는 가벼운 증상.','몸살 기운이 있는지 몸이 으슬으슬 춥고 온몸이 아프다.',_binary ''),(32,'시간','한자어','時間','어떤 때에서 다른 때까지의 동안.','여행을 하면서 보낸 여름 방학은 나에게 의미 있는 시간이었다.','어떤 일을 할 여유.','승규는 며칠 시간을 내서 고향에 다녀올 생각이다.','자연히 지나가는 세월.','시간이 지나면 죽은 사람들은 모두 잊히기 마련이다.',_binary ''),(33,'거리','고유어','','두 개의 물건이나 장소 등이 서로 떨어져 있는 길이.','이제 시험을 시작할 테니 옆 사람과 거리를 두고 앉으세요.','비교하는 두 대상 사이의 차이.','그의 주장은 무척 진보적인 것이라 다소 보수적인 나의 생각과는 거리가 있었다.','사람과 사람 사이에 느껴지는 가깝고 먼 정도.','그녀는 나에게 마음을 터놓고 이야기하지 않는 편이라 늘 거리가 느껴졌다.',_binary ''),(34,'자리','고유어','','사람이나 물건이 차지하고 있는 공간.','자리가 넓으니까 동그랗게 앉읍시다.','사람의 몸이나 물건 등이 변화를 겪고 난 후 흔적이 남은 곳.','불이 난 자리에는 까맣게 타 버린 물건 몇 가지만 남아 있었다.','조직에서의 직위나 지위.','지금 자리를 지키려면 일을 하면서 더 많은 수익을 올려야 한다.',_binary ''),(35,'바람','고유어','','기압의 변화 또는 사람이나 기계에 의해 일어나는 공기의 움직임.','제주도는 바람이 많기로 유명하다.','남에게 마음에 없던 일을 하도록 부추기는 일.','사내가 먼저 바람을 잡으면 어수룩한 관광객들은 쉽게 도박장에 들어섰다.','사회적으로 잠시 일어나는 유행이나 분위기 또는 사상적인 경향.','상댱항 규모의 지진이 예상된다는 정부의 발표가 사재기 바람을 일으켰다.',_binary ''),(36,'물','고유어','','강, 호수, 바다, 지하수 등에 있으며 순수한 것은 빛깔, 냄새, 맛이 없고 투명한 액체.','김 부장과 박 부장은 십 년간 같이 일했지만 물과 기름처럼 서로 잘 안 맞는다.','호수, 강, 바다 등.','달리기 선수인 승규는 체육 시간에는 마치 물 만난 고기 같았다.','(비유적으로) 어떤 곳이나 조직, 대상에 대한 경험이나 영향.','언니는 오 년간 외국 물을 먹더니 말투가 낯설게 변했다.',_binary ''),(37,'재미','고유어','','어떤 것이 주는 즐거운 기분이나 느낌.','이런 연극은 대사의 재미가 중요하다.','안부를 묻는 인사에서, 어떤 일이나 생활의 형편.','할머니, 요즘 손자를 봐서 재미가 좋으시죠?','투자한 것 이상의 좋은 성과.','김 씨는 농수산물 거래에서 많은 재미를 보았다.',_binary ''),(38,'품','고유어','','윗옷의 겨드랑이 밑의 가슴과 등을 두르는 부분의 넓이.','드레스의 품이 커 뒤쪽을 줄였다.','윗옷을 입었을 때 가슴과 옷 사이의 틈.','그는 돌아가신 아버지의 사진을 품에 넣고 다녔다.','(비유적으로) 보호를 받는 환경.','지난 해 그녀는 부랑자 시절을 청산하고 가족의 품으로 돌아왔다.',_binary ''),(39,'역할','한자어','役割','맡은 일 또는 해야 하는 일.','남 일 신경 쓰지 말고 네 역할이나 충실히 해.','맡고 있는 기능이나 작용.','탄수화물은 우리 몸에 에너지를 공급해 주는 땔감 역할을 하는 영양소이다.','드라마, 연극, 영화 등에서 맡은 배역.','그는 어떤 역할을 맡든 최선을 다해 좋은 연기를 보여주는 연기자였다.',_binary ''),(40,'사이','고유어','','한 물체에서 다른 물체까지 또는 한곳에서 다른 곳까지의 거리나 공간.','닫히는 지하철 문 사이로 달려들어 급히 탔더니 문틈에 옷이 끼어 버렸다.','어떤 일을 할 시간적인 틈이나 여유.','회사에 취직을 했더니 주말이 오기 전까지는 잠시도 쉴 사이가 없다.','서로 맺은 관계나 사귀어서 정이 든 정도.','사소한 오해로 잠시 사이가 떴던 두 친구는 오해를 풀고 다시 친한 친구 사이가 되었다.',_binary ''),(41,'분위기','고유어','','어떤 자리나 장면에서 느껴지는 기분.','회의는 시종일관 화기애애한 분위기 속에서 진행되었다.','어떤 사람이나 사물이 가지고 있는 독특한 느낌.','삼촌의 꽉 다문 입과 매서운 눈초리에서 강직한 분위기가 느껴진다.','어떤 집단 안에 전체적으로 떠도는 기운.','가족들은 모두 막내가 유학을 갔으면 하는 분위기이다.',_binary ''),(42,'줄','고유어','','무엇을 묶거나 매는 데 쓰는 가늘고 긴 물건.','팔찌의 줄이 끊어지면서 진주가 바닥에 떨어졌다.','사람이나 물건이 길게 늘어서 있는 것.','학생들은 차례차례 줄을 지어 식당으로 들어갔다.','힘이 될 만한 사람들과의 이로운 관계.','윗사람에게 줄을 댄 사람이 성공하는 사회는 희망이 없다.',_binary ''),(43,'관계','한자어','關係','둘 이상의 사람, 사물, 현상 등이 서로 관련을 맺음. 또는 그런 관련.','현대인의 질병 중 상당수는 과다한 스트레스와 관계가 깊다.','어떤 방면이나 영역에 관련을 맺고 있음. 또는 그 방면이나 영역.','사고가 나자 즉시 관계 부처 간에 대책 회의가 열렸다.','무엇 때문에. 어떠한 이유로.','비가 오는 관계로 야회 행사는 취소되었다.',_binary ''),(44,'바닥','고유어','','어떤 지역이나 장소. 또는 특정 분야.','연예계는 바닥이 좁아서 나쁜 소문이 난 연예인은 활동하기가 어렵다.','겉으로 드러나지 않는 가장 깊고 본질적인 부분.','김 과장의 말에는 나를 더 이상 믿을 수 없다는 뜻이 바닥에 깔려 있었다.','물체의 밑부분.','우리 학교 축구부는 전국에서 바닥을 길 정도로 실력이 형편없다.',_binary ''),(45,'요령','한자어','要領','가장 중요하고 핵심이 되는 줄거리.','어려운 전문 지식이라도 요령만 알면 아주 쉽게 이해할 수 있다.','경험을 통해 얻은 이치나 방법.','다양한 경험을 통해 몸소 얻게 되는 요령들은 삶의 지혜가 될 것이다.','적당히 해 넘기려는 얕은 꾀.','지수는 요령만 피우고 성실하게 노력하는 법이 없다.',_binary ''),(46,'시험','한자어','試驗','문제, 질문, 실제의 행동 등의 일정한 절차에 따라 지식이나 능력을 검사하고 평가하는 일.','어머니는 시험이 끝나면 아이들을 당분간 자유롭게 놀게 할 생각이었다.','어떤 계획이나 방법을 실제로 시행하기 전에 실지로 해 보고 그 결과를 알아보는 일.','이 약품은 아직 시험 단계라서 아직 인체에 무해하다고 결론을 내리기 어렵다.','사람의 됨됨이를 알기 위하여 떠보는 일. 또는 그런 꼬임이나 유혹.','우리는 저마다 크고 작은 시험에 빠져 그 유혹을 어떻게 이겨 낼까 고민한 적이 있을 것이다.',_binary ''),(47,'두뇌','한자어','頭腦','사람이나 동물의 신경을 다스리는 머릿속에 있는 기관.','깊이 잠든 상태에서는 오로지 두뇌와 안구만이 활발하게 움직인다.','사물의 이치를 판단하는 지혜나 슬기.','장영실은 명석한 두뇌를 가지고 있어 노비였지만 세종 대왕이 인재로 발탁하였다.','총체적으로 지휘하는 기능을 가지는 조직이나 사람.','회장은 그 회사의 두뇌로서 회사 경영의 전반적인 부분을 다스린다.',_binary ''),(48,'주먹','고유어','','손가락을 모두 모아 쥔 손.','그의 말이 끝나기가 무섭게 승규로부터 주먹이 날아왔다.','(비유적으로) 물리적인 힘이나 폭력, 폭력배.','은진이의 주먹 앞에서는 반 아이들 모두가 큰소리를 낼 수 없었다.','한 손에 쥘 수 있는 양을 세는 단위.','나는 주전자에 한 주먹의 찻잎을 집어넣었다.',_binary ''),(49,'꼬리','고유어','','어떤 일이나 사람이 남긴 흔적이나 실마리.','검찰은 문서가 위조된 꼬리를 발견하고 수사에 들어갔다.','(비유적으로) 물체의 한쪽 끝에 길게 내민 부분.','그 혜성은 꼬리가 길고 아름다운 것으로 유명하다.','어떤 일이나 생각의 끝.','생각의 꼬리를 좇다 보니 어느새 여기까지 왔다.',_binary ''),(50,'맥','한자어','脈','기운이나 힘.','지수는 아침부터 늦은 오후가 될 때까지 아무것도 먹지 못해서 맥이 없었다.','서로 이어져 있는 관계나 연관된 흐름.','그는 우리의 대화를 따라가지 못 하고 걸핏하면 맥을 끊는 엉뚱한 소리를 했다.','풍수지리에서, 산맥이나 지세의 정기가 흐르는 줄기.','일제는 한반도 전체의 맥을 끊기 위해 좋은 정기가 흐른다는 산봉우리마다 큰 말뚝을 박아 놨다.',_binary ''),(51,'바탕','고유어','','사물이나 현상을 이루는 근본.','나는 친구에 대한 신뢰를 바탕으로 큰돈을 빌려주었다.','타고난 성질이나 체질.','주위 환경이 변화해도 사람의 바탕은 쉽게 바뀌지 않는다.','그림, 무늬, 수 등의 배경이 되는 전체 면.','그림은 이제 바탕만 칠하면 완성이 된다.',_binary ''),(52,'개발','한자어','開發','토지나 천연자원 등을 이용하기 쉽거나 쓸모 있게 만듦.','정부는 버려진 땅을 찾아 공원으로 개발을 했다.','능력이나 지식 등을 더 나아지게 함.','우리 회사는 직원들의 기술 개발을 위한 지원을 아끼지 않는다.','새로운 물건을 만들거나 새로운 생각을 내놓음.','우리는 실시간 통번역 서비스를 개발 중이다.',_binary ''),(53,'세상','한자어','世上','사람이 살고 있는 모든 사회.','좋은 친구를 가지는 게 힘든 세상이 되었어.','자기 마음대로 할 수 있는 시간이나 공간.','주인이 나가면 집은 강아지들 세상이었다.','세상 사람들의 마음.','나는 잔인한 세상에 상처 받은 마음을 추슬렀다.',_binary ''),(54,'인사','한자어','人事','만나거나 헤어질 때에 예의를 나타냄. 또는 그런 말이나 행동.','모임이 끝난 뒤 우리는 서로 인사를 하고 집으로 돌아갔다.','처음 만나는 사람들이 서로 이름을 알려 주며 자기를 소개함. 또는 그런 말이나 행동.','김 부장은 신입 사원 한 명 한 명에게 인사를 청했다.','고마운 일이나 축하할 일 등에 대해 예의를 나타냄. 또는 그런 말이나 행동.','바쁘게 지내다 보니 새해 인사가 늦었습니다.',_binary ''),(55,'노래','고유어','','운율에 맞게 지은 가사에 곡을 붙인 음악. 또는 그런 음악을 소리 내어 부름.','좋은 일이 있는지 누나 입에서는 하루 종일 흥겨운 노래가 흘러나왔다.','같은 말을 계속 하면서 졸라 댐.','동생은 하루 종일 어머니를 쫓아다니며 새 옷을 사 달라고 노래를 불러 댔다.','새나 곤충 등이 듣기 좋게 욺. 또는 그런 소리.','귀뚜라미의 노래가 들리는 것을 보니 이제 가을이 왔나 보다.',_binary ''),(56,'물질','한자어','物質','인간의 정신과 반대되는 개념으로 객관적으로 존재하는 실체.','이 이론은 정신과 물질의 주종 관계에 대해서 이야기하고 있다.','재산이나 재물.','모든 종교에서는 대체로 물질의 탐욕보다는 정신 수양을 강조한다.','공간의 일부를 차지하고 질량을 갖는 요소.','빛은 유리와 같이 투명한 물질을 쉽게 통과한다.',_binary ''),(57,'모습','고유어','','사람이나 사물의 생김새.','대학생 때 나는 돈이 없어 멋도 못 부리고 늘 초라한 모습을 하고 학교에 다녔다.','겉으로 드러난 상태나 모양.','축제가 끝나자 시끌벅적하던 마을은 다시 평화로운 모습을 되찾았다.','어떤 곳에 드러난 자취나 흔적.','그는 모습을 감추고 사라진 지 사흘 만에 다시 집으로 돌아왔다.',_binary ''),(58,'부담','한자어','負擔','일을 맡거나 책임, 의무를 짐.','우리가 도와줄 테니까 혼자서 부담을 떠안지는 마.','어떤 일을 할 때 느끼는 어려운 마음.','이번 일로 친구에게 부담을 주고 싶지 않다.','몸이 정상적으로 기능하는 데 장애가 되는 것.','스트레스는 몸에 부담을 많이 주니까 조심해.',_binary ''),(59,'빛','고유어','','얼굴에 나타나는 표정.','가족과 헤어진 그녀의 얼굴에는 쓸쓸한 빛이 감돌았다.','(비유적으로) 희망이나 영광.','무명 작가의 작품이 늦게서야 빛을 보게 되었다.','물체가 나타내는 색깔.','빛이 바랜 사진 속에는 그녀의 웃는 모습이 담겨 있었다.',_binary ''),(60,'대가','한자어','代價','물건의 값으로 내는 돈.','정보나 자료를 제공하는 데 대하여 대가를 받는 것은 정당한 일이다.','어떤 일에 들인 노력에 대한 보수.','열심히 일을 하면 그에 맞는 정당한 대가를 받아야 한다.','어떤 일에 들인 노력이나 그 결과.','나는 내가 얻은 조그마한 성과에 비해서 대가가 너무 비싼 것같이 생각되었다.',_binary ''),(61,'손아귀','고유어','','엄지손가락과 다른 네 손가락의 사이.','지수는 오랫동안 기계를 손에 쥐고 일해서 손아귀가 저려 왔다.','무엇을 손으로 쥐는 힘.','그 선수는 강한 손아귀로 공을 잡고 놓지 않았다.','어떤 세력이나 영향력이 미치는 범위.','나는 게임에서 이기기 위해 온갖 꾀를 냈지만 결국 상대 선수의 손아귀에서 놀았을 뿐이었다.',_binary ''),(62,'인정','한자어','人情','사람이 본래 가지고 있는 감정이나 마음.','가지면 가질수록 더 욕심내는 것이 사람의 인정이다.','남을 생각하고 도와주는 따뜻한 마음.','주민들이 먹을 것을 서로 나눠 먹는 그 마을은 인정이 넘쳤다.','세상 사람들의 마음.','나는 심화되는 개인주의가 인정이 메마르게 된 원인이라고 생각한다.',_binary ''),(63,'발길','고유어','','앞으로 움직여 걸어 나가는 발.','발길을 옮길 때마다 뽀드득 하고 눈이 밟히는 소리가 났다.','사람들의 오고 감.','할머니는 가게에 손님 발길이 끊어진 게 옛날인데도 매일같이 문을 열었다.','앞으로 세차게 뻗는 발.','지수가 방심한 순간 뒤쪽에서 발길이 날아왔다.',_binary ''),(64,'계산','한자어','計算','수를 세거나 더하기, 빼기, 곱하기, 나누기 등의 셈을 함.','남규는 어릴 때부터 숫자에 강해 계산을 잘했다.','어떤 일을 미리 예상하거나 고려함.','찬희는 나름대로의 계산이 서 있는지 상황이 좋지 않은데도 일을 진행시켰다.','어떤 일이 자신에게 이익인지 손해인지 따짐.','상대방이 너무 계산을 하고 있다는 생각이 들면 정이 가지 않는다.',_binary ''),(65,'소화','한자어','消化','(비유적으로) 배운 지식이나 기술 등을 제대로 이해해서 자기 것으로 만듦.','우리는 외래 문물을 받아들여 우리 고유의 문화로 소화를 시켰다.','(비유적으로) 보통 어울리기 힘든 것을 고유의 특성으로 인하여 잘 어울리게 함.','지수는 패션 감각이 뛰어나서 아무 옷이나 소화를 잘한다.','(비유적으로) 일을 해결하거나 처리함.','은진이는 업무 능력이 좋아 맡은 일을 모두 잘 소화를 한다.',_binary ''),(66,'문제','한자어','問題','논쟁이나 논의, 연구 등의 대상이 되는 일.','내년도 예산 문제를 놓고 여당과 야당은 격렬하게 대립하고 있다.','난처하거나 해결하기 어려운 일.','아무리 어려운 일이라도 자신의 문제는 스스로 해결해야 한다.','귀찮은 일이나 말썽.','시도 때도 없이 문제를 일으키는 아이들에게는 특별한 교육이 필요하다.',_binary ''),(67,'교류','한자어','交流','시작하는 곳이 다른 물줄기가 서로 만나 섞여 흐름. 또는 그런 물줄기.','두 강줄기의 교류가 시작되는 부근에서 급격히 물살이 빨라졌다.','문화나 사상 등이 서로 오감.','세계 학자들과의 학술 교류가 우리 학회 연구의 질을 높이는 데 도움이 되었다.','시간에 따라 일정하게 크기와 방향이 바뀌어 흐르는 전류.','전류가 일정하지 않은 교류를 어떻게 사용할 수 있나요?',_binary ''),(68,'생활','한자어','生活','사람이나 동물이 일정한 곳에서 살아감.','우리 모두는 행복한 생활을 위해 노력하며 살아간다.','살림을 꾸려 생계를 이어 나감.','김 씨는 자신의 생활에 여유가 생기자 다른 사람들을 도우며 살기 시작했다.','어떤 조직의 구성원으로 활동함.','민준이는 직장 생활을 처음 시작하면서 많은 시행착오를 겪었다.',_binary ''),(69,'경제','한자어','經濟','생산이나 소비 등과 관련된 사람들의 활동. 또는 한 사회나 국가에서 돈, 자원, 산업, 생산, 소비, 무역 등과 관련된 모든 활동.','물가 상승과 실업 정책 등 우리는 지금 경제 위기 상황을 맞게 되었다.','사회의 경제 현상을 분석하고 연구하는 학문.','아버지는 대학에 다니면서 경제를 전공하였다.','이익을 높이기 위하여 돈이나 시간, 노력 등을 적게 들임.','애림이는 경제 관념이 없어서 가끔씩 엉뚱한 곳에 돈을 낭비하곤 한다.',_binary ''),(70,'불','고유어','','물질이 빛과 열을 내며 타는 것.','장작에 불을 붙이니 주위는 밝고 따뜻해졌다.','빛을 내어 어둠을 밝히는 물체.','등대의 불은 배를 항구로 안내하는 역할을 한다.','(비유적으로) 불이 타는 듯이 열렬하고 거세게 타오르는 감정.','지난 시합에서 상대 팀의 우승이 우리 선수들의 승부욕에 불을 붙였다.',_binary ''),(71,'맛','고유어','','어떤 사물이나 현상, 일에 대하여 느끼는 기분.','똑같은 방송을 계속 보니 새로운 맛이 사라졌다.','음식 등을 혀에 댈 때 느껴지는 감각.','어머니가 해 준 음식은 맛이 좋다.','사물이나 현상에서 느껴지는 재미나 만족스러운 기분.','늙은 부부는 손자의 재롱을 보는 맛에 시간이 가는 줄을 모른다고 했다.',_binary ''),(72,'사실','한자어','事實','실제로 있었던 일이나 현재 일어나고 있는 일.','나는 그가 잡힌 사실을 확인하기 위해 경찰서에 전화를 걸었다.','겉으로 드러나지 않은 일을 솔직하게 말할 때 쓰는 말.','내가 그 일을 할 수 있다고 말했지만 사실은 잘할 자신이 없었다.','자신의 말이 옳다고 강조할 때 쓰는 말.','사실이지, 우리 어머니만큼 나를 사랑해 주시는 분은 세상에 없다.',_binary ''),(73,'환경','한자어','環境','생물이 살아가는 데 영향을 주는 자연 상태나 조건.','환경이 파괴되어 많은 생물들이 괴로워하고 있다.','인간에게 영향을 주는 주위의 조건이나 상황.','외국인들은 한국인과 문화적 환경이 다르기 때문에 문화적 차이를 존중해 주어야 한다.','인간이 생활하는 주위의 상태.','넉넉한 환경은 아니었지만 부모님은 내가 열심히 공부할 수 있도록 배려해 주셨다.',_binary ''),(74,'대목','고유어','','물건이 많이 팔리는 시기.','연말 대목을 맞아 백화점들의 판매 경쟁이 치열하다.','어떤 말이나 일에서 특별하게 관심을 가질 만한 부분.','네 주장은 석연치 않은 대목이 있어 믿기 힘들다.','이야기, 글, 노래 등의 한 부분.','승규는 책을 보며 중요한 대목에 줄을 쳐 가며 읽었다.',_binary ''),(75,'주의','한자어','注意','마음에 새겨 두고 조심함.','빗길에는 주의 운전을 하시길 바랍니다.','어떤 상태나 일에 관심을 집중함.','발표 전에는 사람들의 주의를 환기하는 작업이 필요하다.','경고나 충고의 뜻으로 알림.','선생님이 떠드는 아이들에게 조용히 하라는 주의를 준다.',_binary ''),(76,'모양','한자어','模樣','얼굴이나 몸 등을 보기 좋게 꾸미는 것.','그는 데이트를 하러 가는지 거울 앞에서 잔뜩 모양을 내고 있었다.','어떤 형편이나 상태, 또는 일이 돌아가는 상황.','일이 돌아가는 모양을 봐서는 오늘 저녁이면 일을 마칠 수 있을 것 같았다.','어떤 방식이나 방법.','그는 미친 사람 모양으로 혼자서 알 수 없는 말을 내뱉고 있었다.',_binary ''),(77,'종류','한자어','種類','어떤 기준에 따라 여러 가지로 나눈 갈래.','옷은 옷의 재질과 종류에 따라 다르게 보관하는 것이 좋다.','어떤 갈래에 속하는 것들.','추석 선물로 고기 종류가 좋을 것 같습니다.','사물의 갈래를 세는 단위.','식당에서는 대여섯 종류의 음료를 각 테이블 위에 준비해 두었다.',_binary ''),(78,'극','한자어','極','더 이상 그 상태를 유지할 수 없는 마지막 단계.','국민들의 경제적인 고통이 극에 이르자 정부는 고심 끝에 대책을 내놓았다.','전지에서 전류가 드나드는 양쪽 끝.','전지의 극을 잘못 끼우면 기계가 작동하질 않는다.','지구가 돌 때 중심이 되는 축이 지구의 구면과 만나는 점.','보통 적도에서 극으로 갈수록 기온은 떨어진다.',_binary ''),(79,'철','고유어','','일 년을 자연 현상에 따라 봄, 여름, 가을, 겨울로 나눈 것의 한 때.','나는 철이 이른 겨울에 두꺼운 옷을 샀다.','일 년 중에서 어떤 일을 하기에 가장 좋은 시기나 때.','철이 되자 농민들은 잘 익은 벼들을 거둬들였다.','알맞은 시기나 때.','나는 철이 지난 옷들을 잘 정리해서 옷장에 넣어 두었다.',_binary ''),(80,'호흡','한자어','呼吸','숨을 쉼. 또는 그 숨.','긴장한 민준이는 호흡을 가다듬고 나서 면접장으로 들어갔다.','함께 일을 하는 사람들과 조화를 이룸. 또는 그 조화.','두 선수는 오랫동안 훈련을 하여 누구보다 호흡이 좋았다.','생물이 산소를 흡수하고 이산화 탄소를 몸 밖으로 내보냄. 또는 그런 과정.','몸에 산소가 많이 필요하게 되면 심장이 빨리 뛰고 호흡도 빨라진다.',_binary ''),(81,'차례','한자어','次例','어떤 일을 하거나 어떤 일이 일어나는 순서.','바람이 불자 일렬로 세워져 있던 표지판이 하나씩 차례로 넘어졌다.','일을 하거나 일이 일어나는 순서에 따라 주어지는 기회.','승규는 우두커니 하늘만 보며 지루하게 자신의 차례가 되기만을 기다렸다.','일이 일어나는 횟수를 세는 단위.','은진이는 권민에게 두어 차례를 전화를 했지만 전화를 받지 않았다.',_binary ''),(82,'가시','고유어','','바늘처럼 뾰족하게 돋친 것.','도둑은 담을 넘다가 철조망 가시에 걸리고 말았다.','(비유적으로) 사람의 마음을 불편하게 하거나 공격하는 표현.','여자 친구의 가시가 박힌 말 한 마디에 나는 잠을 이루지 못했다.','살에 박힌 나무의 가늘고 뾰족한 부분.','목수는 장갑을 끼지 않고 목재를 다루다 손바닥에 가시가 박혔다.',_binary ''),(83,'중심','한자어','中心','어떤 것의 한가운데.','나는 도시 중심에서 조금 벗어나 한적하고 조용한 동네로 이사를 왔다.','중요하고 기본이 되는 부분.','김 사장은 기업의 이익보다는 먼저 인간이 중심이 되어야 한다고 늘 생각했다.','확고한 자신의 의견이나 생각.','그는 늘 마음에 중심이 잡혀 있지 않아 남의 말에 잘 휘둘린다.',_binary ''),(84,'봄','고유어','','네 계절 중의 하나로 겨울과 여름 사이의 계절.','백화점에서는 봄을 맞아 화사하고 밝은 봄옷을 팔고 있었다.','(비유적으로) 어렵고 힘든 시기가 지나가고 새롭게 오는 희망의 날들.','하는 일마다 실패를 하고 가족까지 잃은 그에게 어쩌면 봄은 없을지도 모르겠다.','(비유적으로) 인생에서 가장 좋은 시기.','승규는 그녀를 만나던 그 시절이 인생의 봄이었음을 뒤늦게야 깨달았다.',_binary ''),(85,'그릇','고유어','','음식을 담는 도구.','할머니께서는 냉장고에서 꺼낸 반찬 그릇을 식탁에 올리셨다.','(비유적으로) 어떤 일을 할 만한 능력이나 자질 또는 그것을 갖춘 사람.','할머니는 시험에 떨어진 나에게 큰 그릇일수록 늦게 성공하는 법이라고 위로해 주셨다.','그릇에 담긴 음식을 세는 단위.','속이 탄 나머지 냉수 한 그릇을 들이켰다.',_binary ''),(86,'당장','한자어','當場','어떤 일이 일어난 바로 그 자리. 또는 그 시간.','비만은 지금 당장은 괜찮더라도 조금만 있으면 큰 병이 될 수도 있다.','일이 일어난 바로 후의 시간.','대통령이 아파서 누워 있으면 당장에 여러 가지 소문이 난다.','이 자리에서 바로.','환자의 상태가 좋지 않으니 지금 당장 입원해야 합니다.',_binary ''),(87,'방금','한자어','方今','말하고 있는 시점보다 바로 조금 전.','방금까지 나랑 놀던 친구가 갑자기 사라졌다.','말하고 있는 시점과 같은 때.','선생님이 들어오신 방금에도 아이들은 계속 떠들었다.','말하고 있는 시점부터 바로 조금 후.','하늘은 방금이라도 비가 내릴 듯이 몹시 어두웠다.',_binary ''),(88,'걸음','고유어','','다리를 움직여 두 발을 번갈아 옮겨 놓는 동작.','지수는 전화를 받더니 급한 일이 생겼다며 갑자기 빠른 걸음으로 걷기 시작했다.','어떤 곳을 방문하는 것.','매일 우리 집에 놀러 오던 지수가 요즘은 걸음이 뜸하다.','(비유적으로) 행동이나 활동 또는 결정.','나는 다니던 회사를 그만두고 새로운 걸음을 준비하고 있다.',_binary ''),(89,'땅','고유어','','지구에서 물로 된 부분이 아닌 흙이나 돌로 된 부분.','가을이 되자 마른 잎들이 땅으로 떨어졌다.','권리를 누리거나 일을 하며 지낼 수 있는 환경이나 기반.','회의 결과에서 불이익을 받게 된 사람들은 강하게 저항함으로써 스스로 설 땅을 찾았다.','사회나 세상.','그 과학자는 과학을 이 땅에 뿌리내리기 위한 노력을 아끼지 않았다.',_binary ''),(90,'약','한자어','藥','병이나 상처 등을 낫게 하거나 예방하기 위하여 먹거나 바르거나 주사하는 물질.','약을 먹고 나니 신기하게도 기침이 멎었다.','(비유적으로) 몸이나 마음에 이롭거나 도움이 되는 것.','할아버지께서는 젊을 때의 고생은 인생의 약이라고 늘 말씀하셨다.','(비유적으로) 마약이나 술.','중독자들이 약에 취해 초점이 흐려진 눈으로 길거리를 다녔다.',_binary ''),(91,'고향','한자어','故鄕','태어나서 자란 곳.','실향민들은 가고 싶어도 갈 수 없는 고향을 그리워하며 눈물을 흘렸다.','잊을 수 없는 그립고 정든 곳.','정신적 고향은 그 민족이 만들어 낸 신화 속에 있다.','어떤 사물이나 사회적 현상이 처음 생기거나 시작된 곳.','잉글랜드는 축구의 고향으로, 그곳 사람들은 여전히 축구를 즐기고 사랑한다.',_binary ''),(92,'틈','고유어','','벌어져서 사이가 생긴 자리.','이런, 둑에 틈이 생겨서 물이 새잖아.','모여 있는 사람들의 속.','기차역 밖으로 쏟아져 나오는 사람들 틈에서 나는 그를 단번에 찾아냈다.','어떤 행동을 할 만한 기회.','그는 내게 대답할 틈도 주지 않고 계속해서 질문을 해댔다.',_binary ''),(93,'근간','한자어','根幹','식물의 뿌리와 줄기.','아버지는 앞마당에 있는 이십 년 된 나무의 근간을 자르면서 마음 아파하셨다.','어떤 것의 중심이 되는 부분.','몇 년 전부터 실업 문제로 국가 경쟁력의 근간이 흔들리고 있다.','한 사람이 태어난 집안의 내력.','우리 할아버지는 늘 사람은 자신의 근간을 알아야 한다면서 집안 이야기를 해 주셨다.',_binary ''),(94,'꼴','고유어','','사물의 모양.','신발장의 구두들은 모두 비슷한 꼴이어서 구별하기 힘들었다.','(낮잡아 이르는 말로) 사람의 겉모습.','종일 비를 맞고 다녔더니 옷과 머리가 흠뻑 젖어 꼴이 엉망이었다.','(낮잡아 이르는 말로) 어떤 형편이나 상황.','욕심이 많은 권민은 남이 잘되는 꼴을 못 봤다.',_binary ''),(95,'난리','한자어','亂離','전쟁이나 나라 안에서 일어난 싸움.','경찰들은 시위를 하며 벌어진 난리를 진압하느라 진땀을 뺐다.','홍수, 지진, 가뭄 등으로 질서가 어지러운 상태.','홍수로 이 지역이 모두 침수돼서 사람들이 잘 곳도 다 잃고 난리가 났어요.','(비유적으로) 놀라거나 흥분하여 소란스럽게 떠드는 일.','사람들은 한정된 할인 상품을 먼저 사려고 난리를 쳤다.',_binary ''),(96,'역사','한자어','歷史','인간 사회가 시간이 지남에 따라 흥하고 망하면서 변해 온 과정. 또는 그 기록.','나라를 바로 세우려면 지나온 민족의 역사를 바로 알아야 한다.','사물이나 사실, 자연 현상 등이 변해 온 과정.','문명의 오염이 되지 않은 남극은 지구의 역사를 그대로 간직하고 있다.','역사를 연구하는 학문.','자연 과학의 연구 방법이 역사 연구에 응용되고 있다.',_binary ''),(97,'새벽','고유어','','해가 뜰 즈음.','민준은 오늘도 언제나처럼 새벽을 알리는 닭 울음소리를 듣고 일어났다.','아주 이른 오전 시간을 가리키는 말.','민준은 친구들과 술을 마시고 새벽 한 시에 집에 들어왔다.','어떤 일의 출발이나 새 시대의 시작.','불의에 저항하는 젊은이들의 굳은 의지가 이 시대의 새벽을 알리고 있었다.',_binary ''),(98,'벼락','고유어','','하늘에서 큰 소리를 내며 번쩍이는 빛의 줄기가 내리치는 자연 현상.','벼락이 내리쳐 큰 나무가 두 쪽으로 갈라지며 쓰러졌다.','(비유적으로) 몹시 심한 야단이나 꾸지람.','선생님은 학생들이 잘못을 저지를 때마다 벼락을 내리며 엄한 모습을 보이셨다.','(비유적으로) 매우 빠름.','공격수는 벼락처럼 슛을 쏘아 상대 골문을 갈랐다.',_binary ''),(99,'시절','한자어','時節','특정한 시기나 때.','우리는 어린 시절 이야기를 밤이 새도록 나누었다.','어떤 일을 하기에 알맞은 시기나 때.','은퇴도 하고 여윳돈도 있으니 지금이 세계 일주를 하기에 딱 좋은 시절이다.','시대의 상황.','그는 시절을 잘 만나 세상에 널리 이름을 떨칠 수 있었다.',_binary ''),(100,'배경','한자어','背景','사건이나 사람 등과 관계있는 주변 상황.','남자가 훌륭한 사람이 될 수 있었던 배경에는 그에게 용기를 준 사람들이 있었다.','뒤에서 받쳐 주는 힘이나 조건.','남자는 사회 경험이 없을 뿐만 아니라 별다른 배경도 없어서 직장을 구하기가 쉽지 않았다.','공연에서, 무대 뒤에 꾸며 놓은 장치.','배경을 잘 만들어야 무대의 현장감을 살릴 수 있다.',_binary '');
/*!40000 ALTER TABLE `dogam` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04 15:33:58