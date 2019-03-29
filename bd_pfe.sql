-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2019 at 06:25 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_pfe`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `ID_ARTICLE` int(10) NOT NULL AUTO_INCREMENT,
  `ID_MEMBRE` int(10) NOT NULL,
  `TYPE_ARTICLE` text NOT NULL,
  `TITRE_ARTICLE` varchar(100) NOT NULL,
  `CONTENU_ARTICLE` varchar(5000) NOT NULL,
  `DATE_PUB` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SCENE_3D` text,
  `VIDEO360` text,
  `HISTORIQUE` varchar(5000) DEFAULT NULL,
  `CORDGEOX` float DEFAULT '0',
  `CORDGEOY` float DEFAULT '0',
  `IMG_ARTICLE` text NOT NULL,
  `ACTIVE` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_ARTICLE`),
  KEY `FK_ARTICLE_SUGGESTER_MEMBRE` (`ID_MEMBRE`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ID_ARTICLE`, `ID_MEMBRE`, `TYPE_ARTICLE`, `TITRE_ARTICLE`, `CONTENU_ARTICLE`, `DATE_PUB`, `SCENE_3D`, `VIDEO360`, `HISTORIQUE`, `CORDGEOX`, `CORDGEOY`, `IMG_ARTICLE`, `ACTIVE`) VALUES
