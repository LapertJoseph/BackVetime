

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `infs3_prj19`
--

-- --------------------------------------------------------

--
-- Structure de la table `Comptabilité`
--

CREATE TABLE `Comptabilité` (
  `idCompta` int(5) NOT NULL,
  `PU_consultation` float NOT NULL DEFAULT 50,
  `idUser` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Comptabilité`
--
ALTER TABLE `Comptabilité`
  ADD PRIMARY KEY (`idCompta`),
  ADD KEY `fk_____idUser` (`idUser`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Comptabilité`
--
ALTER TABLE `Comptabilité`
  ADD CONSTRAINT `fk_____idUser` FOREIGN KEY (`idUser`) REFERENCES `utilisateur` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
