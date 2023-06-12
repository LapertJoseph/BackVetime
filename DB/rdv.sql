
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `infs3_prj19`
--

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE `rdv` (
  `idRdv` int(11) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rdv`
--

INSERT INTO `rdv` (`idRdv`, `date`, `timeslot`, `nom`, `email`) VALUES
(14, '2021-12-14', '11:15AM - 11:30AM', 'Hanin', 'colin.hanin@etudiant.univ-reims.fr'),
(15, '2021-11-30', '16:30PM - 17:00PM', 'bidule', 'bidule@bidule.fr'),
(16, '2021-12-09', '09:30AM - 09:45AM', 'Amaury', 'amaury.guindon@etudiant.univ-reims.fr'),
(18, '2021-12-24', '13:00PM - 13:15PM', 'Maxence la grosse pute', 'grossepute@tchoin.fr'),
(19, '2021-12-24', '13:00PM - 13:15PM', 'Maxence la grosse pute', 'grossepute@tchoin.fr');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD PRIMARY KEY (`idRdv`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `rdv`
--
ALTER TABLE `rdv`
  MODIFY `idRdv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