(1, 5, 'MONUMENTS HISTORIQUES', 'Skala de la Kasbah', 'Face à l’océan Atlantique, la skala de la kasbah fût conçu en 1765 pour repousser les attaques maritimes, est constitué d’une plateforme à deux niveaux. Il se compose d’une série de pièces, qui étaient destinées autrefois au stockage des munitions et des armes. Au pied de la skala se trouve une rue bordée d’ateliers de marqueteurs, dont les travaux sont de renommée internationale. Sur la skala de la kasbah s’alignent des canons portugais. C’est sur ces remparts qui abritèrent les corsaires du sultan Sidi Mohammed Ben Abdallah qu’Orson Welles tourna son film Othello.', '2018-12-28 20:10:56', NULL, NULL, 'La sqala de la Kasbah a été édifiée en 1765 sur ordre du sultan Mohammed Ben Abdellah, de la dynastie alaouite.Elle a participé à la défense de la ville durant le bombardement de Mogador opéré par la France, dans le cadre de la guerre franco-marocaine.Elle est classée comme monument historique depuis le dahir du 30 août 1924 et Dotée d’un ensemble de pièces d’artillerie, la sqala possède principalement des canons en bronze de fabrication espagnole construits dans les fontes de Séville et Barcelone entre 1743 et 1782 .', 31.5133, -9.77392, '1.jpg', 1),
(2, 1, 'PLACE TOURISTIQUE', 'Médina d’Essaouira', 'Cette charmante ville est l’une des destinations de tourisme privilégiées au Maroc. Essaouira est d’une très grande richesse culturelle et architecturale. Au sud de la médina, la place Moulay Hassan agrémentée d’agréables terrasses et commerces, est un point de repère idéal. De là, on accède au coeur de la médina, à ses ruelles animées débouchant sur les souks, les galeries d’art, les restaurants et les nombreuses petites activités typiques de ces lieux animés .\r\nC’est pour toutes ces raisons qu’en décembre 2001, l’organisation des nations unies, a inscrit la médina d’Essaouira sur la liste prestigieuse des sites du patrimoine de l’humanité et héritage universel.', '2018-01-11 01:13:41', NULL, NULL, 'La médina d’Essaouira est fondée entre le xviiie siècle et le xixe siècle, par le sultan Mohammed III du Maroc, sur l’emplacement d’un comptoir commercial ancestral, fondé au viie siècle av. J.-C. par la civilisation phénicienne sur l’Île de Mogador de la baie d’Essaouira puis tenu par leurs nombreux successeurs crétois, grecs, romains, puis portugais.\r\nÀ partir de 1764 le sultan fait construire cette médina fortifiée et son Port Royal d’Essaouira, sur l’emplacement de l’ancien port et Castelo Real / Sqala du Port portugais de 1506, sur la cote Atlantique du Maroc « au milieu du sable et du vent », par l’architecte militaire français Théodore Cornut (disciple du marquis de Vauban). Ce dernier s’inspire de la ville fortifiée de Saint-Malo en Bretagne, pour construire cette cité avec un mélange de style manuélin portugais subsistant d’alors, d’architecture islamique urbaniste arabo-musulmane nord-africaine, et d’architecture militaire française de style forteresse de Vauban.', 31.5109, -9.78005, '2.jpg', 1),
(3, 11, 'PLACE TOURISTIQUE', 'Les Portes', 'Les portes d’Essaouira sont de deux types. Les portes de style marocain caractérisées par leur caractère saillant par rapport à la courtine et leur ouverture extérieure et intérieure en arcs en plein cintre il s’agit des portes de Bab Doukkala, Bab Marrakech et Bab Sbaa. Le second type de portes et celui à trait européen. Le modèle représentatif est la porte du port. C’est un ouvrage monumental surmonté d’un fronton triangulaire de style grec supporté par des colonnes cannelées. L’intérieur de ce fronton est meublé par l’inscription fondation gravée en cursif. La porte donne accès sur un passage surmonté d’une coupole en forme de pyramide tronquée, de base carrée et recouverte de boiseries.', '2018-02-28 12:30:50', NULL, NULL, 'Essaouira compte un important nombre de portes, situées dans la médina de la ville. Ces portes sont influencées par deux types de styles différents. Le style chérifien, qui rappelle les fortifications de Marrakech, comporte des portes arrondies, alors que le style européen comporte des portes à fronton et des colonnes cannelées .\r\n- Bab el-Marsa (porte de la marine) est la porte la plus monumentale d’Essaouira. Bâtie en 1769-1770 par le renégat Ahmed El Inglizi, sous les ordres du sultan Mohammed ben Abdellah, la porte est construite entièrement à partir de pierre taillée. De style Vauban, Bab el-Marsa est une porte à fronton contenant des colonnes cannelées. La porte permet l’accès au port d’Essaouira .\r\n- Bab Doukkala (porte de Doukkala) est située au nord-est de la médina, dans le mellah. De style chérifien, elle était un passage obligé pour prendre la route de Safi et atteindre le territoire des Doukkala .\r\n- Bab el-Menzeh (porte d’El Menzeh) est l’une des portes de l’ancienne dar El Mekhzen et ses dépendances, dont il ne reste pratiquement plus rien. Située dans la kasbah, elle se compose de trois baies identiques à celles de bab el-Mechouar, qui leur font face. Elle est couverte d’un toit de tuiles vertes. Elle est édifiée en 1764.\r\n- Bab el-Sebâa (porte du lion) est percée en 1866 sous les ordres de Mohammed ben Abderrahmane. Elle permet de desservir la nouvelle extension de la kasbah (kasbah jedida). Elle fait face à bab Magana .\r\n- Bab Magana (porte de l’horloge), anciennement appelée porte du roi, est édifiée en 1764. C’est la seule porte conservée parmi les portes d’accès que connaît la kasbah. Elle se situe entre la kasbah kdima et la kasbah jedida .\r\n- Bab al-Bahar (porte de la mer) est une porte construite au xviiie siècle sous le règne du sultan Mohammed ben Abdellah. Elle est l’unique porte donnant directement accès à la mer depuis la médina. Elle est aujourd’hui condamnée, et se situe dans le quartier des Beni Antar .\r\n- Bab el-Mechouar (porte du Mechouar) est située dans la kasbah. Elle est constituée de trois baies identiques à celles de bab el-Menzeh, qui leur font face .\r\n- Bab Marrakech (porte de Marrakech) est une porte qui se trouve au sud-est de la médina d’Essaouira, et était un passage obligé pour prendre la route de Marrakech et d’Agadir. De style chérifien, bab Marrakech est une porte arrondie reliée par des remparts en pierre et enduite d’un crépit de terre, comportant des créneaux carrés. Borj Bab Marrakech se trouve à proximité .', 31.5131, -9.772, '3.jpg', 1),
(4, 6, 'MONUMENTS HISTORIQUES', 'Horloge d’Essaouira', 'L’horloge qui se trouve dans la médina, à côté de la place Bab El Menzeh, indiquait depuis 1918 l’heure aux habitants de la ville. Composée de cinq cloches, elle sonnait tous les quarts d’heure et rythmait le quotidien des Souiris. Mais en 1997, l’horloge a cessé de sonner. Rénovée en 2012, elle affiche enfin l’heure et son carillon sonne toutes les demi-heures.', '2018-03-10 11:20:28', NULL, NULL, 'En 1920 le Maréchal LYAUTEY réunit les autorités civiles et militaires pour demander la mise en place d’une horloge dans la ville d’Essaouira. \r\nSituée à quelques pas de Bab Sbâa,  il  fut d’abord question de l’installer au  niveau du souk JDID mais cela risquait de dépareiller l’esthétisme du cadre. \r\nElle trône en haut d’une tour construite en 1926 qui abrite le mécanisme de l’horloger HENRY- LEPAUTE, autrefois au service de Louis Philippe et Napoléon III et qui fut le premier à créer des horloges «à poids» dans des monuments réputés : le Palais de Justice de Paris, la Bourse de Marseille… \r\nLa construction de l’horloge prend fin en 1928, elle se situe à proximité de Bab Sbaa, la « porte du lion » qui est l’un des accès principal à la Kasbah. L’horloge d’Essaouira est composée de 4 faces. La face ouest de l’horloge est située en face la petite place Chefchaouen et la face sud surplombe l’avenue Mechouar qui signifie la cour du roi dans les villes impériales.\r\nLa renaissance de l’Horloge d’Essaouira\r\nMalgré un entretien régulier, le mécanisme de l’horloge s’arrête complètement en 1997, l’horloge cesse de sonner pendant de nombreuses années et il faudra attendre 2012 pour voir la rénovation complète de l’édifice achevée.\r\nAujourd’hui entièrement rénovée, mécanisme et ravalement de la bâtisse, l’horloge affiche l’heure et sonne chaque demi-heure et rythme de nouveau les journées des souiris et des visiteurs de la ville.', 31.5121, -9.7729, '4.jpg', 1),
(5, 7, 'PLACE TOURISTIQUE', 'Bastion bab Marrakech', 'C’est l’édifice défensif le plus important du côté terre. Il se présente sous forme d’une batterie circulaire qui couvre un angle de 270° qui permet de dominer la quasi-totalité des accès Est de la médina. d’un diamètre de 35 m, il occupe une superficie d’environ 980m2. L’intérieur de la tour servait de poudrière et d’entrepôt de munitions. Sa structure, solidement bâtie en moellons et pierre de taille, est composée d’un double mur extérieur relié à un noyau central (tour de 8m de diamètre) par une enfilade d’alcôves voûtées découpant ainsi l’espace en 11 compartiments identiques communicant tous par une galerie en coursives. L’entrée, agencée en doubles chicanes symétriques, occupe -avec les escaliers desservant la terrasse l’espace de trois alcôves.', '2018-04-02 21:05:32', NULL, NULL, 'La tour du Bastion de Bab Marrakech est située au sud ouest de la médina d’Essaouira, au coin Est du tronçon de la muraille comportant la porte monumentale du même nom.\r\nConstruit au 19ème siècle, le Bastion (ou \"Borj\" Bab Marrakech) servait à l’époque d’entrepôt de munitions et poudrière. Durant le protectorat français, il a aussi servi d’écurie pour les chevaux, avant d’être abandonné dans les années 1950. Grand bâtiment d’un rayon de 35 mètres, divisé en 11 compartiments identiques qui communiquent entre eux par une galerie en coursives, c’est aujourd’hui l’un des centres culturels d’Essaouira, il abrite sous ses alcôves une galerie d’art et sur son toit une scène en plein air. \r\nLe Bastion est classé Patrimoine National depuis 1924 et Patrimoine Culturel Universel de l’Humanité par l’UNESCO depuis décembre 2001.', 31.512, -9.76872, '/7.jpg', 1),
(6, 8, 'PLACE TOURISTIQUE', 'Musée Sidi Mohamed Ben Abdellah', 'Le musée Sidi Mohamed Ben Abdellah est situé dans une bâtisse datant du XIXème siècle à la ville d’Essaouira. Il s’agit d’une demeure qui était utilisée comme siège de la mairie de la ville durant le protectorat, puis abritait les services municipaux après l’indépendance, pour devenir par la suite la maison des jeunes. Ce n’est qu’en 1980 que ce monument a été finalement destiné pour abriter le musée des traditions locales de la ville d’Essaouira, portant le nom du sultan Sidi Mohamed Ben Abdellah. La structure initiale de la demeure a bien subit des changement, mais elle est en principe composée du rez-de-chaussée et d’un étage, avec plusieurs chambres s’ouvrant sur un patio doté d’une fontaine.\r\n\r\nLa bâtisse abritant le musée Sidi Mohamed Ben Abdallah date du XIXe siècle. Sa structure initiale a subi plusieurs changements. étant une demeure seigneuriale composée de plusieurs chambres s’ouvrant sur un patio doté d’une fontaine, la bâtisse est devenue pendant le protectorat le siège de la mairie de la ville. Avec l’indépendance, le monument abritait les services municipaux avant de devenir la maison des jeunes. Le 20 octobre 1980, le monument a été choisi pour abriter le musée de la ville et de sa région, nommé Musée Sidi Mohamed Ben Abdallah. l’objectif majeur était de conserver et de présenter le patrimoine culturel de la province.', '2018-04-30 15:12:56', NULL, NULL, 'La bâtisse abritant le musée Sidi-Mohammed-ben-Abdellah, du nom du sultan alaouite Sidi Mohammed ben Abdellah, date du xixe siècle. Sa structure initiale a subi plusieurs changements. Étant une demeure seigneuriale composée de plusieurs chambres s’ouvrant sur un patio doté d’une fontaine, la bâtisse est devenue pendant le protectorat le siège de l’hôtel de ville. Après l’indépendance, le monument a abrité les services municipaux avant de devenir la maison des jeunes.\r\n\r\nLe 20 octobre 1980, le monument a été choisi pour abriter le musée de la ville et de sa région, avec comme objectif majeur de conserver et présenter le patrimoine culturel de la province d’Essaouira.', 31.5137, -9.77145, '8.jpg', 1),
(7, 10, 'MONUMENTS HISTORIQUES', 'La Mosquée Sidi ben Youssef', 'La mosquée Sidi Youssef Ibn Ali fût construite en (1187H-1773/1774ap.J.C). Cette mosquée est la plus grande mosquée de la ville d’Essaouira par sa superficie. On l’attribue à Abou Yacoub Youssef Ibn Mohammed Ibn Sidi Mohammed Ibn Annacer At-Tamagrouti, un des imams qui avaient accompagné le Sultan Sidi Mohammed Ibn Abdellah lors de l’inauguration de la ville d’Essaouira. Son minaret a l’allure importante qui s’élève de 66,34 m de hauteur, pour une base de 6,8m.', '2018-05-06 12:40:45', NULL, NULL, 'Construite sur près de 2 000 m², la mosquée Ben Youssef est la plus grande mosquée de la medina, avec un minaret culminant à 66,34 mètres.\r\nConstruite en 1773-1774, elle serait attribué à un des imams qui accompagnait le Sultan Mohammed Ben Abdallah lors de l’inauguration de la ville : Abu Yakoub Youssef Ibn Mohammed Ibn Sidi Mohammed Ibn Annacer at-Tamagrouti.', 31.5126, -9.77171, '5.jpg', 1),
(8, 11, 'MONUMENTS HISTORIQUES', 'L’église d’Essaouira', 'Essaouira est la seule ville à posséder une église portugaise dont les cloches sonnent tous les dimanches à 10h. Avec ses quelques rares fidèles l’église accueille cependant encore quelques cérémonies et le curé y fait encore la messe.', '2018-05-31 10:35:15', NULL, NULL, 'A partir de 1939, la construction de Notre Dame de l’Assomption  telle que l’on  la connaît dans sa forme actuelle, commence.\r\nElle est située en dehors des remparts, entre la porte de Bab Marrakech et la plage.\r\nDe nos jours, Essaouira est la seule ville du Maroc à posséder une église dont les cloches sonnent tous les dimanches à 10h.\r\nElle accueille régulièrement quelques résidents et aussi les touristes de passage désirant retrouver un endroit  où la spiritualité règne en maître. \r\nLe père Jean-Claude, qui vit à Essaouira depuis plus de 25 ans, est une figure de la cité des alizés. Son franc-parler et sa barbe blanche font partie intégrante de la vie de Mogador.\r\nLe jardin de l’église est également à remarquer, tant les fleurs et arbustes sont présents et débordent sur les rues extérieures : une symphonie de couleurs qui ajoutent à la poésie du lieu.', 31.5094, -9.76787, '6.jpg', 0),
(9, 3, 'PLACE TOURISTIQUE', 'Phare d’Essaouira', 'Depuis le village de Sidi Magdoul, le petit phare d’Essaouira remplit dignement sa mission chaque nuit. Il a été construit en 1914 et a été mis en service en 1916. Sa tour, haute de 14,80 mètres, est de forme carrée de couleur blanche et jaune.', '2018-07-01 23:35:15', NULL, NULL, 'Le phare du Cap Sim, situé environ à 20 kms d’Essaouira, a été construit en 1917, sous le protectorat Français, et mis en service en 1922. Réaménagé en 2000 et 2004, il se présente comme une tour aux bandes vertes et blanches dans une enceinte de 5 tourelles et atteint une hauteur de 103 mètres. Il a la capacité de projeter 3 éclats très puissants toutes les 15 secondes.\r\nLe phare d’Essaouira ou Sidi Mogdoul est situé à la sortie Sud de la ville, sur la route d’Agadir. Dans l’antiquité, il était alimenté par un feu de bois. Construit également dans les années 1920, il sera réaménagé en 2006. Son nom lui vient du navigateur anglais Mac Donald qui aurait atteint les rives d’Amogdoul. Devenu musulman, il sera canonisé comme saint pour sa bravoure à la guerre. Mac Donald et Magdoul auraient presque les mêmes intonations.\r\nL’emplacement de ces phares garde toute son importance notamment face au projet d’extension et d’aménagement en port de plaisance dans le port d’Essaouira.', 31.4923, -9.76624, '20.jpg', 1),
(10, 4, 'MONUMENTS HISTORIQUES', 'Borj El Baroud', 'Magnifique Fort portugais bâti aux temps du Sultan Sidi Mohammed Ben Abdallah, le fort s’est effondré le 13 janvier 1856 à cause des inondations de l’Oued Ksob. Cette structure est située sur une vaste plage de sable juste en face de ruines phéniciennes.', '2018-07-15 08:15:25', NULL, NULL, 'Borj el Baroud, aussi appelé \"fort portugais\" est un ancien fort à poudre. \r\nCe fort aurait été reconstruit vers le XVième siècle, sur les ruines d’un rempart de l’époque Saâdienne lui même édifié sur le socle d’une tour ronde datant de l’époque Phénicienne.\r\nAujourd’hui en ruine, il est accessible par la plage à marée basse.\r\nIl était de forme carrée, avec un logement au-dessus pour les gardiens.', 31.489, -9.77789, '21.jpg', 0),
(11, 9, 'MONUMENTS HISTORIQUES', 'Dar Sultan Sidi Mohamed Ben Abdellah', 'Le palais du Sultan où bien Dar Sultan, ancienne résidence du fondateur d’Essaouira, était construit à l’extérieur et au sud de la ville près de la côte. Il était meublé à l’européenne et comportait cinq pavillons dont il n’en subsiste que quelques ruines.\r\nEn 1820, le palais Dar Sultan servait aux autorités locales. Avant d’être entièrement ensablé, il était entouré d’une forêt de tamaris.\r\nCe palais à joué un rôle capital dans l’histoire du Maroc, et surtout de la ville d’Essaouira considérée à l’époque le centre de la prise de décision et de concertation avec les consules représentant des puissances étrangères installées à Essaouira.', '2018-07-28 12:15:12', NULL, NULL, 'Le palais du Sultan où bien Dar Sultan, ancienne résidence du fondateur d’Essaouira, était construit à l’extérieur et au sud de la ville près de la côte. Il était meublé à l’européenne et comportait cinq pavillons dont il n’en subsiste que quelques ruines.\r\nEn 1820, le palais Dar Sultan servait aux autorités locales. Avant d’être entièrement ensablé, il était entouré d’une forêt de tamaris.\r\nCe palais à joué un rôle capital dans l’histoire du Maroc, et surtout de la ville d’Essaouira considérée à l’époque le centre de la prise de décision et de concertation avec les consules représentant des puissances étrangères installées à Essaouira.\r\nLes photographes honorent leur voyages à Essaouira par un détour des lieux jusqu’à la plage de Ghrayd Omar / Plage de Diabat.', 31.4836, -9.77127, '9.jpg', 0),
(12, 11, 'HOTEL', 'SOFITEL', 'Le Sofitel Essaouira 5* est tout simplement la quintessence du luxe et du bien-être. Les prestations sont dignes d’un 5* et vous permettront de jouir pleinement du calme et d’une nature généreuse tout en profitant des attraits orientaux d’Essaouira. Parfait pour les familles, les couples, les hommes d’affaires et les groupes d’amis. Attention, l’hôtel est au coeur du golf et donc en retrait à 1.4 Km de la plage au minimum.', '2018-07-30 14:13:13', NULL, NULL, 'Dessiné par Gary Player, il est devenu la référence incontournable des destinations golfiques au Maroc et a su gagner une forte renommée depuis son ouverture en 2009. ', 31.4697, -9.76958, '23.jpg', 0),
(13, 30, 'HOTEL', 'LE MEDINA ', 'Situé en front de mer, à quelques pas de la médina, l’hôtel Le Médina Essaouira Thalassa sea & spa, hôtel de la collection prestigieuse MGallery domine majestueusement une des plus belles plages privées d’Essaouira.\r\nSon architecture, inspirée des sublimes riads marocains, allie harmonieusement à des éléments traditionnels raffinés un design luxueux à la pointe de la modernité. \r\nSes 102 chambres et 15 suites, décorées d’ébénisterie de thuya et de citronnier, offrent à leurs occupants un confort maximum pour un séjour sous le signe de la perfection.\r\nA l’heure des repas, vous avez le choix entre plusieurs restaurants aux spécialités différentes : marocaines, internationales, ou encore diététiques.', '2018-08-08 01:12:12', NULL, NULL, NULL, 31.5084, -9.76827, '24.jpg', 0),
(14, 29, 'HOTEL', 'ATLAS ESSAOUIRA', 'déalement situé sur le front de mer, l’hôtel Atlas Essaouira & Spa vous offre une vue imprenable sur la plage, l’océan atlantique et l’ile de Mogador.\r\nSitué sur l’avenue principale de la ville, à quelques minutes de la Médina d’Essaouira, de ses ruelles colorées et animées, du port et de la Sqala, l’hôtel Atlas Essaouira & Spa vous invite à la détente et au bien être.\r\nLa décoration élégante et raffinée de l’hôtel Atlas Essaouira & Spa allie à la perfection tradition marocaine et tonalités contemporaines.', '2018-08-26 18:23:56', NULL, NULL, NULL, 31.5015, -9.7649, '25.jpg', 0),
(15, 28, 'RESTAURANT', 'TAROS CAFÉ RESTAURANT ', 'Le Taros Café surplombe le port et la grande place d’Essaouira avec vue sur la mer. Dans cette ancienne bâtisse du 18ème siècle se trouvent 3 lieux avec 3 ambiances : le bar tapas idéal pour l’apéritif, le restaurant aux couleurs feutrées avec une carte savamment élaborée par le chef Cyrille Pruvost, et pour finir une grande terrasse sur deux niveaux d’où l’on peut admirer le beau coucher de soleil. Poursuivez votre soirée avec un live music où tout le monde aime se retrouver.', '0000-00-00 00:00:00', NULL, NULL, NULL, 31.5122, -9.76988, '26.jpg', 0),
(16, 22, 'RESTAURANT', 'Café Restaurant Océan Vagabond', 'Le café restaurant de l’Océan Vagabond, attenant à la base nautique Ion Club Océan Vagabond Essaouira, est posé sur la plage, avec transats à l’abri du vent et petites tables en bois sur une terrasse ombragée. Pizzas, grandes salades, sandwichs, hamburgers et paninis sont servis toute la journée. Mais aussi : quelques classiques de la brasserie française (croque-monsieur, assiette de terroir), planchas de viande, et un menu enfant \"petit vagabond\". Jus et boissons sans alcools, vins et bières à la carte..', '2018-12-30 10:00:05', NULL, NULL, NULL, 31.4965, -9.76341, '50.jpg', 0),
(17, 22, 'RESTAURANT', 'Le Cosy Restaurant', 'Le Cosy, bistrot chic, propose une carte à la fois variée et savoureuse au premier étage du Taros, lieu emblématique situé entre le port et l’entrée de la Médina, Place Moulay Hassan à Essaouira.\r\nDans une atmosphère chaleureuse et raffinée, le Cosy offre une cuisine inventive qui revisite quelques classiques français et marocains, tout en offrant la possibilité de déguster les standards \"souiris\". \r\nProfitez-y également d’une carte variée d’apéritifs, vins, bières, alcools, softs et cocktails. \r\nCeviche de Bar, tanjia de boeuf entrées, de plats et de desserts sont à la carte du Cosy.', '2018-12-31 20:31:45', NULL, NULL, NULL, 31.5122, -9.77206, '51.jpg', 0),
(18, 30, 'RESTAURANT', 'Restaurant la Table des Douars', 'Au restaurant de La Table des Douars, logé dans un magnifique Ksar à quelques km d’Essaouira, on sert une cuisine méditerranéenne, légère le midi (suggestions sur l’ardoise), gourmande le soir et selon le marché du jour. Le cadre se prête à un vrai moment de détente et de déconnexion entre jardins et piscine. \r\nTous les dimanches à partir de 13h, grand barbecue en buffet à volonté. \r\nDéjeunez ou dîner à La Table des Douars : sur réservation uniquement.', '2018-12-31 23:11:01', NULL, NULL, NULL, 31.4493, -9.70471, '52.jpg', 0),
(19, 10, 'RESTAURANT', 'Restaurant l’Heure Bleue', 'Nichée au cœur d’un palais Riad de prestige Relais & Châteaux, l’Heure Bleue est une des grandes tables de Maroc.\r\nDans le patio, sur la terrasse ou dans l’intimité d’un des salons, vous dégusterez une gastronomie marocaine revisitée, à laquelle le talentueux chef mêle avec brio quelques notes françaises.', '2018-12-31 23:55:51', NULL, NULL, NULL, 31.5122, -9.76594, '53.jpg', 0),
(20, 3, 'HOTEL', 'Maison d’hôtes Les Jardins de Villa Maroc', 'Les Jardins de Villa Maroc, est une grande bâtisse construite dans la région d’Essaouira entourée par les champs d’oliviers d’arganiers, et d’un jardin méditerranéen. Décorée dans des tons poudrés et naturels, la maison est conçue comme un lieu de détente et de déconnexion, avec 3 chambres offrant une capacité de 9 personnes. La maison est également disponible à la location en exclusivité à la nuit ou à la semaine.\r\nIndépendamment de la maison, le restaurant-piscine Les Jardins de Villa Maroc propose également des barbecues au bord de sa propre piscine, tous les midis. Une annexe gourmande qui vaut également le détour.\r\nLe restaurant se propose d’organiser vos mariages, anniversaires, baptêmes...etc.', '2019-01-05 11:57:09', NULL, NULL, NULL, 31.5262, -9.6397, '54.jpg', 0),
(21, 5, 'HOTEL', 'Les Jardins d’Argane', 'Les Jardins d’Argane maison et table d’hôtes située à 14 km d’Essaouira, se trouve en pleine campagne. Dotée de 7 chambres confortables et équipées, la maison propose à ses invités une piscine extérieure chauffée, jardins et même une petite ferme aux animaux.', '2019-01-12 21:43:19', NULL, NULL, NULL, 31.4943, -9.68033, '55.jpg', 0),
(22, 10, 'HOTEL', 'Riad Les Deux Mondes', 'pacieux, authentique et paisible, le Riad Les Deux Mondes propose 8 grandes chambres lumineuses à louer, avec salle de bain privative, dans un cadre naturel authentique et sur une propriété de près d’un hectare. \r\nConçu commune maison pour se ressourcer, vous trouverez au Riad Les Deux Mondes un potager bio (permaculture) et les animaux de la ferme (poules, âne), une piscine ensoleillée, hamacs et tente berbère dans les jardins.\r\nSur place profitez d’une alimentation revitalisante à base de produits frais, bio et sains dont les jus de légumes et smoothies. Des retraites de yoga, séjours \" détox \" et bien-être y sont d’ailleurs organisés.', '2019-01-31 06:55:59', NULL, NULL, NULL, 31.4943, -9.74569, '56.jpg', 0),
(23, 9, 'HOTEL', 'Riad Dar Assalama', 'Dans la Médina d’Essaouira, le Dar Assalama est un petit riad rénové dans le respect de la tradition. Le décor est typiquement marocain avec du taddelakt et du zellige dans chaque pièce.\r\nLa maison se compose d’un beau patio entouré de salons marocains avec cheminées, 6 chambres luxueuses offrant tout le confort attendu, et une belle terrasse dévoilant tous les recoins de la vieille ville de pécheurs.\r\nRestauration possible pour le dîner.\r\nPossibilité de location exclusive du riad.', '2019-02-21 13:23:09', NULL, NULL, NULL, 31.5123, -9.76764, '57.jpg', 0),
(24, 6, 'HOTEL', 'Hôtel Sol E Luna', 'Sol E Luna est un petit riad situé à la campagne, dotés de 8 chambres. \r\nChacun des logements est équipé de salle de bain privative.\r\nPour les repas, le restaurant propose des plats méditerranéens et des pizzas cuites au feu de bois.', '2019-02-28 17:38:50', NULL, NULL, NULL, 31.3873, -9.68788, '58.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_member` int(11) NOT NULL,
  `contenu` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_fd_id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `content` varchar(1024) NOT NULL,
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `validate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `com_fk_article` (`article_id`),
  KEY `com_fk_member` (`id_member`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commentaires`
--

INSERT INTO `commentaires` (`id`, `article_id`, `id_member`, `content`, `at`, `validate`) VALUES
(1, 1, 1, 'Hello there', '2019-03-20 11:24:39', 1),
(2, 1, 1, 'How are you bro ?', '2019-03-20 11:24:49', 1),
(3, 1, 1, 'dsf\n', '2019-03-20 11:52:16', 1),
(5, 1, 5, 'sdfsdf sdf dsf', '2019-03-20 12:37:49', 1),
(7, 1, 1, 'Hello there how are you .?', '2019-03-23 17:52:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_member` int(11) NOT NULL,
  `titre` varchar(64) NOT NULL,
  `datedep` date NOT NULL,
  `datefin` date NOT NULL,
  `description` text NOT NULL,
  `cordx` float NOT NULL,
  `cordy` float NOT NULL,
  `image` varchar(512) NOT NULL,
  `type` varchar(10) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `id_member`, `titre`, `datedep`, `datefin`, `description`, `cordx`, `cordy`, `image`, `type`, `active`, `at`) VALUES
(9, 1, 'Hotel Atlas Music is the life', '2019-03-06', '2019-03-29', 'Risque vehicula blandit semper placerat tiam cras quam enas. Estmorbi molest fusce lacini fringi mollis. Nibhcras egetal rosed utcras fermen luctus vehicula class. Egestas iam vivamus pharetra nisl lorem naeos amet natis. Uam suspendi nullam ris anunc justo lobortis quamsusp sociis.Lacusaen eger iaculis fermen faucibus non netus. Nequeal rutrum modnam mi faucibu blandi mauris. Anunc natis rerit maurisin lacusaen sagittis auctorpr musetiam vallis mauris. Dis cing afusce vulput ultricie malesu euismo erossed urnavest. Laut nascetur ger accums egetlor duis nuncnunc enas cing. Roin orem tortor urnavest leofusce enimlo. Loremin proin tfusce sellus arcu imperdie senectus enimlo rutruma lorem.\n\nMagnaqu laciniai asin sapien usce adipisci molesti eleifen ullam eger. Tate msed mauris nequenu euismo leopelle non consect. Quamve orper vitaenu posuere sollic modnam vulput nullam sent. Consequa lacuse aliquama dolordo idnulla semper parturi. Lectus rissed ipsumnam consequa nunc pornam massa faucibus. Purus nuncnunc facilis ris convalli necinte sodales. Quam edonec que ris uis tetiam dictumdu unc nullam adipis. Commodo lorem estnulla himena scum facili risque. Liberos convalli eu ipsumnam bulum orper imperdie non. Enulla tiam euismod lla porttit elitphas sollic ulum ent.\n\nLacusaen eger iaculis fermen faucibus non netus. Nequeal rutrum modnam mi faucibu blandi mauris. Anunc natis rerit maurisin lacusaen sagittis auctorpr musetiam vallis mauris. Dis cing afusce vulput ultricie malesu euismo erossed urnavest. Laut nascetur ger accums egetlor duis nuncnunc enas cing. Roin orem tortor urnavest leofusce enimlo. Loremin proin tfusce sellus arcu imperdie senectus enimlo rutruma lorem.Lacusaen eger iaculis fermen faucibus non netus. Nequeal rutrum modnam mi faucibu blandi mauris. Anunc natis rerit maurisin lacusaen sagittis auctorpr musetiam vallis mauris. Dis cing afusce vulput ultricie malesu euismo erossed urnavest. Laut nascetur ger accums egetlor duis nuncnunc enas cing. Roin orem tortor urnavest leofusce enimlo. Loremin proin tfusce sellus arcu imperdie senectus enimlo rutruma lorem.\n\nMagnaqu laciniai asin sapien usce adipisci molesti eleifen ullam eger. Tate msed mauris nequenu euismo leopelle non consect. Quamve orper vitaenu posuere sollic modnam vulput nullam sent. Consequa lacuse aliquama dolordo idnulla semper parturi. Lectus rissed ipsumnam consequa nunc pornam massa faucibus. Purus nuncnunc facilis ris convalli necinte sodales. Quam edonec que ris uis tetiam dictumdu unc nullam adipis. Commodo lorem estnulla himena scum facili risque. Liberos convalli eu ipsumnam bulum orper imperdie non. Enulla tiam euismod lla porttit elitphas sollic ulum ent.\n\nLacusaen eger iaculis fermen faucibus non netus. Nequeal rutrum modnam mi faucibu blandi mauris. Anunc natis rerit maurisin lacusaen sagittis auctorpr musetiam vallis mauris. Dis cing afusce vulput ultricie malesu euismo erossed urnavest. Laut nascetur ger accums egetlor duis nuncnunc enas cing. Roin orem tortor urnavest leofusce enimlo. Loremin proin tfusce sellus arcu imperdie senectus enimlo rutruma lorem. Llam isised varius dum sociosqu purusd egestas tortor nec sapienv. Lum nullam nas teger tdonec llam nunc. Portamor erdiet roin uis iennam dictumst aenean iam estmorbi.', 2.5, 3.3, 'i5c9e46ae11435.jpg', 'music', 1, '2019-03-29 16:24:14'),
(8, 1, 'Dar Essaouiri Eljaadid', '2019-03-08', '2019-03-07', 'ds\nWhat is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using `Content here, content here`, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for `lorem ipsum` will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n\nWhere does it come from?\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n\nWhere can I get some?\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\n\n\n5\n	paragraphs\n	words\n	bytes\n	lists\n	Start with Lorem\nipsum dolor sit amet...\n', 1, 1, 'i5c9e45d20b08f.jpg', 'festival', 1, '2019-03-29 16:20:34');

-- --------------------------------------------------------

--
-- Table structure for table `membre`
--

DROP TABLE IF EXISTS `membre`;
CREATE TABLE IF NOT EXISTS `membre` (
  `ID_MEMBRE` int(10) NOT NULL AUTO_INCREMENT,
  `NOM_MEMBRE` varchar(30) NOT NULL,
  `PRENOM_MEMBRE` varchar(30) NOT NULL,
  `LOGIN_MEMBRE` varchar(70) NOT NULL,
  `PWD_MEMBRE` varchar(64) NOT NULL,
  `DATEN_MEMBRE` date NOT NULL,
  `LEVEL` int(11) DEFAULT '1',
  `CREE_A` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_MEMBRE`),
  KEY `NOM_MEMBRE` (`NOM_MEMBRE`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membre`
--

INSERT INTO `membre` (`ID_MEMBRE`, `NOM_MEMBRE`, `PRENOM_MEMBRE`, `LOGIN_MEMBRE`, `PWD_MEMBRE`, `DATEN_MEMBRE`, `LEVEL`, `CREE_A`) VALUES
(1, 'Aguerram', 'Mostafa', 'agurram@live.fr ', '4a7d1ed414474e4033ac29ccb8653d9b', '1987-02-12', 2, '2019-03-22 16:13:44'),
(2, 'luis', 'charlie', 'luis-charlie00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1990-10-30', 1, '2019-03-22 16:13:44'),
(3, 'mahzoz', 'omar', 'mahzoz-omar00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1975-11-12', 1, '2019-03-22 16:13:44'),
(4, 'echigar', 'hanane', 'echigar-hanane00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1998-01-01', 1, '2019-03-22 16:13:44'),
(5, 'mabrouk', 'mouna', 'mabrouk-mouna00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1997-03-31', 2, '2019-03-22 16:13:44'),
(6, 'oubihi', 'hanan', 'oubihi-hanan00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1986-12-17', 1, '2019-03-22 16:13:44'),
(7, 'linois', 'luis', 'linois-luis00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1988-06-30', 1, '2019-03-22 16:13:44'),
(8, 'bernand', 'martin', 'bernand-martin00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1996-02-26', 1, '2019-03-22 16:13:44'),
(9, 'dubois', 'james', 'dubois-james00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1970-07-28', 1, '2019-03-22 16:13:44'),
(10, 'patris', 'naina', 'patris-naina00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1978-09-09', 1, '2019-03-22 16:13:44'),
(11, 'megan', 'alicia', 'megan-alicia00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1988-10-10', 1, '2019-03-22 16:13:44'),
(21, 'ensida', 'barbara', 'ensida-barbara00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1988-07-14', 1, '2019-03-22 16:13:44'),
(22, 'saad allah', 'yassmine', 'saad-yassmine00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1969-12-12', 1, '2019-03-22 16:13:44'),
(23, 'conor', 'jack', 'conor-jack00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1989-09-29', 1, '2019-03-22 16:13:44'),
(24, 'lionnel', 'fabian', 'lionnel-fabian00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1985-12-11', 1, '2019-03-22 16:13:44'),
(25, 'essaidi', 'karim', 'essaidi-karim00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1970-10-30', 1, '2019-03-22 16:13:44'),
(26, 'hilal', 'ahmed', 'hilal-ahmed00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1963-12-05', 1, '2019-03-22 16:13:44'),
(27, 'alfred', 'donald', 'alfred-donald00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1970-11-23', 1, '2019-03-22 16:13:44'),
(28, 'selessia', 'melissa', 'selessia-melissa00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1989-04-05', 1, '2019-03-22 16:13:44'),
(29, 'mason', 'robert', 'mason-robert00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1967-02-28', 1, '2019-03-22 16:13:44'),
(30, 'margaret', 'emma', 'margaret-emma00@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '1990-12-31', 1, '2019-03-22 16:13:44'),
(31, 'dsfdsf', 'fdfsdf', 'agurram@live.com ', '4a7d1ed414474e4033ac29ccb8653d9b', '2019-03-06', 1, '2019-03-22 16:13:44'),
(32, 'Aguerram', 'Mostafa', 'agurram2013@gmail.com ', '4a7d1ed414474e4033ac29ccb8653d9b', '1998-06-29', 1, '2019-03-22 16:13:44');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_ARTICLE_SUGGESTER_MEMBRE` FOREIGN KEY (`ID_MEMBRE`) REFERENCES `membre` (`ID_MEMBRE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
