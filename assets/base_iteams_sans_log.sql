-- --------------------------------------------------------
-- Hôte:                         iteam-s.mg
-- Version du serveur:           10.3.31-MariaDB-0ubuntu0.20.04.1 - Ubuntu 20.04
-- SE du serveur:                debian-linux-gnu
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour ITEAMS
DROP DATABASE IF EXISTS `ITEAMS`;
CREATE DATABASE IF NOT EXISTS `ITEAMS` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ITEAMS`;

-- Listage de la structure de la table ITEAMS. membre
CREATE TABLE IF NOT EXISTS `membre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `prenom_usuel` varchar(50) DEFAULT NULL,
  `user_github` varchar(50) DEFAULT NULL,
  `user_github_pic` varchar(255) DEFAULT NULL,
  `tel1` varchar(50) DEFAULT NULL,
  `tel2` varchar(50) DEFAULT NULL,
  `mail` varchar(50) NOT NULL,
  `date_d_adhesion` date NOT NULL DEFAULT curdate(),
  `date_exclusion` date DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `actif` varchar(50) DEFAULT NULL,
  `cv` text DEFAULT NULL,
  `adresse` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fonction` text DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `pdc` varchar(255) DEFAULT './libs/img/banner.png',
  `dark` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `prenom_usuel` (`prenom_usuel`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- Listage des données de la table ITEAMS.membre : ~37 rows (environ)
/*!40000 ALTER TABLE `membre` DISABLE KEYS */;
INSERT INTO `membre` (`id`, `nom`, `prenom`, `prenom_usuel`, `user_github`, `user_github_pic`, `tel1`, `tel2`, `mail`, `date_d_adhesion`, `date_exclusion`, `facebook`, `linkedin`, `actif`, `cv`, `adresse`, `description`, `fonction`, `password`, `pdc`, `dark`) VALUES
	(1, 'BAKARY', 'Gaetan Jonathan', 'Gaetan', 'gaetan1903', 'https://avatars0.githubusercontent.com/u/43904633', '+261346178078', '+261325398496', 'gaetan.s118@gmail.com', '2020-11-21', NULL, '/gaetan1903', '/gaetan.j', '1', '../libs/cv/gaetan.pdf', 'Ambatoroka, Antananarivo 101', "Étudiant en L3 à l'ESTI, Alternant à Comdata Madagascar, soutenu par le programme SESAME, passionné par le fabuleux monde de la technologie de l'Information, voulant contribuer aux développements numériques de Madagascar.", 'Etudiant IT, Developpeur, SysAdmin, Lead Dev à iTeam-$', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', 'https://images.unsplash.com/photo-1536859355448-76f92ebdc33d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', 1),
	(2, 'BOTORAVONY', 'Arlème Johnson', 'Arlème', 'rootkit7628', 'https://avatars0.githubusercontent.com/u/60097202', '+261349144933', NULL, 'arleme.dev7@gmail.com', '2020-11-21', NULL, '/arleme.scheck', '/arlème-johnson-885247177', '1', '../libs/cv/arleme.pdf', 'Amboditsiry, Antananarivo 101', "Etutiant en L2 à l'ESTI, Alternant | Developer Odoo chez eTech-consulting. </br>Un passionné d'informatique aspirant à devenir un DevOps.</br>Jeune homme de 20 ans accompagné par le programme SESAME", 'Etudiant en IT, DevOps, Developpeur principale à iTeam-$', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', 'https://iteam-s.github.io/assets/img/bg-header.jpg', 1),
	(3, 'MASY', 'Charla Rosalie', 'Charla', 'Charla19', 'https://avatars3.githubusercontent.com/u/74827706', '+261345207018', '+261324021926', 'charlap20.aps2a@gmail.com', '2020-11-21', NULL, '/Charla.Masy.R.1', NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(4, 'RAFANOMEZANA', 'Herimamy Hasintso', 'Hasintso', 'hasintso2071', 'https://avatars0.githubusercontent.com/u/74848587', '+26134842395', '+261328921862', 'hasintsop20.aps2b@gmail.com', '2020-11-21', NULL, '/hasintso.fanomezana', NULL, '0\r\n0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(5, 'HAJATIANA', 'Sitraka', 'Haja', 'Jayah001', 'https://avatars2.githubusercontent.com/u/74564160', '+261343191534', NULL, 'hajap20.aps2a@gmail.com', '2020-11-21', NULL, '/ja.yah.357', NULL, '1', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(6, 'LIANTSOA', 'Santatriniaina Melchia', 'Melchia', 'mel1742', 'https://avatars0.githubusercontent.com/u/74960132', '+261325807057', '+261345616018', 'melchiap20.aps2b@gmail.com', '2020-11-21', NULL, '/liantsoa.Mel', NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(7, 'Randriamanantena Grégoire', 'DOMINICK', 'Dominick', 'c3k4ah', 'https://avatars2.githubusercontent.com/u/73609825', '+261344459916', NULL, 'dominickp20.aps1b@gmail.com', '2020-11-21', NULL, '/Dominick.Cekah', '/randriamanantena-dominick-2238351ab/', '1', 'https://drive.google.com/file/d/17oddOHdIOyyDIb9j5gihpqv7-mk5wDG-/view?usp=sharing', 'Tanjombato, Antananarivo 101', "Originaire de Mahanoro. Je suis passionné par l'informatique et développement. Quelqu'un de dynamique et toujours prêt à apprendre.", 'Etudiant en informatique,Développeur à ITeam-s', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', 'https://drive.google.com/file/d/1GD-0thjcwugljVirX-HV0BcVr6QAR2jh/view', 1),
	(8, 'DIDIER', 'Nazirah Milann', 'Nazirah', 'naziradidier', 'https://avatars1.githubusercontent.com/u/74833519', '+261348146430', '+261324828979', 'nazirap20.aps1b@gmail.com', '2020-11-21', NULL, '/profile.php?id=100050072618194', NULL, '1', NULL, 'Ankadifotsy BEFELANTANANA', 'Je viens de la region DIANA. Etudiante à ESTI, je suis la filière intégration et développement. Je suis intérésé par les nouvelles technologies.', 'Etudiante en intégration et développement, développeuse front end et base de donnée à iTeam-$', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(9, 'MIHAINGOHERILANTO', 'Manambintsoa', 'Ntsoa', 'ntsoa2112', 'https://avatars2.githubusercontent.com/u/49555661', '+261346664788', 'null', 'ntsoa.s118@gmail.com', '2021-01-13', NULL, '/manambintsoa.mihaingoherilanto.1', '/manambintsoa-mihaingoherilanto-69ab63202/', '1', '../libs/cv/Ntsoa_iTeams-s_1636033071308.pdf', 'VF100 Ankorahotra', "Issu du programme d'études SESAME , développeur web et administrateur base de données, j'étudie actuellement à l’École Supérieure des Technologies de l'Information en L3. </br> Soif d'apprendre et aime également partager les connaissances acquises. </br> Personnalité: persévérant, respectueux, fiable, curieux", 'Développeur full stack js et administrateur base de données', '$2b$10$DAcFkpAJirAwX5HNygFbyubA8OTJslD1D7fCINIXp3gqlJ7KxmvuO', './libs/img/banner.png', 0),
	(10, 'RASENDRANIRINA', 'Manankoraisina Landry', 'Landry', 'Landris18', 'https://avatars3.githubusercontent.com/u/47665507', '+261329903072', '+261347416068', 'landry.apsa@gmail.com ', '2020-11-21', NULL, '/Landris18', NULL, '1', NULL, 'Ambatoroka, Antananarivo 101', "Jeune étudiant en informatique soutenu par le programme SESAME, en recherche d'opportunité, voulant intégrer le domaineet y apporter des innovations", 'Développeur Angular/Django, DevOps, Développeur principal à iTeam-$', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', 'https://iteam-s.github.io/assets/img/bg-header.jpg', 0),
	(11, 'LALANIAINA ', 'Jonquille Sonïa', 'Sonïa', 'Jonquille20', 'https://avatars0.githubusercontent.com/u/74913797', '+261325807057', '+261345616018', 'soniap20.aps2b@gmail.com ', '2020-11-22', NULL, '/profile.php?id=100007363098471', NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(12, 'RATODISOA', 'Emmanuel Xavier', 'Xavier', 'xavier-001', 'https://avatars1.githubusercontent.com/u/74898540', '+261349072588', NULL, 'xavierp20.aps1b@gmail.com', '2020-11-23', NULL, '/ratodisoa', NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(13, 'ANONA', 'Tréal Darcia', 'Darcia', 'Darcia2125', 'https://avatars3.githubusercontent.com/u/64003085', '+261349688133', NULL, 'darciap19.aps2a@gmail.com', '2020-11-24', NULL, '/trealdarcia.anona', '/tréal-darcia-anona-4396a1182/', '1', NULL, 'Ankazomanga, Antananarivo 101', "Etudiante en L2 à l'ESTI et membre du programme SESAME.</br> Sociable, Sérieuse et en quête d'opportunité", 'Etudiante en IT, Développeur à ITeam-s', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(14, 'MALALANIRINA', 'Sarino', 'Sarino', 'Sarino22Y', 'https://avatars2.githubusercontent.com/u/74770148', '+261343891815	', NULL, 'sarino.malalanirina@esti.mg', '2020-11-24', NULL, '/irison.radriamampionona', NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(15, 'RAKOTOARINAIVO ', 'Diamondra Fandresena Fanomezantsoa', 'Dama', 'amada10', 'https://avatars3.githubusercontent.com/u/67158208', '+261345648425', NULL, 'diamondrap20.aps1b@gmail.com', '2020-11-21', NULL, '/dama.rktvo', '', '1', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(16, 'KETSASON RAZAFIMALALANIRINA	 ', 'Jerry Princia', 'Princia', 'jerryprincia0103', 'https://avatars3.githubusercontent.com/u/75218166', '+261347519067', '+26132809162', 'jerryprinciaketsason@gmail.com ', '2020-11-24', NULL, '/princia.durhane', NULL, '1', NULL, 'Ambanidia ,  Antananarivo 101', "Etudiante en droit  public L3 à l'UCM, je suis passionnée par le monde juridique et interessée par la photographie.", 'Etudiante en droit public, Responsable juridique iTeam-$', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(17, 'RAJAOANARIVONY', 'Rivo Lalaina', 'Rivo', 'rivo2302', 'https://avatars2.githubusercontent.com/u/59861055', '+261 34 09 211 07', NULL, 'rivo.rajaonarivony@esti.mg', '2020-11-24', NULL, '/rivolalaina.rajaonarivony', '/rajaonarivony', '1', 'https://drive.google.com/file/d/166wBW66XatEU23QXrfiIcpTr9cSazW-p/view?usp=sharing', 'Ankorahotra,  Antananarivo 101', "Grâce au soutien de programme SESAME, je suis actuellement étudiant à l'ESTI en intégration et développement. Certain que demain l'informatique sera incontournable, je m’intéresse à tout ce qui est nouvelle technologie, ainsi contribuer au développement de mon pays.", 'Etudiant en  IT , Developpeur Python , Developpeur Odoo ,19 Ans', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', 'https://iteam-s.github.io/assets/img/bg-header.jpg', 1),
	(18, 'RAJERISON', 'Fabien Julio', 'Fabien', 'fabienjulio', 'https://avatars3.githubusercontent.com/u/66438909', '+261347581123', '+261345256857', 'fabienjulio5@gmail.com', '2020-11-25', NULL, '/fabienjulio.riley', NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(19, 'RAVOLOLONIRINA ', 'Josée Angela', 'Angela', 'joseeange04', 'https://avatars3.githubusercontent.com/u/72744818', '+261348154191	', '+261324042310', 'ravololonirinap19.aps1a@gmail.com', '2020-11-25', NULL, '/profile.php?id=100007167015806', '/angelaravololonirina', '1', NULL, 'Ankazomanga, Antananarivo 101', "Tout en étant passionnée par la technologie et dotée d'une grande curiosité, je me présente en tant que solution pour l'entreprise.</b> Actuellement, en L2 à l'ESTI avec le parcours de développement et intégration, je suis prête à relever le défi.", 'Etudiante en IT, Developpeuse ITeam-s', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(20, 'HERISON', 'Tonny Jacklin', 'Tonny', 'tonny-herison', 'https://avatars1.githubusercontent.com/u/47519091', '+261347833078', NULL, 'hartonnyjack@gmail.com', '2020-11-24', NULL, '/tonyjack.herison', '(NULL)', '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(21, 'TSIAZONAVO', 'Maminkasina Arielle', 'Arielle', 'arielle-i15', 'https://avatars1.githubusercontent.com/u/75167731', '+261347998851', NULL, 'ariellep20.aps1a@gmail.com ', '2020-11-21', NULL, '/maminkasn.iata', NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(22, 'ANDRIAMASY', 'Miadantsoa Salema', 'Salema', 'salema02', 'https://avatars3.githubusercontent.com/u/72653798', '+261349962221', NULL, 'salemap19aps1b@gmail.com', '2020-11-25', NULL, '/miadantsoasalema.andriamasy', '/andriamasy-miadantsoa-salema-0b8b2a182/', '1', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(23, 'RAJAONARIVELO', 'Joyo Richard', 'Joyo', 'JoyoRichard007', 'https://avatars1.githubusercontent.com/u/75166100', '+261325679345', NULL, 'joyop20.aps2b@gmail.com', '2020-11-21', '2021-01-25', '/joyorichard.rajaonarivelo', NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(25, 'RAVELONARIVO', 'Lahatra Anjara', 'Lahatra', 'lahatra3', 'https://avatars.githubusercontent.com/u/89080737', '+261349570401', NULL, 'lahatrap20.aps2a@gmail.com', '2020-11-21', NULL, '/lahatra.ravelonarivo.1', '/lahatra-anjara-ravelonarivo-a710b2203/', '1', NULL, 'Lot IVC 17 bis Ambodivoanjo Ankaraobato', NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 1),
	(26, 'ANDRIANANTENAINA', 'Rojo Valisoa', 'Rojo', 'RojoValisoa', 'https://avatars0.githubusercontent.com/u/36554948', '+261342873991', NULL, 'rojo.valisoa.andrianantenaina@esti.mg', '2020-12-02', NULL, '/rojo.valisoa.6969', NULL, '1', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(27, 'RAKOTOARISOA ', 'Louis Sergio', 'Sergio', 'SergioDev22', 'https://avatars.githubusercontent.com/u/85986819?s=400&u=497a866af1fce707fd03c47e4c42471c683e3d63&v=4', '+261345789245', '+261322539004', 'sergiop20.aps1b@gmail.com', '2021-01-09', NULL, '/sergio.kenns', '/louis-sergio-rakotoarisoa-484a661a8/', '1', 'https://drive.google.com/file/d/1VYLIxjDgCZpXs09hBermZqdRygRESULv/view?usp=sharing', 'LOT A4IITerCC Amboditsiry Antananarivo 101', "Grâce au soutien du programme SESAME, je suis actuellement  étudiant en L1 de Licence à l'ESTI Antanimena. Un jeune passionné du monde technologique et numérique voulant développer ce monde ici  à MADAGASCAR  pour qu'il puisse bénéficier la révolution moderne qu'ils apportent", 'Etudiant en IT, Developpeur à iTeam-$', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', 'https://iteam-s.github.io/assets/img/bg-header.jpg', 1),
	(28, 'RAODISY ', 'Bertilo', 'Bertilo', 'KronosSBK', 'https://avatars2.githubusercontent.com/u/50701754', '+261345614497', '+261328893425', 'rds.bertilo@gmail.com', '2020-12-20', NULL, '/bertilo.rds', NULL, '1', NULL, 'Mahazoarivo Ambohitsoa, Antananarivo 101', "Actuellement en 2è année de Licence à l'ISCAM suivant le parcours Marketing & Comunication et passionné par le Multimédia ", 'Etudiant en Marketing & Communication, Responsable Communication Digital', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', 'https://images.pexels.com/photos/669996/pexels-photo-669996.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
	(29, 'MAEVASOA', 'Fabiola', 'Fabiola', 'Fmaevasoa', 'https://avatars3.githubusercontent.com/u/77198599', '+261349959652', '+261325781200', 'Fabiolamaevasoa@gmail.com', '2021-01-10', NULL, '/maeva.sue', NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(30, 'ANDRIMBOLOLONIRINA ', 'Dewa Miarana', 'Miarana', 'miadewa', 'https://avatars0.githubusercontent.com/u/76114659', '+261343680585', NULL, 'miarana.s217@gmail.com', '2021-01-10', NULL, '/miarana.dewa', NULL, '1', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(31, 'ANDRIANINA FITIA', 'Tovonirina Tsiory', 'Tsiory', 'TsioryFitia-boop', 'https://avatars0.githubusercontent.com/u/77095510', '+261340397390', '+261322747127', 'tsioryfitia.apl218@gmail.com', '2021-01-10', NULL, '/tsiory.fitia.547', NULL, '1', NULL, 'Ambohimirary Antananarivo, 101', "Etudiant en 3 ème année à l'IST-T dans la filière Management de Projet et Création d'Entreprises, le monde des affaires m'a toujours passionné. Cette passion combinée à mon caractère ambitieux me motivent à relever chaque défi dont je fais face et à persévérer pour atteindre mes objectifs.\r\n", 'Etudiant en management, Consultant administratif à iTeam-$', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(32, 'NIRIKOMAMY ', 'Bruollin', 'Bruollin', 'Bruollin', 'https://avatars2.githubusercontent.com/u/38380899', '+261342102081', NULL, 'bruollin.s118@gmail.coùm', '2021-01-14', NULL, '/nirikomamy.bruollin', NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(33, 'SOLOFOANDRAINDRAINA', 'Bienvenue Nathalie', 'Nathalie', 'nathalieandrandraina', 'https://avatars.githubusercontent.com/u/37831400', '+261344504209', NULL, 'nathalie.aps.p2@gmail.com', '2021-01-25', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(34, 'RABE', 'Marcellin', 'Marcellin', 'marcellinp20', 'https://avatars.githubusercontent.com/u/75126543', '+261349394698', NULL, 'marcellinp20.aps1a@gmail.com', '2021-01-25', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(35, 'TOMBOZAFY', 'Ianel', 'Ianel', 'Ianel', 'https://avatars.githubusercontent.com/u/48760301', '+261328178421', '+261348568513', 'ianell.s118@gmail.com', '2021-05-08', '2021-10-14', '/ianel.tombozafy', '/ianel.tombozafy', '0', NULL, 'Tanambao Ambalavato, Mahajanga 401', "Suivant le parcours génie informatique au niveau de l'ISSTM, je me touve actuellement en 2eme année de Licence. Mon ambition est de devenir développeur front-end et de créer des produits utiles et utilisables par le grand public.", 'Etudiant en IT, Développeur Front End', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(36, 'Randriamanantenana', 'Tafitasoa Fabrice', 'Fabrice', 'Tafita1339', 'https://avatars.githubusercontent.com/u/83877497', '+261346668165', NULL, 'fabricep19.aps1a@gmail.com', '2021-05-11', NULL, '/tafitasoafabrice.randriamanantena.98', NULL, '1', NULL, NULL, NULL, NULL, '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 0),
	(37, 'RAMAMIHARIVELO', 'Marihasina', 'Hasina', 'hasina821', 'https://avatars.githubusercontent.com/u/80751503', '+261342324391', NULL, 'rmnarry.mr@gmail.com', '2021-06-07', NULL, '/hasinarak.benaden', '/marihasina-ramamiharivelo-529344181/', '1', NULL, 'Sohatsihadino Fianarantsoa, 301', "étudiant L1 à l’ENI Fianarantsoa, un jeune motivé, dévoué et curieux surtout dans tout ce qui est technologie. Je suis prêt à relever de grands défis et prêt à tout faire pour assouvir ma convoitise de devenir un grand développeur.", 'Etudiant en IT,Développeur à ITeam-s', '722de69f5a815d3cbb6c0d252b753c9727534c0add84b8a63b59ea15cefb0d79', './libs/img/banner.png', 1),
	(38, 'iTeam-$', 'iT', 'iTeam-$', NULL, NULL, NULL, NULL, 'iteams@gmail.com', '2021-11-02', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '$2b$10$DAcFkpAJirAwX5HNygFbyubA8OTJslD1D7fCINIXp3gqlJ7KxmvuO', './libs/img/banner.png', 0);
/*!40000 ALTER TABLE `membre` ENABLE KEYS */;


-- Listage de la structure de la table ITEAMS. categorie_competence
DROP TABLE IF EXISTS `categorie_competence`;
CREATE TABLE IF NOT EXISTS `categorie_competence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(150) NOT NULL,
  `icone` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Listage des données de la table ITEAMS.categorie_competence : ~6 rows (environ)
