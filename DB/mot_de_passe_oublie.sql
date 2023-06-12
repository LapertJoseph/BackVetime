
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `infs3_prj19`
--

-- --------------------------------------------------------

--
-- Structure de la table `mot_de_passe_oublie`
--

CREATE TABLE `mot_de_passe_oublie` (
  `id` int(11) NOT NULL,
  `token_user` varchar(130) NOT NULL,
  `token` varchar(130) NOT NULL,
  `date_recover` datetime NOT NULL DEFAULT current_timestamp(),
  `idUser` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mot_de_passe_oublie`
--

INSERT INTO `mot_de_passe_oublie` (`id`, `token_user`, `token`, `date_recover`, `idUser`) VALUES
(2, '', '63311d4c6bdf3cf471719342da839e5663a2c7fb44dd2966', '2021-11-24 15:02:40', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mot_de_passe_oublie`
--
ALTER TABLE `mot_de_passe_oublie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_____idUser` (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mot_de_passe_oublie`
--
ALTER TABLE `mot_de_passe_oublie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `mot_de_passe_oublie`
--
ALTER TABLE `mot_de_passe_oublie`
  ADD CONSTRAINT `fk_____idUser` FOREIGN KEY (`idUser`) REFERENCES `utilisateur` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
