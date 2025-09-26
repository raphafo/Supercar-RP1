-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 23 sep. 2025 à 07:02
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `supercar`
--

-- --------------------------------------------------------

--
-- Structure de la table `accessoires`
--

DROP TABLE IF EXISTS `accessoires`;
CREATE TABLE IF NOT EXISTS `accessoires` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `accessoires`
--

INSERT INTO `accessoires` (`id`, `titre`, `image`) VALUES
(1, 'Housse de sièges', 'img7.jpg'),
(2, 'Protecteur UV', 'img8.jpg'),
(3, 'Tapis', 'img9.jpg'),
(4, 'Set de démarrage', 'img10.jpg'),
(5, 'Set de nettoyage', 'img11.jpg'),
(6, 'Couvre volant', 'img12.jpg'),
(7, 'ppp', 'accessoi.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `conseils`
--

DROP TABLE IF EXISTS `conseils`;
CREATE TABLE IF NOT EXISTS `conseils` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `conseils`
--

INSERT INTO `conseils` (`id`, `titre`, `contenu`) VALUES
(1, 'Conseils et expertise', '<h1>6 Gestes primordiaux</h1>\r\n<ul>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Vérifier régulièrement les niveaux</span></li>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Vérifier l’état des pneus</span></li>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Surveiller les freins</span></li>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Protéger la voiture des intempéries</span></li>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Contrôler les éclairages</span></li>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Laver régulièrement le véhicule</span></li>\r\n</ul>\r\n\r\n<h2>1. Vérification des niveaux de liquides</h2>\r\n<p>La vérification régulière des niveaux de liquides est un excellent réflexe à avoir...</p>\r\n\r\n<h2>Liquide de transmission</h2>\r\n<p>La vérification du liquide de transmission se fait généralement lorsque le moteur est allumé...</p>\r\n\r\n<h2>L’huile moteur</h2>\r\n<p>Attention, il convient de vérifier le niveau d’huile moteur 1 heure après avoir éteint le moteur...</p>\r\n\r\n<h2>Liquide de frein</h2>\r\n<p>Il s’agit du liquide utilisé pour nettoyer le pare-brise...</p>\r\n\r\n<h2>2. Vérifier l’état des pneus</h2>\r\n<p>Les pneus sont les seuls points de contact entre l’automobile et la route...</p>\r\n\r\n<h2>L’état des reliefs</h2>\r\n<p>Les reliefs du pneu doivent être profonds, visibles et bien sculptés...</p>\r\n\r\n<h2>La pression des pneus</h2>\r\n<p>Il est conseillé de vérifier la pression des pneus au moins une fois par mois...</p>\r\n\r\n<h2>Les flancs</h2>\r\n<p>Contrôlez la partie latérale du pneu. Regardez qu’il n’y ait aucune boursouflure ni de déchirure...</p>\r\n\r\n<h2>3. Faire surveiller les freins</h2>\r\n<p>Pour faire l’entretien régulier de votre voiture, surveillez les freins...</p>\r\n\r\n<h2>4. Protéger la voiture des intempéries</h2>\r\n<p>Votre voiture vit au rythme des quatre saisons...</p>\r\n\r\n<h2>5. Contrôler les éclairages</h2>\r\n<p>Prendre la route de nuit avec de mauvais éclairages...</p>\r\n\r\n<h2>6. Laver régulièrement son véhicule</h2>\r\n<p>Le nettoyage intérieur et extérieur rallonge la durée de vie...</p>');

-- --------------------------------------------------------

--
-- Structure de la table `contactez`
--

DROP TABLE IF EXISTS `contactez`;
CREATE TABLE IF NOT EXISTS `contactez` (
  `idclient` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sujet` varchar(150) DEFAULT NULL,
  `message` text,
  `date_envoi` datetime DEFAULT CURRENT_TIMESTAMP,
  `traite` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idclient`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contactez`
--

INSERT INTO `contactez` (`idclient`, `nom`, `email`, `sujet`, `message`, `date_envoi`, `traite`) VALUES
(1, 'ingrid', 'nkpwee@gmail.com', 'bonjour', 'cava?', '2025-09-22 14:24:52', 1);

-- --------------------------------------------------------

--
-- Structure de la table `essai`
--

DROP TABLE IF EXISTS `essai`;
CREATE TABLE IF NOT EXISTS `essai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lieurecup` varchar(255) DEFAULT NULL,
  `lieudepot` varchar(255) DEFAULT NULL,
  `daterecup` date DEFAULT NULL,
  `datedepot` date DEFAULT NULL,
  `heurerecup` time DEFAULT NULL,
  `date_demande` datetime DEFAULT CURRENT_TIMESTAMP,
  `statut` varchar(50) DEFAULT 'en attente',
  `user_id` int NOT NULL,
  `id_voiture` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `essai`
--

INSERT INTO `essai` (`id`, `nom`, `prenom`, `email`, `lieurecup`, `lieudepot`, `daterecup`, `datedepot`, `heurerecup`, `date_demande`, `statut`, `user_id`, `id_voiture`) VALUES
(1, 'ingrid', 'rapha', 'nkpweeingrid@gmail.com', 'yaounde', 'douala', '2025-08-12', '2025-08-19', '15:30:00', '2025-08-04 02:26:14', 'Terminé', 1, 2),
(2, 'Gabriella', 'Zalika', 'nkpweeingrid@gmail.com', 'douala', 'yaounde ', '2025-09-24', '2025-09-30', '15:30:00', '2025-09-22 15:12:28', 'En cours', 1, 6),
(3, 'Maurice', 'smith', 'maurice@gmail.com', 'douala', 'yaounde', '2025-10-09', '2025-10-12', '15:20:00', '2025-09-22 15:15:01', 'Refusé', 2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ville` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `date_inscription` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `actif` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id`, `nom`, `prenom`, `email`, `ville`, `password`, `date_inscription`, `role`, `actif`) VALUES
(1, 'Bilounga', 'Ingrid', 'nkpweeingrid@gmail.com', 'Yaounde', '$2y$10$hYoPP0tVFhFMdIw0nioYOucNpM2veVhzdHCLrK4ZF4MQ/.S.3Rnya', '2025-08-03 20:25:28', 'admin', 0),
(2, 'Nkpwee', 'Raphaela', 'maurice@gmail.com', 'Yaounde', '$2y$10$55I2wdxq/f.0m3pbrW/jF.ASj3skwvs7yMGczxzrY.hdEJfn8AD5S', '2025-08-08 06:47:37', 'user', 1),
(6, 'Janvier', 'jan', 'janvier@gmail.com', 'quatre bornes', '$2y$10$cb3JKQMMfg5FA3ZLVyiQhOWxEw4We1.0YEPGQQ4D5iq0yTGNO6gsm', '2025-09-22 11:17:14', 'user', 1);

-- --------------------------------------------------------

--
-- Structure de la table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE IF NOT EXISTS `maintenance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `maintenance`
--

INSERT INTO `maintenance` (`id`, `titre`, `image`) VALUES
(1, 'Changer de batterie', 'img2.jpg'),
(2, 'Changer de plaquettes', 'img3.jpg'),
(3, 'Changer de courroie (kit complet)', 'img5.jpg'),
(4, 'Changer de bougies', 'img6.jpg'),
(5, 'Changer de filtre', 'img4.jpg'),
(6, 'Changer vos pneus', 'img1.jpg'),
(7, 'changer vos dents', 'pieces.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `pieces`
--

DROP TABLE IF EXISTS `pieces`;
CREATE TABLE IF NOT EXISTS `pieces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `pieces`
--

INSERT INTO `pieces` (`id`, `titre`, `image`) VALUES
(1, 'Maitre-cylindre', 'img13.jpg'),
(2, 'Alternateur', 'img14.jpg'),
(3, 'Embrayage', 'img15.jpg'),
(4, 'Radiateur', 'img16.jpg'),
(5, 'boite de vitesse', 'img17.jpg'),
(6, 'moteur', 'img18.jpg'),
(7, 'batterie', 'logo.png');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) DEFAULT NULL,
  `description` text,
  `lien` varchar(255) DEFAULT NULL,
  `icone` varchar(100) DEFAULT NULL,
  `details` text,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `image6` varchar(255) DEFAULT NULL,
  `type` enum('galerie','texte') DEFAULT 'galerie',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `titre`, `description`, `lien`, `icone`, `details`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `type`) VALUES
(1, 'Maintenance de voiture', 'Un entretien proactif est essentiel pour profiter d\'un véhicule fiable et économique à long terme.', 'services/maintenance.php', 'bi bi-tools', NULL, 'img2.jpg', 'img3.jpg', 'img5.jpg', 'img6.jpg', 'img4.jpg', 'img1.jpg', 'galerie'),
(2, 'Vente d\'Accessoires', 'Découvrez notre large sélectiond\'accessoires de voiture de qualité pour améliorer le confort, la sécurité et les performances de votre véhicule.', 'services/accessoires.php', 'bi bi-cart', NULL, 'img7.jpg', 'img8.jpg', 'img9.jpg', 'img10.jpg', 'img11.jpg', 'img12.jpg', 'galerie'),
(3, 'Pièces de rechange', 'Trouvez des pièces détachées de qualité pour tous types de véhicules, pour assurer leur performance et leur longévité', 'services/pieces.php', 'bi bi-gear', NULL, 'img13.jpg', 'img14.jpg', 'img15.jpg', 'img16.jpg', 'img17.jpg', 'img18.jpg', 'galerie'),
(4, 'Conseils et expertise', 'Bénéficiez de notre expertise pour des conseils personnalisés, vous aidant à entretenir et réparer votre véhicule en toute confiance', 'services/conseil.php', 'bi bi-person-check', '<h1>6 Gestes primordiaux</h1>\r\n<ul>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Vérifier régulièrement les niveaux</span></li>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Vérifier l’état des pneus</span></li>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Surveiller les freins</span></li>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Protéger la voiture des intempéries</span></li>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Contrôler les éclairages</span></li>\r\n  <li><i class=\"bi bi-check2-all\"></i> <span>Laver régulièrement le véhicule</span></li>\r\n</ul>\r\n<h2>1. Vérification des niveaux de liquides</h2>\r\n<p>La vérification régulière des niveaux de liquides est un excellent réflexe à avoir. Ce geste prévient les risques de panne, les problèmes mécaniques et d’éventuels accidents.</p>\r\n    \r\n    <h2>Liquide de transmission</h2>\r\n    <p>La vérification du liquide de transmission se fait généralement lorsque le moteur est allumé et encore chaud. En vous référant au manuel du propriétaire de votre véhicule, trouvez la jauge du liquide de transmission. Retirez complètement la jauge et essuyez-la avec un vieux chiffon, puis replongez de nouveau la jauge dans le carter. Sortez-la de nouveau et lisez le niveau de liquide indiqué. \r\n        Vérifiez que le niveau de liquide correspond à celui indiqué dans le manuel et ajustez-le si nécessaire.</p>\r\n    \r\n    <h2>L’huile moteur</h2>\r\n    <p>Attention, il convient de vérifier le niveau d’huile moteur 1 heure après avoir éteint le moteur. Autrement, vous risquez de vous faire asperger d’huile brûlante ou de mal lire le niveau. L’opération à effectuer est exactement la même que pour le liquide de transmission. De nouveau, \r\n        il faut vérifier que le niveau est bien situé entre les deux marques sur la jauge.</p>\r\n    \r\n    <h2>Liquide de frein</h2>\r\n    <p>Il s’agit du liquide utilisé pour nettoyer le pare-brise. Peu coûteux, il permet de retirer les insectes et saletés qui restent collés sur le pare-brise de la voiture. En hiver,\r\n         optez pour un liquide lave-glace antigel, pour éviter les mauvaises surprises.</p>\r\n    <p>Une fois que vous aurez pris l’habitude de vérifier régulièrement vos niveaux, cette opération ne vous prendra que quelques minutes.</p>\r\n    \r\n<h2>2. Vérifier l’état des pneus</h2>\r\n<p>Les pneus sont les seuls points de contact entre l’automobile et la route. Rouler avec des pneus usés est synonyme de danger. En effet, plus le pneu est lisse, plus les risques de dérapage, perte de contrôle du véhicule et crevaison sont élevés.\r\n         Il convient donc de bien entretenir ses pneus.</p>\r\n    <h2>L’état des reliefs</h2>\r\n    <p>Les reliefs du pneu doivent être profonds, visibles et bien sculptés. Le code de la route précise qu’ils ne doivent pas faire moins de 1,6 mm. \r\n        Vous pouvez facilement vérifier leur profondeur grâce aux témoins d’usure présents dans les rainures principales du pneu.</p>\r\n    \r\n    <h2>La pression des pneus</h2>\r\n    <p>Il est conseillé de vérifier la pression des pneus au moins une fois par mois.\r\n         Pour cela, rendez-vous dans une station service ou procurez-vous un nanomètre.</p>\r\n    \r\n    <h2>Les flancs</h2>\r\n    <p>Contrôlez la partie latérale du pneu. Regardez qu’il n’y ait aucune boursouflure ni de déchirure. Sinon, il est temps de changer de pneu !.</p>\r\n    <p>si vous rencontrez un problème avec vos pneus contactez un concessionnaire</p>\r\n    \r\n    <h2> 3. Faire surveillez les freins</h2>\r\n    <p>Pour faire l’entretien régulier de votre voiture, surveillez les freins. Le garagiste doit vérifier les plaquettes de freins et les disques au moins une fois par an. \r\n        Il devra également voir si le freinage ne présente pas des bruits anormaux ou des grincements inhabituels.</p>\r\n        <h2>4. Protéger la voiture des intempéries</h2>\r\n        <p>Votre voiture vit au rythme des quatre saisons. Pluie, neige, chaleur, soleil abîment prématurément la carrosserie de votre véhicule. Pour protéger au mieux votre voiture, investissez dans une bâche de protection intégrale et des pare-soleil. Autre conseil pour une voiture impeccable :\r\n             garez-vous à l’ombre et évitez de vous stationner sous les arbres.</p>\r\n             \r\n   <h2> 5. Contrôler les éclairages</h2>\r\n        <p>Prendre la route de nuit avec de mauvais éclairages ou une ampoule grillée est très dangereux. Pour bien voir et être vu, vérifiez régulièrement tous vos feux : position, croisement, route, recul, stop, antibrouillard, sans oublier les clignotants. \r\n            Astuce : faites-vous aider d’une tierce personne pour effectuer cette opération.</p>\r\n            \r\n   <h2>6. Laver régulièrement son véhicule</h2>\r\n        <p>Le nettoyage intérieur et le nettoyage extérieur rallongent la durée de vie de votre véhicule. En fonction de la météo et de l’usage que vous faites de votre voiture, \r\n            il est conseillé de laver entre 1 et 4 fois par mois l’intérieur et l’extérieur.</p>\r\n        <p> Lavage aux rouleaux, haute pression, tunnel de lavage… \r\n            Choisissez le mode de lavage extérieur le plus adapté à vos besoins dans un centre de lavage proche de chez vous. Concernant l’intérieur du véhicule, pensez à nettoyer les sièges, le sol, les tapis et le tableau de bord.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'texte');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

DROP TABLE IF EXISTS `voitures`;
CREATE TABLE IF NOT EXISTS `voitures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(100) DEFAULT NULL,
  `annee` int DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`id`, `marque`, `annee`, `prix`, `description`, `image`, `disponible`) VALUES
(1, 'BMW X5', 2023, 500.00, 'Intérieur spacieux et luxueux, conçu pour le confort et les performances robustes.', 'images/bmwx5.jpeg', 1),
(2, 'BMW XM', 2023, 500.00, 'Moteur V8 biturbo 4.4L + moteur électrique, puissance combinée de 653 chevaux, intérieur luxueux et design audacieux.', 'images/bmwx.jpg', 1),
(3, 'BMW G60', 2024, 500.00, 'Disponible en essence, diesel, hybride rechargeable et électrique, avec une puissance allant jusqu\'à 601 chevaux (i5 M60).', 'images/G60.jpg', 1),
(4, 'BMW X3', 2023, 500.00, 'Disponible en essence, diesel et hybride rechargeable, puissance de 184 à 510 chevaux.', 'images/X3.jpg', 1),
(5, 'BMW X7', 2024, 500.00, 'Jusqu\'à 7 places, suspensions adaptatives, finitions en cuir, écran multimédia avancé', 'images/X7.jpg', 1),
(6, 'BMW iX', 2024, 500.00, 'Jusqu’à 523 chevaux, technologie avancée avec BMW iDrive 8 et réalité augmentée.', 'images/IX.jpg', 1),
(7, 'Mercedes EQS Sedan', 2024, 300.00, 'Le Mercedes EQS Sedan est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'images/eqs.jpg', 1),
(8, 'Mercedes EQS SUV', 2024, 600.00, 'Le Mercedes EQS SUV est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'images/eqssuv.jpg', 1),
(9, 'Mercedes Grand Sedan', 2024, 200.00, 'Le Mercedes Grand Sedan est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'images/grandsedan.jpg', 1),
(10, 'Mercedes CLE Cabriolet', 2024, 200.00, 'Le Mercedes CLE Cabriolet est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'images/clecabriolet.jpg', 1),
(11, 'Mercedes G-Class SUV', 2024, 200.00, 'Le Mercedes G-Class SUV est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'images/gsuv.jpeg', 1),
(12, 'Mercedes GLE Coupe', 2024, 200.00, 'Le Mercedes GLE Coupe est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'images/glecoupe.jpg', 1),
(13, 'Toyota 2000 GT', 1967, 500.00, 'Une voiture de sport emblématique des années 1960, conçue en collaboration avec Yamaha. Elle est équipée d\'un moteur avant central et d\'une transmission aux roues arrière.', 'images/toy1.jpeg', 1),
(14, 'Toyota Supra', 2020, 500.00, 'La Toyota Supra est une voiture de sport qui continue de captiver les passionnés d\'automobile avec ses performances et son design. La Supra moderne, notamment la GR Supra, est équipée d\'un moteur turbo de 3,0 litres en ligne. Elle peut passer de 0 à 100 km/h en seulement 3,9 secondes.', 'images/toy2.jpg', 1),
(15, 'Toyota MR2', 1995, 500.00, 'Une voiture de sport compacte, connue pour son agilité et ses performances. La MR2 est appréciée pour sa maniabilité et son plaisir de conduite, ce qui en fait une excellente voiture pour les amateurs de sport automobile.', 'images/toy5.jpeg', 1),
(16, 'Toyota Camry', 2023, 500.00, 'Berline intermédiaire réputée pour son confort, sa fiabilité et ses performances. La Camry est idéale pour les trajets quotidiens et les longs voyages.', 'images/toy7.jpeg', 1),
(17, 'Toyota 86', 2021, 500.00, 'Voiture de sport compacte et agile, appréciée pour ses performances et son plaisir de conduite. La Toyota 86 est conçue pour offrir une expérience de conduite sportive et engageante, idéale pour les amateurs de sensations fortes.', 'images/toy11.jpeg', 1),
(18, 'Toyota  RAV4', 2021, 6000.00, 'SUV populaire, apprécié pour sa polyvalence et ses performances. La RAV4 est idéale pour des trajets quotidiens et les aventures en plein air, offrant confort et fiabilité.', 'images/toy12.jpeg', 0),
(22, 'mercedes audi', 2025, 5000.00, 'belle voiture', 'images/68c3c851147f8.png', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