/*!40000 ALTER TABLE `categorie_competence` DISABLE KEYS */;
INSERT INTO `categorie_competence` (`id`, `categorie`, `icone`) VALUES
	(1, 'Mobile', 'et-mobile'),
	(2, 'Laptop', 'et-laptop'),
	(3, 'Stylo', 'et-pencil'),
	(4, 'Layers', 'et-layers'),
	(5, 'shield', 'et-shield'),
	(6, 'parametre', 'et-gears');
/*!40000 ALTER TABLE `categorie_competence` ENABLE KEYS */;

-- Listage de la structure de la table ITEAMS. competences
CREATE TABLE IF NOT EXISTS `competences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `liste` text NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL,
  `ordre` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_competences_membre` (`id_membre`),
  KEY `FK_competences_categorie_competence` (`id_categorie`),
  CONSTRAINT `FK_competences_categorie_competence` FOREIGN KEY (`id_categorie`) REFERENCES `categorie_competence` (`id`),
  CONSTRAINT `FK_competences_membre` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COMMENT='•Langage informatique: C, JavaScript, Python, PHP\r\n•Framework et technologies: React.js, Jquery, Redux\r\n•Bases de données: MySQL\r\n•OS: Ubuntu-Manjaro-Archlunix-lunixlite /Windows.\r\n•Autres Outils maîtrisés: VMware, Virtual Box, GNS3, Git.';

