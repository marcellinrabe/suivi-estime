-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 02 nov. 2021 à 07:15
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test_iteams`
--

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` char(255) NOT NULL,
  `prenom` char(255) DEFAULT NULL,
  `prenom_usuel` char(30) DEFAULT NULL,
  `user_github` varchar(50) DEFAULT NULL,
  `user_github_pic` varchar(255) DEFAULT 'assets/img/useravatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `nom`, `prenom`, `prenom_usuel`, `user_github`, `user_github_pic`) VALUES
(28, 'BAKARY', 'Gaetan Jonathan', 'Gaetan', 'gaetan1903', 'assets/img/useravatar.png'),
(29, 'BOTORAVONY', 'Arlème Johnson', 'Arlème', 'rootkit7628', 'assets/img/useravatar.png'),
(30, 'MASY', 'Charla Rosalie', 'Charla', 'Charla19', 'assets/img/useravatar.png'),
(31, 'RAFANOMEZANA', 'Herimamy Hasintso', 'Hasintso', 'hasintso2071', 'assets/img/useravatar.png'),
(32, 'HAJATIANA', 'Sitraka', 'Haja', 'Jayah001', 'assets/img/useravatar.png'),
(33, 'LIANTSOA', 'Santatriniana Melchia', 'Melchia', 'mel1742', 'assets/img/useravatar.png'),
(34, 'Randriamanantena Grégoire', 'DOMINICK', 'Dominick', 'c3k4ah', 'assets/img/useravatar.png');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
