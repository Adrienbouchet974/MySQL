-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : lun. 16 mai 2022 à 13:45
-- Version du serveur :  8.0.19
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

CREATE TABLE `movie` (
  `movie_ID` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `release_date` date NOT NULL,
  `duration` time NOT NULL,
  `director` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creation_date` date NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `movie`
--

INSERT INTO `movie` (`movie_ID`, `title`, `release_date`, `duration`, `director`, `creation_date`, `update_time`) VALUES
(1, 'Iron Man', '2008-04-30', '02:06:00', 'Jon Favreau', '2022-05-16', '2022-05-16 09:52:33'),
(2, 'L\'incroyable Hulk', '2008-07-23', '01:52:00', 'Louis Leterrier', '2022-05-16', '2022-05-16 09:57:07'),
(3, 'Iron Man 2', '2010-04-28', '02:05:00', 'Jon Favreau', '2022-05-16', '2022-05-16 09:59:05'),
(4, 'Thor', '2011-04-27', '01:54:00', 'Kenneth Branagh', '2022-05-16', '2022-05-16 10:01:08'),
(5, 'Captain America : First Avenger', '2011-08-17', '02:04:00', 'Jo Johnston', '2022-05-16', '2022-05-16 10:03:38'),
(6, 'Avengers', '2012-04-25', '02:23:00', 'Joss Whedon', '2022-05-16', '2022-05-16 10:05:19'),
(7, 'Iron Man 3', '2013-04-23', '02:10:00', 'Shane Black', '2022-05-16', '2022-05-16 10:07:06'),
(8, 'Thor : Le monde des ténèbres', '2013-10-30', '01:52:00', 'Alan Taylor', '2022-05-16', '2022-05-16 10:09:55'),
(9, 'Captain America : Le soldat de l\'hiver', '2014-03-26', '02:16:00', 'Anthony & Joe Russo', '2022-05-16', '2022-05-16 10:11:59'),
(10, 'Les Gardiens de la Galaxie', '2014-08-13', '02:02:00', 'James Gunn', '2022-05-16', '2022-05-16 10:16:37'),
(11, 'Avengers : L\'Ère d\'Ultron', '2015-04-22', '02:21:00', 'Joss Whedon', '2022-05-16', '2022-05-16 10:18:48'),
(12, 'Ant-Man', '2015-07-14', '01:58:00', 'Peyton Reed', '2022-05-16', '2022-05-16 08:23:20'),
(13, 'Captain America : Civil War', '2016-04-18', '02:28:00', 'Anthony & Joe Russo', '2022-05-16', '2022-05-16 08:27:30'),
(14, 'Doctor Strange', '2016-10-26', '01:55:00', 'Scott Derrickson', '2022-05-16', '2022-05-16 08:29:11'),
(15, 'Les Gardiens de la Galaxie Vol.2', '2017-05-05', '02:17:00', 'James Gunn', '2022-05-16', '2022-05-16 08:39:14'),
(16, 'Spider-Man : Homecoming', '2017-07-07', '02:13:00', 'Jon Watts', '2022-05-16', '2022-05-16 08:41:07'),
(17, 'Thor : Ragnarok', '2017-10-25', '02:10:00', 'Taika Waititi', '2022-05-16', '2022-05-16 08:59:46'),
(18, 'Black Panther', '2018-02-16', '02:15:00', 'Ryan Coogler', '2022-05-16', '2022-05-16 09:02:15'),
(19, 'Avengers : Infinity War', '2018-04-27', '02:29:00', 'Anthony & Joe Russo', '2022-05-16', '2022-05-16 09:03:26'),
(20, 'Ant-Man et la guêpe', '2018-07-06', '01:58:00', 'Peyton Reed', '2022-05-16', '2022-05-16 09:06:15'),
(21, 'Captain Marvel', '2019-03-06', '02:04:00', 'Anna Boden & Ryan Fleck', '2022-05-16', '2022-05-16 09:08:45'),
(22, 'Avengers : Endgame', '2019-04-24', '03:02:00', 'Anthony & Joe Russo', '2022-05-16', '2022-05-16 09:09:53'),
(23, 'Spider-Man : Far From Home', '2019-06-26', '02:10:00', 'Jon Watts', '2022-05-16', '2022-05-16 09:11:05'),
(24, 'Black Widow', '2021-07-07', '02:13:00', 'Cate Shortland', '2022-05-16', '2022-05-16 09:13:21'),
(25, 'Shang-Chi et la Légende des Dix Anneaux', '2021-09-01', '02:12:00', 'Destin Daniel Cretton', '2022-05-16', '2022-05-16 09:14:24'),
(26, 'Les Éternels', '2021-11-03', '02:37:00', 'Chloé Zhao', '2022-05-16', '2022-05-16 09:15:25'),
(27, 'Spider-Man : No Way Home', '2021-12-15', '02:28:00', 'Jon Watts', '2022-05-16', '2022-05-16 09:16:09'),
(28, 'Doctor Strange in the Multiverse of Madness', '2022-05-04', '02:06:00', 'Sam Raimi', '2022-05-16', '2022-05-16 09:17:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
