-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Hôte : journalltrpedago.mysql.db
-- Généré le : mar. 10 mai 2022 à 14:22
-- Version du serveur : 5.6.50-log
-- Version de PHP : 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `journalltrpedago`
--
CREATE DATABASE IF NOT EXISTS `fskkxwctechno` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fskkxwctechno`;

-- --------------------------------------------------------

--
-- Structure de la table `account`
--

CREATE TABLE `account` (
  `pseudo` varchar(15) DEFAULT NULL,
  `password` varchar(115) DEFAULT NULL,
  `nom` varchar(15) DEFAULT NULL,
  `prenom` varchar(15) DEFAULT NULL,
  `mail` varchar(60) DEFAULT NULL,
  `date_creation` varchar(8) DEFAULT NULL,
  `last_connexion` varchar(8) DEFAULT NULL,
  `ip_connexion` varchar(15) DEFAULT NULL,
  `user_level` varchar(20) DEFAULT NULL,
  `user_avatar` varchar(150) DEFAULT NULL,
  `id_account` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `account`
--

--INSERT INTO `account` (`pseudo`, `password`, `nom`, `prenom`, `mail`, `date_creation`, `last_connexion`, `ip_connexion`, `user_level`, `user_avatar`, `id_account`) VALUES
--('user', '12dea96fec20593566ab75692c9949596833adc9', 'Nom', 'Prénom', 'user@mail.com', '27/09/20', '27/09/20', '127.0.0.1', 'administrateur', '../assets/img_user/necro.gif', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(11) NOT NULL,
  `classe` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `couleur` varchar(7) DEFAULT NULL,
  `img` varchar(150) DEFAULT NULL,
  `background` varchar(120) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `classe`, `couleur`, `img`, `background`, `title`, `description`) VALUES
(28, '6EME', '#5F04B4', 'assets/img_categorie/image moyens de transport.jpg', 'assets/img_background/', 'Cycle 3', 'Bienvenue sur la page réservée aux élèves de 6èmes ! '),
(29, '5EME', '#FF0000', 'assets/img_categorie/index.jpg', 'assets/img_background/', 'Cycle 4', 'Bienvenue sur la page réservée aux élèves de 5ème !'),
(33, '4EME', '#34495E', 'assets/img_categorie/téléchargement.jpg', 'assets/img_background/', 'Cycle 4', 'Bienvenue sur page réservée aux élèves de 4ème !'),
(36, '3EME', '#D7DF01', 'assets/img_categorie/logo_defis_solaires.png', 'assets/img_background/', 'CYCLE 4', 'Bienvenue sur page réservée aux élèves de 3ème !');

-- --------------------------------------------------------

--
-- Structure de la table `chapitre`
--

CREATE TABLE `chapitre` (
  `id` int(11) NOT NULL,
  `name_chap` varchar(100) NOT NULL,
  `classe` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chapitre`
--

INSERT INTO `chapitre` (`id`, `name_chap`, `classe`) VALUES
(59, 'Comment fonctionne mon objet technique ?', '6EME'),
(58, 'Les outils informatiques', '6EME'),
(57, 'Le fonctionnement de l\'objet technique', '3ème Pré'),
(51, 'Salle de Spectacle', '5EME'),
(60, 'Les principales familles de matériaux', '6EME'),
(61, 'Comment fonctionnent les objets programmables ', '6EME'),
(62, 'Pourquoi et comment modifier une construction ?', '5EME'),
(63, 'Comment communiquer, stocker et échanger des informations numériques au collège ?', '5EME'),
(64, 'Que peut apporter la domotique dans la vie quotidienne ?', '4EME'),
(65, 'Comment assurer la sécurité des biens et des personnes ?', '4EME'),
(66, 'Création d\'une Barrière pour la cour du Collège', '3EME'),
(68, 'RAPPELS', '3EME'),
(69, 'LE DEFI SOLAIRE', '3EME'),
(70, 'RAPPELS', '4EME'),
(71, 'Comment les batiments et ouvrages ont-ils évolués ?', '5EME'),
(72, 'Comment programmer un robot ?', '5EME'),
(73, 'Réalisation d\'un objet technique', '6EME'),
(74, 'Quel est l\'impact environnemental de la fabrication d\'un smartphone ?', '5EME');

