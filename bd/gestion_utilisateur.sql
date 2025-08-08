-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 08 août 2025 à 12:35
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
('DoctrineMigrations\\Version20250801121442', '2025-08-01 12:14:51', 267),
('DoctrineMigrations\\Version20250805064132', '2025-08-05 06:41:49', 1065),
('DoctrineMigrations\\Version20250805065441', '2025-08-05 06:54:48', 575),
('DoctrineMigrations\\Version20250805071332', '2025-08-05 07:13:37', 186),
('DoctrineMigrations\\Version20250805072556', '2025-08-05 07:26:01', 2620),
('DoctrineMigrations\\Version20250805112003', '2025-08-05 11:20:10', 2036),
('DoctrineMigrations\\Version20250805112352', '2025-08-05 11:23:58', 59),
('DoctrineMigrations\\Version20250805121922', '2025-08-05 12:19:27', 2537),
('DoctrineMigrations\\Version20250806054711', '2025-08-06 05:48:03', 449),
('DoctrineMigrations\\Version20250806073159', '2025-08-06 07:32:22', 1570),
('DoctrineMigrations\\Version20250806081100', '2025-08-06 08:11:08', 1478),
('DoctrineMigrations\\Version20250806083052', '2025-08-06 08:31:06', 1585);

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
  `deleted_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fonction_valide`
--

INSERT INTO `fonction_valide` (`id`, `annee`, `nummois`, `ensemble`, `prod_alim_bois_nalc`, `tissu_vetement`, `logt_et_combust`, `am_eqmena_entc_m`, `sante`, `transports`, `loisir_spect_cult`, `enseignement`, `hotel_cafe_rest`, `autres_bien_serv`, `bois_alc_tab`, `communications`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, '2022', '12', '231', '5', '878.56', '4.19', '7.5', '9', '6', '1', '3', '6', '8', '38', '4', NULL, '0000-00-00 00:00:00', '2025-08-08 06:28:25'),
(5, '2001', '6', '625', '98', '95', '36', '2', '1', '8', '12', '9', '3', '1', '9', '8', NULL, '0000-00-00 00:00:00', '2025-08-07 12:51:06');

-- --------------------------------------------------------

--
-- Structure de la table `fonction_valide_historique`
--

DROP TABLE IF EXISTS `fonction_valide_historique`;
CREATE TABLE IF NOT EXISTS `fonction_valide_historique` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fonction_valide_id` int NOT NULL,
  `date_modification` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `modifie_par` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B30980361ECA5C78` (`fonction_valide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fonction_valide_historique`
--

INSERT INTO `fonction_valide_historique` (`id`, `fonction_valide_id`, `date_modification`, `modifie_par`) VALUES
(1, 4, '2025-08-06 11:54:40', '95107'),
(2, 4, '2025-08-06 11:55:06', '95107'),
(3, 4, '2025-08-07 15:50:08', 'rojo'),
(4, 5, '2025-08-07 15:51:06', 'rojo'),
(5, 4, '2025-08-08 09:28:25', '95107');

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
  `deleted_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `origine_valide`
--

INSERT INTO `origine_valide` (`id`, `annee`, `nummois`, `ensemble`, `prodlocal`, `prodsemimp`, `prodimport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '2003', '1', '569', '8.45', '2', '8', '2025-08-05', '0000-00-00 00:00:00', NULL),
(3, '2026', '2', '125.6', '68', '8', '48', '2025-08-05', '0000-00-00 00:00:00', NULL),
(4, '2000', '7', '65', '8', '6', '7', '2025-08-05', '0000-00-00 00:00:00', NULL),
(5, '2019', '10', '98', '7', '6', '8', NULL, '0000-00-00 00:00:00', '2025-08-07 15:47:56'),
(6, '2007', '5', '9', '7', '56', '9', NULL, '0000-00-00 00:00:00', '2025-08-07 15:26:13'),
(7, '2017', '3', '657', '7', '20', '5', NULL, '0000-00-00 00:00:00', '2025-08-07 15:55:21'),
(8, '2002', '2', '12', '45', '6', '7', NULL, '2025-08-05 11:24:05', NULL),
(9, '2021', '3', '6', '7', '6', '7', NULL, '2025-08-05 11:25:09', NULL),
(10, '1998', '1', '32', '56', '56', '23', NULL, '2025-08-05 17:17:22', NULL),
(11, '2003', '4', '45', '65', '12', '45', NULL, '2025-08-05 17:17:48', NULL),
(12, '2008', '6', '45', '95.5', '45.2', '89.6', NULL, '2025-08-05 17:18:40', '2025-08-06 08:40:36'),
(13, '2026', '2', '65', '89', '1', '45', NULL, '2025-08-05 17:19:18', '2025-08-05 21:43:46'),
(14, '1965', '3', '45', '201', '56', '89', '2025-08-05', '2025-08-05 17:19:46', '2025-08-05 21:42:56'),
(15, '2007', '4', '65', '2', '3', '6', '2025-08-05', '2025-08-05 17:20:11', '2025-08-05 21:43:12'),
(16, '2004', '10', '23', '45', '10', '45', NULL, '2025-08-06 09:20:16', NULL),
(17, '2004', '12', '46', '8', '3', '2', NULL, '2025-08-06 09:20:51', NULL),
(18, '2009', '5', '2.4', '5.3', '8', '6', NULL, '2025-08-06 09:21:48', NULL),
(19, '2025', '2', '3.2', '6', '5', '2', NULL, '2025-08-06 09:36:12', NULL),
(20, '2025', '5', '125.45', '623.85', '124.36', '658.3', NULL, '2025-08-06 09:37:00', NULL),
(21, '2028', '8', '621', '6', '6', '6', NULL, '2025-08-06 09:38:14', '2025-08-06 10:51:15');