-- Listage des données de la table ITEAMS.competences : ~72 rows (environ)
/*!40000 ALTER TABLE `competences` DISABLE KEYS */;
INSERT INTO `competences` (`id`, `nom`, `liste`, `id_categorie`, `id_membre`, `ordre`) VALUES
	(1, 'Langages informatiques ', 'PYTHON, JS, PHP, BASH, DART', 3, 1, 0),
	(2, 'Outils Technologique', 'Git, Docker, Ansible, Nagios', 2, 1, 0),
	(3, 'Administration Serveurs', 'Debian, Ubuntu, CentOS', 6, 1, 0),
	(4, 'Frameworks', 'Flutter, VueJS, JQuery, ElectronJS, Django, Selenium', 1, 1, 0),
	(5, 'Base de Données', 'MySQL, SQLite, Postgres, Oracle, SQLServer', 4, 1, 0),
	(6, 'Interpersonelles', 'Adaptatif, Sens du Collectif, Curieux, Persévérant', 5, 1, 0),
	(7, 'Langages Informatiques', 'PHP, CSS, HTML, DART, PYTHON', 3, 7, 0),
	(8, 'Frameworks', 'Flutter, Bootstrap', 1, 7, 0),
	(9, 'Gestion de Base de Données', 'MySQL, Oracle', 4, 7, 0),
	(10, 'Interpersonelles', 'Curieux, Créatif, Innovant, Sérieux, Organisé', 5, 7, 0),
	(11, 'Linguistique', 'Malagasy, Français, Anglais', 3, 16, 0),
	(12, 'Bureautique', 'Word, Excel, Powerpoint', 2, 16, 0),
	(13, 'Interpersonnelles', "Créative,  Sérieuse, Curieuse, Sens de l'écoute", 5, 16, 0),
	(14, 'Framework', 'bootstrap', 1, 8, 0),
	(16, 'Outils technologique', 'Git', 2, 8, 0),
	(17, 'Langages informatiques', 'HTML, CSS, PHP, SQL, JAVASCRIPT', 3, 8, 0),
	(18, 'Base de données', 'MySql, oracle', 4, 8, 0),
	(19, 'Interpersonelles', 'adaptif, curieuse, débrouilleuse, active', 5, 8, 0),
	(20, 'Linguistique', 'Français, Anglais, Malagasy', 3, 8, 0),
	(21, 'Bureautique', 'Word, Excel, Powerpoint', 2, 8, 0),
	(22, 'Languages informatiques', 'Python, C , JavaScript, PHP, Bash, Dart', 3, 2, 0),
	(23, 'Frameworks', 'ODOO, KivyMD, Flask, React Native, Selenium, VueJS, Flutter', 1, 2, 0),
	(24, 'Outils technologiques', 'Docker, Git, SSH, VirtualBox, Filezilla', 2, 2, 0),
	(25, 'Bases de données ', 'MySQL, MongoDB</br>HeidiSQL, Phpmyadmin', 4, 2, 0),
	(26, 'Bureautiques', 'Word, Excel, PowerPoint, Photoshop', 5, 2, 0),
	(27, 'OS utilisés', 'Win10 / Linux Lite - Manjaro - Fedora', 6, 2, 0),
	(28, 'Bureautique', 'Word, Excel, Powerpoint', 2, 13, 0),
	(29, 'Base de données', 'MySQL, PostgreMySQL', 4, 13, 0),
	(30, 'Langages informatiques', 'HTML, CSS, PHP, SQL, JAVASCRIPT, PYTHON, C', 3, 13, 0),
	(31, 'Frameworks', 'Bootstrap, Laravel, Angular, VueJS', 1, 13, 0),
	(32, 'Outils technologique', 'Git, Filezilla', 2, 13, 0),
	(33, 'Interpersonelles', 'Sociable, Curieuse, Sérieuse, Adaptif', 5, 13, 0),
	(34, 'Linguistique', 'Malagasy, Français, Anglais', 3, 28, 0),
	(35, 'Bureautique', 'Word, Excel, Powerpoint', 2, 28, 0),
	(36, 'Interpersonelles', 'Curieux, Créatif, Innovant, Sérieux, Organisé', 5, 28, 0),
	(37, 'Outils Technologique', 'Photoshop, Vegas Pro, Canva, InDesign, Ilustrator', 2, 28, 0),
	(38, 'Langages informatiques', 'PHP, Python, SQL, JavaSript, HTML, CSS', 3, 19, 0),
	(39, 'Framework', 'Laravel, Symphony, Django, VueJS, Flask', 6, 19, 0),
	(40, 'Outils technologiques', 'Git, Filezilla, Jmerise', 2, 19, 0),
	(41, 'Base de donnée', 'MySQL, SQLite, Postgres, MongoDB', 4, 19, 0),
	(42, 'Bureautique', 'Word, Excel, Powerpoint, Photoshop', 2, 19, 0),
	(43, 'Linguistiques', 'Anglais, Français, Malagasy, Espagnol', 3, 19, 0),
	(44, 'Interpersonnelle', "Curieuse, Autodidacte, Sociable, Esprit d'adaptation", 5, 19, 0),
	(45, 'Interpersonnelles', 'sociable, curieux,  créatif, réactif,  sens du collectif', 5, 17, 0),
	(46, 'Langage informatique', 'Python, Javascript, PHP,  Dart ,', 2, 17, 0),
	(47, 'Frameworks', ' Selenium, NodeJs, ExpressJs, Flask ,Jquery ,ElectronJs', 3, 17, 0),
	(48, 'Base de données', 'Postgresql , Mysql, Oracle , MongoDB', 4, 17, 0),
	(49, 'ERP', 'Odoo', 5, 17, 0),
	(50, 'Outils téchnologique', 'Git, Docker ,Jmerise, Filezilla,   HeidiSQL,  Gimp ,Photoshop', 6, 17, 0),
	(52, 'Langage informatique', 'JS, PHP, PYTHON, JAVA, C++', 2, 9, 0),
	(53, 'Framework', 'Sails Js, Laravel, Symfony', 4, 9, 0),
	(54, 'Administration base de données', 'Mongodb, MySQL, Postgresql, SQLite', 5, 9, 0),
	(55, 'Développement Node.js', 'Express', 3, 9, 0),
	(56, "Système d'exploitation", 'Linux, Windows', 6, 9, 0),
	(57, 'Accés à distance', 'SSH', 1, 9, 0),
	(58, 'Langages Informatiques', 'HTML5, CSS3, JS, PHP', 3, 35, 0),
	(59, 'Frameworks', 'ReactJS, Bootstrap', 4, 35, 0),
	(60, 'OS', 'Windows 10, Ubuntu 20.04', 6, 35, 0),
	(62, 'Linguistique', 'Malagasy, Français, Anglais', 3, 31, 0),
	(63, 'Bureautique', 'Word, Excel, Powerpoint, Access', 2, 31, 0),
	(64, 'Interpersonelles', 'Ambitieux, Cultivé, Curieux, Sociable, Autoditacte', 5, 31, 0),
	(65, 'Langages informatiques', ' C, JavaScript, Python, PHP', 2, 37, 0),
	(66, 'Framework et technologies', 'React.js, Jquery, vue.js', 3, 37, 0),
	(67, 'Bases de données', ' MySQL,MongoDB', 4, 37, 0),
	(68, 'OS', ' Ubuntu-Manjaro-Arch Linux-Linuxlite /Windows', 6, 37, 0),
	(69, 'Autres Outils maîtrisés', 'VMware, Virtual Box, GNS3, Git', 5, 37, 0),
	(70, 'Langages informatiques', 'PYTHON, PHP,CSS,HTML', 3, 27, 0),
	(71, 'Outils Technologiques', 'Git', 2, 27, 0),
	(72, 'Framworks', 'Flask', 1, 27, 0),
	(73, 'Bases de données ', 'MySQL', 4, 27, 0),
	(74, 'Interpersonelles', "Sociable, Adaptatif, Exicitant d'où provoque la curiosité, Organisé, Serieux", 5, 27, 0),
	(75, 'Linguistique', 'Malagasy, Français, Anglais', 3, 27, 0);
