/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `idAnimal` int(3) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `sexe` int(2) DEFAULT NULL,
  `especeAnimal` varchar(50) DEFAULT NULL,
  `poidAnimal` float DEFAULT NULL,
  `idRdv` int(5) DEFAULT NULL,
  `idUser` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Insert des données de la table `animal`
--

INSERT INTO `animal` (`idAnimal`, `age`, `sexe`, `especeAnimal`, `poidAnimal`, `idRdv`, `idUser`) VALUES
(1, 2, 2, 'chien', 20, NULL, 11),
(2, 10, 1, 'chat', 9, NULL, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`idAnimal`),
  ADD KEY `fk_idRdv` (`idRdv`),
  ADD KEY `fk_idUser` (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `idAnimal` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `fk____idUser` FOREIGN KEY (`idUser`) REFERENCES `utilisateur` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idRdv` FOREIGN KEY (`idRdv`) REFERENCES `rdv` (`idRdv`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
