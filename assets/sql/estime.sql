-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 01 nov. 2021 à 16:54
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
-- Structure de la table `estime`
--

CREATE TABLE `estime` (
  `id` int(11) NOT NULL,
  `motif` varchar(512) NOT NULL,
  `points` int(11) DEFAULT 0,
  `id_membre` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `estime`
--

INSERT INTO `estime` (`id`, `motif`, `points`, `id_membre`) VALUES
(1, 'test moins 1 sur id n1', -2, 1),
(2, 'TRUE', -4, 2),
(3, 'test pour ce huit oe, tokony 9', 9, 3),
(4, 'aucune', 0, 4),
(5, 'aucune', 0, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `estime`
--
ALTER TABLE `estime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_membre` (`id_membre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `estime`
--
ALTER TABLE `estime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `estime`
--
ALTER TABLE `estime`
  ADD CONSTRAINT `estime_ibfk_1` FOREIGN KEY (`id_membre`) REFERENCES `membres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