/*!40000 ALTER TABLE `competences` ENABLE KEYS */;

-- Listage de la structure de la table ITEAMS. distinctions
CREATE TABLE IF NOT EXISTS `distinctions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `organisateur` text DEFAULT NULL,
  `annee` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_membre` int(10) NOT NULL,
  `ordre` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_distinction_membre` (`id_membre`),
  CONSTRAINT `FK_distinction_membre` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Listage des données de la table ITEAMS.distinctions : ~10 rows (environ)
/*!40000 ALTER TABLE `distinctions` DISABLE KEYS */;
INSERT INTO `distinctions` (`id`, `organisateur`, `annee`, `type`, `description`, `id_membre`, `ordre`) VALUES
	(1, 'Malagasy Youth</br>Biodiversity Network', 'sept. 2021', 'Hackathon: 1ère place 🥇', 'concours de création bibliothèque numérique sur la gouvernance communautaire des ressources naturelles et le Fokonolona à Madagascar.', 1, 3),
	(2, 'Orange Madagascar', 'sept. 2021', 'POESAM 2021: 2ème place 🥈', 'Il récompense chaque année les meilleurs projets technologiques à impact positif en Afrique et au Moyen-Orient', 1, 4),
	(3, 'Hackoragna', 'avr. 2020', 'Hackathon: 3ème place 🥉', 'Hackathon dans le but d\'apporter une solution digital durant la période Covid-19 à Madagascar', 1, 2),
	(4, 'ESTI, ITESCIA Paris', 'mai. 2019', 'Piscine Python: 1ère place 🥇', 'Une piscine permettant aux étudiants de l\'ESTI de présenter un projet dans le digital qui est réalisé en 3j.\r\ncette tradition que l\'ESTI a hérité de l\'ITESCIA Paris durant laquelle les étudiants ont exactement 3 jours pour présenter un projet et simuler la vente du projet devant des jurys.', 1, 1),
	(5, 'Malagasy Youth</br>Biodiversity Network', 'sept. 2021', 'Hackathon: 1er place', 'Application Multiplatforme avec le framework Flutter durant</br> le Hackathon 2021 organiser par Malagasy YBN', 7, 0),
	(6, 'ESTI, ITESCIA Paris', 'juin. 2021', 'Piscine d\'integration: 1er place', 'Création d\'un logiciel Photobooth avec python</br> ,tkinter durant la piscine d’intégration ', 7, 0),
	(7, 'Malagasy Youth</br>Biodiversity Network', 'sept. 2021', 'Hackathon: 1ère place 🥇', 'concours de création bibliothèque numérique sur la gouvernance communautaire des ressources naturelles et le Fokonolona à Madagascar.', 2, 0),
	(8, 'Google Developers Group', '2021', 'DevFest 2021: 3ème place 🥇', 'Marathon de projet technologique sur le thème de e-gouvernance, ou gouvernance digitale', 1, 5),
	(9, 'GDG Antananarivo', 'oct, 2021', 'Hackathon Devfest : 3ème place', 'Réalisation d\'un projet de gestion de permis de construction, du public au responsable administratif, tout en une seule plateforme et en un seul projet. </br>Obtention d\'une incubation chez NextA', 7, 0),
	(10, 'GDG Antananarivo', 'oct, 2021', 'Hackathon Devfest : 3ème place', 'Réalisation d\'un projet de gestion de permis de construction, du public au responsable administratif, tout en une seule plateforme et en un seul projet. </br>Obtention d\'une incubation chez NextA', 2, 1);
/*!40000 ALTER TABLE `distinctions` ENABLE KEYS */;

-- Listage de la structure de la table ITEAMS. estime
CREATE TABLE IF NOT EXISTS `estime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motif` varchar(512) DEFAULT NULL,
  `point` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_membre` (`id_membre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Listage des données de la table ITEAMS.estime : ~0 rows (environ)
/*!40000 ALTER TABLE `estime` DISABLE KEYS */;
/*!40000 ALTER TABLE `estime` ENABLE KEYS */;

-- Listage de la structure de la table ITEAMS. experiences
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text DEFAULT NULL,
  `annee` varchar(50) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_membre` int(11) NOT NULL,
  `ordre` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_membre` (`id_membre`),
  CONSTRAINT `FK_experiences_membre` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4;

-- Listage des données de la table ITEAMS.experiences : ~52 rows (environ)
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` (`id`, `nom`, `annee`, `type`, `description`, `id_membre`, `ordre`) VALUES
	(1, 'iTeam-$', '2020 - ...', 'Fondateur & Leader (Decembre 2020 - ...)', "- Creation de l'association (Administratif, Structure, Organisation, ...)</br>- Lead Developpeur</br>- Gestion des projets</br>- Gestion des equipes </br>-Réalisation des projets numériques.", 1, 0),
	(2, 'Comdata', '2020 - ...', 'Alternant Exploitation (Mai 2020 - ...)', "- Traitements  tickets clients sur les outis en production </br>- Création des outils d'automatisation</br>- Optimisations des serveurs de production ", 1, 0),
	(3, 'Kayllah Bot Search ', '2020 - 2021', 'Admin Bot Messenger (Mai 2020 - Août 2021 )', '- Conception & Developpement</br>-Administration Serveur de production', 1, 0),
	(4, 'Bailti', '2020 - 2021', 'Developpeur (Novembre 2020 - Mars 2021)', "- Creation d'outils d'Automatisation. </br> - Creation d'outils de tests fonctionnels ", 1, 0),
	(6, 'Freelancer', '2019-2021', 'Developpeur', "- Application Mobile Gestion de Magasin </br>- Application Desktop : Fiche Metier, Gestion de Stock, Taches </br>- Application Web d'exposition ", 1, 0),
	(7, 'IBONIA', '2020', 'Stagiaire', "-Stage d’observation en entreprise</br>-Assimilation du quotidien du métier de développeur.", 7, 0),
	(8, 'BOCASAY', '2020', 'Stagiaire', "Stage de découverte d’une vie en entreprise et façon de\r\ntravailler-", 7, 0),
	(9, 'ESTI', '2019', 'Projets Scolaires', "- Serveur d'Appel VoIp avec IVR lié à une base de données<br>\r\n- Serveur Samba administré via Web <br>\r\n- Application Multi-Platforme Gestion de Foyer <br>\r\n- Site Web de vente de jeux en ligne <br>\r\n- Application connectée à une plante avec systèmes de notifications", 1, 0),
	(10, 'Passion 4 Humanity', '2018', "Stage d'imprégnation (Mai 2018 - Juillet 2018)", "Decouverte du metier de l'IT en entreprise", 1, 0),
	(11, 'MCI Tanjombato', '2020', 'Steward', "-Job étudiant durant le Salon de l'éxpo 2020", 7, 0),
	(12, 'iTeam-S', '2020-...', 'developpeur', "-Testeur d'application</br>-Intégrateur", 7, 0),
	(13, 'iTeam-$', '2020 - ...', 'Responsable juridique (Decembre 2020-...)', "  - Elabroation & Redaction statut de l'association <br>\r  - Chargée de légalisation<br>\r  - Elaboration du reglement intérieure <br>\r  - Examination des projets côtés juridiques", 16, 0),
	(14, 'Tribunal de 1ère instance <br> Mampikony', '2019', 'Stagiaire (Août 2019 - Septembre 2019)', "- Rapport de l'audience<br>\r- Redaction d'une requête introductive d'instance", 16, 0),
	(15, NULL, '2018-2019', 'Tresorière', '- Tresorière club <br>- Tresorière Foyer', 16, 0),
	(16, 'Tribunal de 1ère instance <br>Antananarivo', '2018', "Stage d'observation", "- Decouverte du metier d'un juge", 16, 0),
	(17, 'iteam-$', '2020', 'développeuse', '-développeuse front end et base de donnée</br>-Intégrateur', 8, 0),
	(18, 'BOCASAY', '2020', 'Stagiaire', 'stage de découverte et initiation en entreprise', 8, 0),
	(19, 'Agence Immobilière DIANA', '2020', 'Stagiaire', 'stage de découverte et initiation en entreprise', 8, 0),
	(20, 'PROGRAMME SESAME', '2020', 'Stagiaire', 'stage de découverte et initiation en entreprise', 8, 0),
	(21, 'PHAEL FLORE EXPORT', '2020', 'Stagiaire', 'stage de découverte et initiation en entreprise', 8, 0),
	(22, 'EDUCMAD', '2020', 'Stagiaire', 'stage de découverte et initiation en entreprise', 8, 0),
	(23, 'iTeam-s', '2020-2021', 'Main Developer (Dec 2020 - ...)', "- En charge des tâches principales de l'organisation</br>\r\n- Conseillers technologiques et concepteur d'idée pour les nouveaux projets</br>\r\n- En charge du développement de grand et petite projet", 2, 4),
	(24, 'Supermarche.mg', '2021', 'Développeur Wordpress ( Mai 2021 - ... )', "- Responsable du bon fonctionnement du Site Web </br> - En charge l'implémentation de nouvelles fonctionalités via les plugins", 2, 2),
	(25, 'iTeam-s', '2020-2021', 'Développeuse', 'Développeur back-end du site de i-team', 13, 0),
	(26, 'API-NESS', '2019', 'Stagiaire', "Stage d'observation en entreprise : création d'un site vitrine, vérification des sites web et rédactions de page web", 13, 0),
	(29, 'LOMAY TECH', '2019', 'Stage d’imprégnation ( Oct 2019 )', "- Découvertes de l’environnement de travail d’un développeur</br>\r\n- Apprenti concepteur d'environnement 3D avec Unreal Engine", 2, 0),
	(30, 'Infinity Créative', '2019', 'Formateur bénévole en Gamedev ( Oct 2019 )', "- Former des jeunes durant l’évènement GameLoad</br>- Animer l'évènement avec les jeux vidéo et les jeux grandeurs natures", 2, 1),
	(31, 'ITeam-$', '2020-...', 'développeuse', "-Membre de l'association des développeurs SESAME</br> -Contribution à la réalisation de projet de développement web et d'application", 19, 0),
	(32, 'Etech', '2021', 'Intégrateur', '-Job étudiant à temps partiel </br> -Intégrations de produit et MAJ avec odoo', 19, 0),
	(33, "NewMan'S Technology", '2019', 'Stagiaire', "-Stage d’observation en entreprise</br>-Assimilation du quotidien du métier de développeur.", 19, 0),
	(34, 'Smiley Shooting', '2019-2020', 'Community Manager', "-Mise en pace d'une nouvelle branche de département <br>\r\n-Mise en pace d'un plan de communication <br>\r\n-Etudes des marchés \r\n", 28, 0),
	(35, 'Passion 4 Humanity', '2018'," Stage d'imprégnation (Mai 2018 - Juillet 2018) ", 'stage de découverte et initiation en entreprise', 28, 0),
	(41, 'BPO Concept', '2021 - ...', 'Développeur Node.js et administrateur base de données', '- Création API avec Express-js </br> - Conception base de données Mongodb </br> - Administrateur serveur sur infomaniak', 9, 0),
	(42, 'ITeam-$', '2020 - ...', 'Principal Developer', '- Responsable équipe Back-office </br> - Conception base de données </br> - Réaliser un cahier de charge', 9, 0),
	(43, 'Easytech', '2020 - 2021', 'Développeur web', '- Développement site web avec Sails Js et PHP </br> - Conception base de données avec Postgresql </br> - Analyser la demande clients', 9, 0),
	(44, 'Passion For Humanity', '2018', "Stage d'imprégnation", "- Découverte de l'entreprise et le métier d'un développeur et administrateur réseau", 9, 0),
	(45, 'iTeam-$', '2021', 'Développeur', '- Développeur Front End', 35, 0),
	(46, 'Ophir', '2020 - ', 'Développeur et Designer', "- Développement du site web d'Ophir <br/> - Création de flyers pour les voyages touristiques d'Ophir", 35, 0),
	(47, 'iTeam-$', '2021 - ...', 'Consultant administratif', '- Etude de marché <br> - Réalisation prévisions financières <br> - Mise en place business plan <br> - Réalisation business model', 31, 0),
	(48, 'SmartOne', '2021', 'Stagiaire Département Production <br>(janvier - mars)', "- Analyse de la stratégie de production <br> - Proposition d'amélioration des processus", 31, 0),
	(49, 'SmartOne', '2019', 'Stagiaire Département Finance <br> (juillet - septembre)', '- Initiation au concepet de contrôle interne <br> - Etude de la gestion des risques', 31, 0),
	(50, 'IST-T', '2019', 'Concours de débat universitaire en Anglais', "- Représentant de l'Institut Supérieur de Technologie d'Antananarivo <br> - Demi-finaliste", 31, 0),
	(51, 'Programme SESAME', '2018', 'Président du Bureau Des Etudiants', '- Représenter les étudiants auprès de la Direction <br> - Médiation', 31, 0),
	(53, 'Coder Dojo- Fianarantsoa', '2020-..', 'Formateur en Développement Web', '-Former  des jeunes Lycéens sur le developpement web', 37, 0),
	(54, 'TELMA Madagascar', '2019', "Stage d'imprégnation(Octobre 2019)", "-Découverte du monde du travail d'un developpeur", 37, 0),
	(55, 'iTeam-$', '2021-...', 'Développeur', "-Créateur des scripts permetant d'automatiser des tâches", 27, 0),
	(56, 'BNI MADAGASCAR ', '2020', "stage d'imprégnation (Oct-Nov2020)", "-Découverte du monde d'entreprise et profesionnel </br> -Pétite manipulation des reqêtes SQL avec le logiciel SQLWorkBench", 27, 0),
	(58, 'INGENOSYA', '2021-', 'Développeur Odoo', "-Maintenance de l'ERP Interne de l'entreprise  </br> -Développement de modules customisés selon les demandes des collaborateurs. </br> -Customisation des modules naitfs", 17, 0),
	(59, 'iTeam-$', '2021-', 'Développeur ', "-Membre de la communauté d'étudiant en IT du programme SESAME </br> -Développeur python (Bot-Messenger , Scrapping, api, Odoo,...)", 17, 0),
	(60, 'eTech-esanandro', '2021', 'Intégrateur (Mars - Septembre)', '-Intégrer les nouvelles articles dans le plateforme (prix, photo, description,..) </br> -Mis à jour des articles du plateforme', 17, 0),
	(61, 'Passion 4 Humanity', '2019', 'Stagiaire (Novembre)', "-Stage de découverte dans le monde proféssionnel. </br> Développment de la partie front end d'un site WEB", 17, 0),
	(62, 'eTech-Consulting', '2021', 'Alternant | Développeur OODO (Juillet 2021 - ... )', '- Développement de nouveaux modules sur plusieurs projet\r\n- Adapter les modules natifs selon les besoins des clients', 2, 3);
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;

-- Listage de la structure de la table ITEAMS. fonction
CREATE TABLE IF NOT EXISTS `fonction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_debut_fonction` datetime NOT NULL DEFAULT '2020-11-20 00:00:00',
  `date_fin_fonction` datetime DEFAULT NULL,
  `id_membre` int(11) NOT NULL DEFAULT 0,
  `id_poste` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_fonction_poste` (`id_poste`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

-- Listage des données de la table ITEAMS.fonction : ~35 rows (environ)
/*!40000 ALTER TABLE `fonction` DISABLE KEYS */;
INSERT INTO `fonction` (`id`, `date_debut_fonction`, `date_fin_fonction`, `id_membre`, `id_poste`) VALUES
	(6, '2020-11-20 00:00:00', NULL, 2, 5),
	(7, '2020-11-20 00:00:00', NULL, 3, 5),
	(8, '2020-11-20 00:00:00', NULL, 4, 5),
	(10, '2020-11-20 00:00:00', NULL, 5, 5),
	(12, '2020-11-20 00:00:00', NULL, 6, 5),
	(13, '2020-11-20 00:00:00', NULL, 7, 5),
	(14, '2020-11-20 00:00:00', NULL, 8, 5),
	(15, '2020-11-20 00:00:00', NULL, 9, 5),
	(16, '2020-11-20 00:00:00', NULL, 10, 5),
	(17, '2020-11-20 00:00:00', NULL, 11, 5),
	(18, '2020-11-20 00:00:00', NULL, 12, 5),
	(19, '2020-11-20 00:00:00', NULL, 13, 5),
	(21, '2020-11-20 00:00:00', NULL, 14, 5),
	(22, '2020-11-20 00:00:00', NULL, 15, 5),
	(23, '2020-11-20 00:00:00', NULL, 16, 9),
	(24, '2020-11-20 00:00:00', NULL, 17, 5),
	(25, '2020-11-20 00:00:00', NULL, 18, 5),
	(26, '2020-11-20 00:00:00', NULL, 19, 5),
	(28, '2020-11-20 00:00:00', NULL, 20, 5),
	(29, '2020-11-20 00:00:00', NULL, 21, 5),
	(30, '2020-11-20 00:00:00', NULL, 22, 5),
	(35, '2020-11-20 00:00:00', NULL, 26, 3),
	(36, '2020-11-20 00:00:00', NULL, 27, 5),
	(37, '2020-11-20 00:00:00', NULL, 28, 4),
	(38, '2020-11-20 00:00:00', NULL, 29, 4),
	(39, '2020-11-20 00:00:00', NULL, 30, 7),
	(40, '2020-11-20 00:00:00', NULL, 31, 8),
	(42, '2020-11-20 00:00:00', NULL, 32, 5),
	(43, '2020-11-20 00:00:00', NULL, 33, 5),
	(44, '2020-11-20 00:00:00', NULL, 34, 5),
	(45, '2020-11-20 00:00:00', NULL, 1, 6),
	(46, '2020-11-20 00:00:00', '2021-05-08 11:09:37', 35, 5),
	(47, '2020-11-20 00:00:00', NULL, 36, 5),
	(48, '2020-11-20 00:00:00', NULL, 37, 5),
	(52, '2020-11-20 00:00:00', NULL, 25, 5);
/*!40000 ALTER TABLE `fonction` ENABLE KEYS */;

-- Listage de la structure de la table ITEAMS. formations
CREATE TABLE IF NOT EXISTS `formations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lieu` text DEFAULT NULL,
  `annee` varchar(20) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_membre` int(11) NOT NULL,
  `ordre` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_membre` (`id_membre`),
  CONSTRAINT `FK_formations_membre` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COMMENT='Cette table contient les formations de chaque membre';

-- Listage des données de la table ITEAMS.formations : ~47 rows (environ)
/*!40000 ALTER TABLE `formations` DISABLE KEYS */;
INSERT INTO `formations` (`id`, `lieu`, `annee`, `type`, `description`, `id_membre`, `ordre`) VALUES
	(1, 'ESTI Antananarivo', '2019 - ...', 'LICENCE', "- Réseau & Système d'Information<br>\r\n- Technologie de l'Information", 1, 0),
	(2, 'Programme SESAME', '2017-2018', 'Année Préparatoire', "Certificat d'etudes", 1, 0),
	(3, 'Stella Maris ', '2016-2017', 'Terminal C', 'Baccalauréat C 2017<br> Mention Assez Bien', 1, 0),
	(4, 'ESTI Antanimena', '2021-...', 'developpement ', '-Mars 2021:Première Année', 7, 0),
	(5, 'Programme SESAME', '2020', 'annéé preparatoire', "-Certificat de fin d'étude</br>-Orientation pro", 7, 0),
	(6, 'NDP Mahanoro', '2019', 'Terminal D', '-BACC série D générale</br>-BACC série D Catholique', 7, 0),
	(7, 'Alliance Française', '2016', 'linguistique', '-DELF B1 (note:81/100)', 7, 0),
	(8, 'UCM Antananarivo', '2018 - ...', 'Droit public', '2020 - 2021: 3ème année <br>\r2019 - 2020: 2ème année <br>\r2018 - 2019: 1ère année', 16, 0),
	(9, 'Smile Events', '2021', 'Modèle photo, Mannequinat', 'Pose photo, défilé', 16, 0),
	(10, 'Programme SESAME', '2018', 'Année Prépatoire', "Certificat d'études", 16, 0),
	(11, 'Lycée St Pierre Miandrivazo', '2016-2017', 'Terminal A2', 'Baccalauréat mention Assez Bien', 16, 0),
	(12, 'ESTI Antananarivo Antanimena', '2021', 'intégration et développement', 'L1 au mois de mars 2021', 8, 0),
	(13, 'Programme SESAME', '2020', 'Année préparatoire', 'certificat détudes', 8, 0),
	(15, 'Lycée catholique Saint Jean', '2019', 'Terminal scientifique', 'Baccalauréat D 2019<br> Mention Bien', 8, 0),
	(16, 'coeur et conscience', '2020', 'call center', 'certificat de formation call center', 8, 0),
	(17, 'NYC Antsiranana', '2017', 'bureautique', 'Word, Excel, Powerpoint, Internet', 8, 0),
	(18, 'ESTI Antananarivo', '2019 - ...', "Intégrations et développement d'application", '2021 - ... : Deuxieme Année<br>\r\n2019 - 2021 : Premiere Année', 2, 0),
	(19, 'Programme SESAME', '2018-2019', 'Année Préparatoire', "Certificat d'etudes </br>En Année préparatoire aux études universitaires", 2, 0),
	(20, 'St Joseph de Cluny ', '2017-2018', 'Terminal C', 'Baccalauréat C 2018<br> Mention Bien', 2, 0),
	(21, 'ESTI Antananarivo', '2019-2021', 'Intégrations et développement', '2021 : Deuxième année </br> 2019-2020 : Première année', 13, 0),
	(22, 'Programme SESAME', '2018-2019', 'Année Préparatoire', "Certificat d'études ", 13, 0),
	(23, 'Ny Sekolintsika Analamahitsy', '2017-2018', 'Terminal D', 'Baccalauréat D 2018 </br> Mention Bien', 13, 0),
	(27, 'ESTI Antanimena', '2019-2021', 'Développement et intégration', '2020-2021: Deuxième Année de Licence</br> 2019-2020: Première Année de Licence', 19, 0),
	(28, 'Programme SESAME', '2018-2019', 'Année préparatoire', "Certificat de fin d'étude, mention scientifique", 19, 0),
	(29, "Ste Jeanne D'Arc ", '2017-2018', 'Terminal C', 'Baccalauréat C 2018<br> Mention Assez Bien', 19, 0),
	(30, 'ISCAM ', '2019 - ...', 'Marketing & Communication', '', 28, 0),
	(31, 'Programme SESAME', '2017-2018', 'Année Préparatoire', "Certificat d'etudes", 28, 0),
	(32, 'Lycée Catholique <br> Sainte-Thérèse <br>Sambava', '2017', 'Terminal A', 'Baccalauréat A2 2017 <br> Mention Assez Bien', 28, 0),
	(36, 'ESTI Antananarivo', '2018 - ...', 'Développement et intégration', '- 2020 - 2021: L3 </br> - 2019 - 2020: L2 </br> - 2018 - 2019: L1', 9, 0),
	(37, 'Programme SESAME', '2017 - 2018', 'Année Préparatoire', "Obtention bourse d'étude et certificat", 9, 0),
	(38, 'Saint Jean de Matha </br> Moramanga', '2010 - 2017', 'Serie D', '- Baccalauréat 2017 : mention Bien </br> - BEPC 2014', 9, 0),
	(39, 'ISSTM Mahajanga', '2019 - ...', 'Licence', '- Licence en génie informatique', 35, 0),
	(40, 'Programme SESAME', '2017 - 2018', 'Année préparatoire', '- Préparation à la vie universitaire', 35, 0),
	(41, 'Saint Gabriel', '2016 - 2017', 'Terminale C', '- Baccalauréat C', 35, 0),
	(42, 'IST-T', '2019 - ...', 'Entrepreneuriat', '2021: Diplôme de Technicien Supérieur dans le parcours Gestion Des Petites et Moyennes Entreprises', 31, 0),
	(43, 'Programme SESAME', '2017-2018', 'Année Préparatoire', "Certificat d'étude", 31, 0),
	(44, 'Lycée Techbique <br> Commerciale Ampefiloha', '2017', 'Terminal G2', 'Baccalauréat en G2 mention Très Bien', 31, 0),
	(48, 'ENI Fianarantsoa', '2020-...', 'Licence', '-Génie Logiciel et Bases de Données', 37, 0),
	(49, 'Programme SESAME', '2019-2020', 'Année Préparatoire', "-Certificat d'études", 37, 0),
	(50, 'Lycée Saint Antoine</br>Bemaneviky A/ja', '2017-2018', 'Terminale D', '-Baccalauréat D', 37, 0),
	(51, 'ESTI Antanimena', '2021-...', 'Developpement en informatique', '2021-... : Prémière année', 27, 0),
	(52, 'Programme SESAME', '2020', 'Année preparatoire', "-Certificat de fin d'étude </br>-Orientation professionnelle</br>-Développement  personnel", 27, 0),
	(55, 'Lycée Catholique SJA </br> MAHAJANGA', '2019', 'Terminal C', '-Baccalauréat série C </br> -Mention Bien', 27, 0),
	(56, 'ESTI Antanimena', '2020 - ', 'Licence', '-Deuxième année en parcours Développement et Intégration Informatique.', 17, 0),
	(57, 'Programme SESAME', '2019', 'Année préparatoire', "-Préparation à la vie Universitaire </br> -Obtention d'une bourse d'étude de trois ans à l'université ESTI.", 17, 0),
	(58, 'Saint Jean de Mahta </br> Moramanga', '2018-2019', 'Terminale D', 'Baccaluaréat serie D </br> Mention Bien', 17, 0),
	(1001, 'THE JOHN MAXWELL</br> TEAM', '2021', 'Formation en Leadership', '-Formation en Leadership et communication</br>-Apprendre comment devenir une personne de valeur qui ajoute de la valeur aux autres</br>- Diplôme de participation certifié', 7, 0);
/*!40000 ALTER TABLE `formations` ENABLE KEYS */;

/*
-- Listage de la structure de la procédure ITEAMS. mbr_equipe_proc
DELIMITER //
CREATE PROCEDURE `mbr_equipe_proc`(
	IN `parametre_equipe` INT
)
    COMMENT 'Procedure pour connaitre le membre d''une equipe particuliere'
BEGIN

SELECT 
	prenom_usuel, m.nom ,prenom, p.nom AS nom_poste, 
	mail, tel1, tel2, user_github, user_github_pic,
	id_poste,id_membre,f.id AS id_fonction, 
	date_d_adhesion, date_exclusion,
	date_debut_fonction,id_equipe, date_fin_fonction,
	e.nom AS nom_equipe

FROM membre m JOIN fonction f ON m.id = f.id_membre 
	JOIN poste p ON f.id_poste = p.id  
	JOIN equipe e ON f.id_equipe = e.id 

WHERE e.id = parametre_equipe
	AND m.date_exclusion IS NULL
	AND date_fin_fonction IS NULL;

END//
DELIMITER ; */


-- Listage de la structure de la table ITEAMS. poste
CREATE TABLE IF NOT EXISTS `poste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `categorie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Listage des données de la table ITEAMS.poste : ~8 rows (environ)
/*!40000 ALTER TABLE `poste` DISABLE KEYS */;
INSERT INTO `poste` (`id`, `nom`, `categorie`) VALUES
	(1, 'Responsable Equipe', NULL),
	(3, 'Relation Projet', 'Admin'),
	(4, 'Communication Digitale', 'Admin'),
	(5, 'Développeur', 'Dev'),
	(6, 'Lead Developer', 'Dev'),
	(7, 'Chargé Administration', 'Admin'),
	(8, 'Consultant Administration', 'Admin'),
	(9, 'Chargé Juridique', 'Admin');
/*!40000 ALTER TABLE `poste` ENABLE KEYS */;

/*
-- Listage de la structure de la procédure ITEAMS. statistique
DELIMITER //
CREATE PROCEDURE `statistique`(
	IN `mois` INT
)
BEGIN

SELECT COUNT(id) INTO @var1 FROM `Keypass` 
WHERE MONTH(date_used) = mois AND used = TRUE;

SELECT @var1*2000 AS benefice;

END//
DELIMITER ; */


-- Listage de la structure de la table ITEAMS. Traduction
CREATE TABLE IF NOT EXISTS `Traduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cle` varchar(100) DEFAULT NULL,
  `fr` text DEFAULT NULL,
  `en` text DEFAULT NULL,
  `mg` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cle` (`cle`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

-- Listage des données de la table ITEAMS.Traduction : ~51 rows (environ)
/*!40000 ALTER TABLE `Traduction` DISABLE KEYS */;
INSERT INTO `Traduction` (`id`, `cle`, `fr`, `en`, `mg`) VALUES
	(1, 'bienvenue', 'Bienvenue', 'Welcome', 'Tongasoa'),
	(2, 'se_connecter', 'Se  Connecter', 'Log in', 'Hiditra'),
	(3, 'mot_de_passe_oubliee', 'Mot de passe oublié', 'Forgot password', 'Hadino ny teny miafina'),
	(4, 'mot_de_passe_incorrecte', 'Mot de passe incorrect', 'Wrong password', 'Diso ny teny miafina'),
	(5, 'vous_devez_d_abord_vous_connecter', "Vous devez d'abord vous connecter.", 'You must login first.', 'Mila miditra aloha ianao.'),
	(6, 'oui', 'Oui', 'Yes', 'Eny'),
	(7, 'non', 'Non', 'No', 'Tsia'),
	(8, 'choisir_votre_langue', 'Veullez choisir votre langue.', 'Please, choose your language.', 'Azafady, safidio ny fiteninao'),
	(9, 'langue_mis_a_jour', 'Votre langue a été mise à jour.', 'Your language has been updated.', 'Niova ny fiteninao.'),
	(10, 'choix_incorrecte', 'Votre choix semble incorrect.', 'Your choice seems incorrect.', 'Toa tsy mety ny safidinao.'),
	(11, 'entrer_votre_username_mail_moodle', "Entrez votre nom d'utilisateur ou votre Email sur Moodle ", 'Enter your username or your Email on Moodle', 'Ampidiro ny anaranao na ny  mailaka Moodle.'),
	(12, 'entrer_votre_password_moodle', 'Entrez votre mot de passe Moodle.', 'Enter your Moodle password.', "Ampidiro ny teny miafinanao amin'ny Moodle."),
	(13, 'vous_n_etes_plus_connectee', "Vous n'êtes plus connecté(e)", 'You are no longer connected', 'Tsy tafiditra intsony ianao'),
	(14, 'une_erreur_s_est_produite', "Une erreur s'est produite", 'An error occurred', 'Nisy lesoka nitranga'),
	(17, 'menu_a_afficher', 'Quel menu voulez-vous afficher?', 'Which menu do you want to display?', 'Lisitry ny inona no tianao aseho?'),
	(18, 'options_a_afficher', 'Que voulez-vous consulter?', 'What do you want to see?', 'Inona no tianao hojerena?'),
	(19, 'tableau_de_bord', 'Tableau de Bord', 'Dashboard', 'fafana'),
	(20, 'liste_cours', 'Lister les cours', 'Course lists', 'Lisitry ny taranja'),
	(21, 'mes_cours', 'Mes cours', 'My courses', 'Taranjako'),
	(22, 'recherche_cours', 'Rechercher un cours', 'Find a course', 'Hitady taranja'),
	(23, 'entrer_votre_recherche', 'Entrer votre recherche', 'What do you want to research?', 'Inona no tianao hotadiavina?'),
	(24, 'aucun_cours_trouvé', "Il n'y a aucun cours", "There's no course found ", 'Tsy misy taranja hita '),
	(25, 'erreur_token', 'Session expiré', NULL, NULL),
	(26, 'acceder_au_cours', 'Accerder à ce cours', 'Access to this course', "Hiditra amin'io taranja io"),
	(27, 'options_a_faire', 'Que voulez-vous faire?', 'What would you do?', 'Inona no tianao hatao?'),
	(28, 'aucun_contenu_trouvee', 'Aucun contenu', 'No content', NULL),
	(29, 'description', 'Description', 'Summary', 'Mombamomba'),
	(30, 'support_de_cours', 'Support de cours', 'course file', NULL),
	(31, 'voir_le_cours', 'Voir le cours', 'View course', 'Hanokatra ny taranja'),
	(32, 'options_a_telecharger', 'Voulez-vous télécharger... ?', 'Do you want to download ...?', NULL),
	(33, 'contenue_de_cours', 'Contenu du cours', NULL, NULL),
	(34, 'devoirs', 'Devoirs', 'Homework', 'entimody'),
	(35, 'annonce', 'Annonce', 'Announcement', NULL),
	(36, 'date_limit', 'Date Limite', 'deadline', NULL),
	(37, 'tous_les_cours', 'Tous les cours', 'All the courses', 'Ny taranja rehetra'),
	(38, 'Cours_recent', 'Cours récent', 'Recent course', NULL),
	(39, 'devoir_envoyee', 'Votre devoir a été envoyé.', 'Your exercise has been sent', NULL),
	(40, 'consigne', 'Consigne', NULL, NULL),
	(41, 'modifier_devoir', 'Modifier le devoir', 'Edit the exercise', NULL),
	(42, 'rendre_devoir', 'Rendre le devoir', 'Submit the exercise', 'Mamerina entimody'),
	(43, 'texte_du_devoir', 'Entrer le texte à envoyer. ', 'Enter the text to send', NULL),
	(44, 'upload_piece_jointe', 'Insérer la pièce-jointe (Fichier à envoyer)', 'Insert the attachment (File to send)', NULL),
	(45, 'nouveau_devoir', 'Vous avez réçu un nouveau devoir.', NULL, NULL),
	(46, 'page', 'Pages de cours', 'Pages', 'Pejy'),
	(47, 'scorm', 'Scorm', NULL, NULL),
	(48, 'entrer_recherche', 'Entrer votre recherche', NULL, NULL),
	(49, 'pages_web', 'Pages web', NULL, NULL),
	(50, 'veuillez_patientez', 'Veuillez patientez svp.', NULL, NULL),
	(51, 'pas_de_titre', 'titre inconnu', NULL, NULL),
	(52, 'download_image', 'Voir en Image', 'Download as Picture', NULL),
	(53, 'download_pdf', 'Voir en PDF', 'Download as PDF', NULL);
/*!40000 ALTER TABLE `Traduction` ENABLE KEYS */;

-- Listage de la structure de la table ITEAMS. user_log_server
CREATE TABLE IF NOT EXISTS `user_log_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `mot_de_passe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Listage des données de la table ITEAMS.user_log_server : ~2 rows (environ)
/*!40000 ALTER TABLE `user_log_server` DISABLE KEYS */;
INSERT INTO `user_log_server` (`id`, `email`, `mot_de_passe`) VALUES
	(1, 'sergio@gmail.com', 'sergio22**'),
	(2, 'gaetan@gmail.com', 'gaetan22**');
/*!40000 ALTER TABLE `user_log_server` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