-- --------------------------------------------------------

--
-- Structure de la table `origine_valide_historique`
--

DROP TABLE IF EXISTS `origine_valide_historique`;
CREATE TABLE IF NOT EXISTS `origine_valide_historique` (
  `id` int NOT NULL AUTO_INCREMENT,
  `origine_valide_id` int NOT NULL,
  `date_modification` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `modifie_par` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F7AB30D0DDD45481` (`origine_valide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `origine_valide_historique`
--

INSERT INTO `origine_valide_historique` (`id`, `origine_valide_id`, `date_modification`, `modifie_par`) VALUES
(1, 5, '2025-08-06 10:50:04', '95107'),
(2, 21, '2025-08-06 10:50:36', '95107'),
(3, 21, '2025-08-06 10:51:15', '95107'),
(4, 5, '2025-08-07 08:51:10', '95107'),
(5, 5, '2025-08-07 08:51:28', '95107'),
(6, 5, '2025-08-07 09:30:18', '95107'),
(7, 5, '2025-08-07 15:25:32', 'francino adrien'),
(8, 6, '2025-08-07 15:26:13', 'francino adrien'),
(9, 5, '2025-08-07 15:41:39', '95108'),
(10, 5, '2025-08-07 15:47:56', 'rojo'),
(11, 7, '2025-08-07 15:55:21', '95107');

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
  `deleted_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `secteur_valide`
--

INSERT INTO `secteur_valide` (`id`, `annee`, `nummois`, `ensemble`, `prodvivr_n_t`, `prodvivr_t_n_riz`, `prodvivr_t_riz`, `prodmanufind`, `prodmanufart`, `servpubl`, `servpriv`, `ppn`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '2000', '1', '196.25', '5145', '15', '10', '157.45', '78', '45', '65', '7', NULL, '0000-00-00 00:00:00', '2025-08-07 13:02:18'),
(3, '2002', '45', '62', '2.45', '3', '56.2', '48.65', '10', '5', '6', '1', '2025-08-05', '0000-00-00 00:00:00', NULL),
(5, '2024', '4', '784', '6', '8', '2', '3', '1', '9', '9', '3', NULL, '2025-08-05 12:20:34', '2025-08-08 07:11:13'),
(6, '2016', '4', '7', '8', '9', '5', '6', '7', '6', '2', '4', NULL, '2025-08-06 16:32:47', NULL),
(7, '2005', '10', '1561', '64165', '646', '4689', '321', '8945', '213', '956', '456', NULL, '2025-08-08 10:14:29', '2025-08-08 07:14:57');

-- --------------------------------------------------------

--
-- Structure de la table `secteur_valide_historique`
--

DROP TABLE IF EXISTS `secteur_valide_historique`;
CREATE TABLE IF NOT EXISTS `secteur_valide_historique` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secteur_valide_id` int NOT NULL,
  `date_modification` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `modifie_par` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F71A7CA7596226A6` (`secteur_valide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `secteur_valide_historique`
--

INSERT INTO `secteur_valide_historique` (`id`, `secteur_valide_id`, `date_modification`, `modifie_par`) VALUES
(1, 2, '2025-08-06 11:19:32', '95107'),
(2, 2, '2025-08-06 11:21:20', '95107'),
(3, 2, '2025-08-07 15:02:07', '95108'),
(4, 2, '2025-08-07 16:00:41', '95107'),
(5, 2, '2025-08-07 16:02:18', '95107'),
(6, 5, '2025-08-08 10:11:13', '95107'),
(7, 7, '2025-08-08 10:14:57', '95107');

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
  `nom` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_MATRICULE` (`matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `matricule`, `roles`, `password`, `nom`) VALUES
(2, '95107', '[\"ROLE_USER\"]', '$2y$13$bBq2xalG6jGi9ZniFTjm3Ot719JCLDQ521sQUfR45mMaUQ3NQDI4G', 'rojo'),
(3, '95108', '[\"ROLE_USER\"]', '$2y$13$bBq2xalG6jGi9ZniFTjm3Ot719JCLDQ521sQUfR45mMaUQ3NQDI4G', 'francino adrien');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `fonction_valide_historique`
--
ALTER TABLE `fonction_valide_historique`
  ADD CONSTRAINT `FK_B30980361ECA5C78` FOREIGN KEY (`fonction_valide_id`) REFERENCES `fonction_valide` (`id`);

--
-- Contraintes pour la table `origine_valide_historique`
--
ALTER TABLE `origine_valide_historique`
  ADD CONSTRAINT `FK_F7AB30D0DDD45481` FOREIGN KEY (`origine_valide_id`) REFERENCES `origine_valide` (`id`);

--
-- Contraintes pour la table `secteur_valide_historique`
--
ALTER TABLE `secteur_valide_historique`
  ADD CONSTRAINT `FK_F71A7CA7596226A6` FOREIGN KEY (`secteur_valide_id`) REFERENCES `secteur_valide` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