-- --------------------------------------------------------

--
-- Structure de la table `cour`
--

CREATE TABLE `cour` (
  `id_cour` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `id_chapitre` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cour`
--

INSERT INTO `cour` (`id_cour`, `title`, `url`, `id_chapitre`) VALUES
(108, 'heritage', 'assets/ressource/pdf_cours/Project1.res', 41),
(105, 'c++', 'assets/ressource/pdf_cours/chap2_heritage.pdf', 39),
(107, 'test', 'assets/ressource/pdf_cours/Project1.cbproj.local', 42),
(109, 'image', 'assets/ressource/pdf_cours/proba.tns', 43),
(110, 'Test', 'assets/ressource/pdf_cours/test.docx', 45),
(111, 'test', 'assets/ressource/pdf_cours/test.docx', 46),
(112, 'um \' $$ * ;; ++ \"', 'assets/ressource/pdf_cours/UML2.pdf', 49),
(113, 'test ** ', 'assets/ressource/pdf_cours/00. Template PPT.pptx', 49),
(114, 'josh', 'assets/ressource/pdf_cours/Langage_Cpp.pdf', 50),
(115, 'francky', 'assets/ressource/pdf_cours/Langage_Cpp.pdf', 50),
(119, 'Séance 1', 'assets/ressource/pdf_cours/Séance1.docx', 51),
(118, 'Plan de la salle de spectacle', 'assets/ressource/pdf_cours/plan-salle-festive-grand-couronne.jpg', 51),
(179, 'Internet un outil puissant...correction', 'assets/ressource/pdf_cours/Acti3 Internet un outil puissant ...correction.pdf', 63),
(131, 'test', 'assets/ressource/pdf_cours/UML2.pdf', 53),
(140, 'Synthèse CHAP 2', 'assets/ressource/pdf_cours/Synthèse Comment fonctionne mon objet technique (1)corrigée.pdf', 59),
(141, 'Synthèse', 'assets/ressource/pdf_cours/Synthèse Les principales familles de matériaux.pdf', 60),
(142, 'Fantôme 1', 'assets/ressource/pdf_cours/Fantome1.sb2', 61),
(143, 'Fantôme 2', 'assets/ressource/pdf_cours/Fantome2.sb2', 61),
(144, 'Fantôme 3', 'assets/ressource/pdf_cours/Fantomes3.sb2', 61),
(145, 'Aide sweet home 3d', 'assets/ressource/pdf_cours/aide sweet home 3d.pdf', 62),
(178, 'Internet, un outil puissant mais qui peut être da', 'assets/ressource/pdf_cours/Internet un outil puissant mais.....pdf', 63),
(164, 'Aide logiciel Gantt Project', 'assets/ressource/pdf_cours/Aide logiciel  Gantt Project.pdf', 69),
(166, 'Tutoriel Bridge building game', 'assets/ressource/pdf_cours/Tutoriel_Bridge_Building_Game.pdf', 71),
(165, 'Document Ressource panneaux solaires', 'assets/ressource/pdf_cours/Ressource panneaux solaires(1).pdf', 69),
(152, 'Synthèse Chap 1', 'assets/ressource/pdf_cours/Synthèse Que peut apporter la domotique.pdf', 64),
(153, 'Telecommande 1', 'assets/ressource/pdf_cours/Telecommande1.sb2', 61),
(154, 'Comment implanter un programme dans le robot ?', 'assets/ressource/pdf_cours/Comment téleverser un programme dans MBot(1).pdf', 61),
(155, 'SYNTHESE', 'assets/ressource/pdf_cours/Synthese Comment assurer la sécurité des biens et des personnes.pdf', 65),
(156, 'Création d\'une identité visuelle', 'assets/ressource/pdf_cours/créationlogo 3ème.pdf', 66),
(158, 'Séquence 1 Enoncé du Besoin', 'assets/ressource/pdf_cours/Séquence 1.docx', 66),
(159, 'Séquence 2 Solution Passage', 'assets/ressource/pdf_cours/Séquence 2 solution passage.docx', 66),
(160, 'Machines - Logiciels', 'assets/ressource/pdf_cours/machines.pdf', 68),
(161, 'Machines - Logiciels', 'assets/ressource/pdf_cours/machines.pdf', 70),
(163, 'Comparaison alarme et video surveillance', 'assets/ressource/pdf_cours/Comparaison Alarme et vidéo surveillance.pdf', 65),
(167, 'Ressources Actionneurs', 'assets/ressource/pdf_cours/ressource-actionneurs(1).pdf', 72),
(168, 'Ressources capteurs', 'assets/ressource/pdf_cours/Ressource-capteurs (1).pdf', 72),
(169, 'Sketchup Tutoriel N°1', 'assets/ressource/pdf_cours/Sketchup Tutoriel N°1.skp', 73),
(170, 'Sketchup Tutoriel N°2', 'assets/ressource/pdf_cours/Sketchup Tutoriel N°2.skp', 73),
(171, 'Sketchup Tutoriel N°3', 'assets/ressource/pdf_cours/Sketchup Tutoriel N°3.skp', 73),
(172, 'Comment implanter un programme dans le robot MBot', 'assets/ressource/pdf_cours/Comment téleverser un programme dans MBot(2).pdf', 72),
(174, 'guide-pratique-impacts-smartphone', 'assets/ressource/pdf_cours/guide-pratique-impacts-smartphone.pdf', 74),
(175, 'Séquence 3 Les actionneurs', 'assets/ressource/pdf_cours/Séquence 3 Actionneur.docx', 66),
(176, 'Synthèse logiciels informatiques', 'assets/ressource/pdf_cours/Synthèse comment communiquer....pdf', 63),
(177, 'Activité 2', 'assets/ressource/pdf_cours/Acivité 2 Le réseau informatique.pdf', 63);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_debut` varchar(10) DEFAULT NULL,
  `date_fin` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ressource`
--

CREATE TABLE `ressource` (
  `id` int(11) NOT NULL,
  `url` varchar(120) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `classe` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ressource`
--

INSERT INTO `ressource` (`id`, `url`, `title`, `classe`, `type`) VALUES
(8, 'assets/ressource/file/c6qun-Voiture_ts.easm', 'Voiture', '6 ème', 'edrawings'),
(7, 'assets/ressource/file/bwoes-Trottinette_Electrique.easm', 'Trottinette', '6 ème', 'edrawings'),
(6, 'assets/ressource/file/bwof6-Skate.easm', 'Skate', '6 ème', 'edrawings'),
(5, 'assets/ressource/file/bwodk-V_T_T.easm', 'VTT', '6 ème', 'edrawings'),
(9, 'assets/ressource/file/c04j5-Pont_en_arc.easm', 'Pont en arc', '5 ème', 'edrawings'),
(10, 'assets/ressource/file/c04j6-Pont_a_poutres.easm', 'Pont à poutre', '5 ème', 'edrawings'),
(11, 'assets/ressource/file/c04im-Pont_suspendu.easm', 'Pont suspendu', '5 ème', 'edrawings'),
(12, 'assets/ressource/file/c04i3-Pont_a_haubans.easm', 'Pont à haubans', '5 ème', 'edrawings'),
(13, 'assets/ressource/file/c5u2w-Didacticiel_1.skp', 'Didacticiel 1', '5 ème', 'sketchup'),
(14, 'assets/ressource/file/c5u2y-Didacticiel_2.skp', 'Didacticiel 2', '5 ème', 'sketchup'),
(15, 'assets/ressource/file/c5u30-Didacticiel_3.skp', 'Didacticiel 3', '5 ème', 'sketchup'),
(56, 'assets/ressource/file/La cybercriminalité et le nouveau monde.pdf', 'La cybercriminalité et le nouveau monde', '5EME', 'autre'),
(17, 'assets/ressource/file/trottinette electrique.easm', 'Trottinette électrique', '6EME', 'edrawings'),
(18, 'assets/ressource/file/Skate.easm', 'Skate', '6EME', 'edrawings'),
(19, 'assets/ressource/file/V.T.T.easm', 'VTT', '6EME', 'edrawings'),
(47, 'assets/ressource/file/machines.pdf', 'machines', '3EME', 'autre'),
(53, 'assets/ressource/file/Pont à haubans.easm', 'Pont à haubans', '5EME', 'autre'),
(54, 'assets/ressource/file/Pont à poutre.easm', 'Pont à poutre', '5EME', 'autre'),
(26, 'assets/ressource/file/Pont en arc.easm', 'Pont en arc', '5EME', 'edrawings'),
(27, 'assets/ressource/file/Pont suspendu.easm', 'Pont suspendu', '5EME', 'edrawings'),
(28, 'assets/ressource/file/actionneurs-acti2.exe', 'Domotique4 ', '4EME', 'edrawings'),
(29, 'assets/ressource/file/Fiche métier.pdf', 'Fiche Métier', '5EME', 'autre'),
(30, 'assets/ressource/file/Fiche métier.pdf', 'Fiche métier', '5EME', 'edrawings'),
(31, 'assets/ressource/file/dm4pe.exe', 'Programmation DOM4', '4EME', 'edrawings'),
(52, 'assets/ressource/file/Ressource panneaux solaires(1).pdf', 'Choix des panneaux solaires', '3EME', 'autre'),
(51, 'assets/ressource/file/Projetbatifuté.sh3d', 'projetbatifuté', '5EME', 'autre'),
(48, 'assets/ressource/file/Alarme.flv', 'video alarme', '4EME', 'autre'),
(49, 'assets/ressource/file/documentation-sur-les-differentes-cameras-possibles-dans-un-systeme-de-videosurveillance.pdf', 'Documentation sur les caméras', '4EME', 'autre'),
(50, 'assets/ressource/file/Video surveillance.flv', 'Video surveillance', '4EME', 'autre'),
(44, 'assets/ressource/file/ERP-Les aménagements.pdf', 'ERP Les aménagements', '5EME', 'autre'),
(45, 'assets/ressource/file/Extrait cahier des charges.pdf', 'cahier des charges salle de spectacle', '5EME', 'autre'),
(57, 'assets/ressource/file/Fiche-Méthode-e-Drawings.pdf', 'Fiche méthode edrawings', '6EME', 'autre');

-- --------------------------------------------------------

--
-- Structure de la table `tokens`
--

CREATE TABLE `tokens` (
  `id_token` varchar(150) NOT NULL,
  `id_account` int(11) NOT NULL,
  `date_expi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tokens`
--

--INSERT INTO `tokens` (`id_token`, `id_account`, `date_expi`) VALUES
--('ea4f7850f5ff809f6f2a2359fea6bd967b15ba7b', 37, '2018-12-21 10:45:01'),
--('7f3e1d09858042316f9c22e218b384bbefdd1231', 36, '2018-12-20 16:22:46'),
--('10b490371adb07f640111edb1d06e116814d171a', 37, '2018-12-18 17:21:13');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `chapitre`
--
ALTER TABLE `chapitre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cour`
--
ALTER TABLE `cour`
  ADD PRIMARY KEY (`id_cour`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Index pour la table `ressource`
--
ALTER TABLE `ressource`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id_token`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `account`
--
ALTER TABLE `account`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `chapitre`
--
ALTER TABLE `chapitre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT pour la table `cour`
--
ALTER TABLE `cour`
  MODIFY `id_cour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `ressource`
--
ALTER TABLE `ressource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
