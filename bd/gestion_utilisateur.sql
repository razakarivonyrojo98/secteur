-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 04 août 2025 à 13:23
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
-- Base de données : `gestion_utilisateur`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250801061211', '2025-08-01 06:12:27', 993),
('DoctrineMigrations\\Version20250801101817', '2025-08-01 10:19:19', 509),
('DoctrineMigrations\\Version20250801104305', '2025-08-01 10:43:22', 853),
('DoctrineMigrations\\Version20250801120446', '2025-08-01 12:04:56', 263),
('DoctrineMigrations\\Version20250801121442', '2025-08-01 12:14:51', 267);

-- --------------------------------------------------------

--
-- Structure de la table `fonction_valide`
--

DROP TABLE IF EXISTS `fonction_valide`;
CREATE TABLE IF NOT EXISTS `fonction_valide` (
  `id` int NOT NULL AUTO_INCREMENT,
  `annee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nummois` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ensemble` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_alim_bois_nalc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tissu_vetement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logt_et_combust` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `am_eqmena_entc_m` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transports` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loisir_spect_cult` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enseignement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_cafe_rest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autres_bien_serv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bois_alc_tab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `communications` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fonction_valide`
--

INSERT INTO `fonction_valide` (`id`, `annee`, `nummois`, `ensemble`, `prod_alim_bois_nalc`, `tissu_vetement`, `logt_et_combust`, `am_eqmena_entc_m`, `sante`, `transports`, `loisir_spect_cult`, `enseignement`, `hotel_cafe_rest`, `autres_bien_serv`, `bois_alc_tab`, `communications`) VALUES
(4, '2025', '64', '231', '5', '878.56', '4.19', '7.5', '9', '6', '1', '3', '6', '8', '38', '4'),
(5, '2001', '64', '65', '98', '95', '36', '2', '1', '8', '12', '9', '3', '1', '9', '8');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `origine_valide`
--

DROP TABLE IF EXISTS `origine_valide`;
CREATE TABLE IF NOT EXISTS `origine_valide` (
  `id` int NOT NULL AUTO_INCREMENT,
  `annee` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nummois` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ensemble` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodlocal` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodsemimp` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodimport` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `origine_valide`
--

INSERT INTO `origine_valide` (`id`, `annee`, `nummois`, `ensemble`, `prodlocal`, `prodsemimp`, `prodimport`) VALUES
(1, '2002', '12', '15.25', '78', '98', '7852'),
(2, '2003', '1', '569', '8.45', '2', '8');

-- --------------------------------------------------------

--
-- Structure de la table `secteur_valide`
--

DROP TABLE IF EXISTS `secteur_valide`;
CREATE TABLE IF NOT EXISTS `secteur_valide` (
  `id` int NOT NULL AUTO_INCREMENT,
  `annee` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nummois` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ensemble` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodvivr_n_t` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodvivr_t_n_riz` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodvivr_t_riz` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodmanufind` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodmanufart` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servpubl` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servpriv` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `secteur_valide`
--

INSERT INTO `secteur_valide` (`id`, `annee`, `nummois`, `ensemble`, `prodvivr_n_t`, `prodvivr_t_n_riz`, `prodvivr_t_riz`, `prodmanufind`, `prodmanufart`, `servpubl`, `servpriv`, `ppn`) VALUES
(2, '2002', '45', '15.25', '54.01', '15', '10', '157.45', '78', '45', '65', '7'),
(3, '2002', '45', '62', '2.45', '3', '56.2', '48.65', '10', '5', '6', '1');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_MATRICULE` (`matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `matricule`, `roles`, `password`) VALUES
(2, '95107', '[\"ROLE_USER\"]', '$2y$13$bBq2xalG6jGi9ZniFTjm3Ot719JCLDQ521sQUfR45mMaUQ3NQDI4G');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
