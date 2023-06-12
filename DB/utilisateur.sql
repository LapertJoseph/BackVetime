

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `infs3_prj19`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUser` int(3) NOT NULL,
  `nomUser` varchar(20) NOT NULL,
  `prnmUser` varchar(20) NOT NULL,
  `emailUser` varchar(50) NOT NULL,
  `passwordUser` varchar(128) NOT NULL,
  `villeUser` varchar(30) NOT NULL,
  `adresseUser` varchar(50) NOT NULL,
  `CPUser` int(5) NOT NULL,
  `telUser` char(15) NOT NULL,
  `isVeto` tinyint(1) DEFAULT 0,
  `token` varchar(130) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUser`, `nomUser`, `prnmUser`, `emailUser`, `passwordUser`, `villeUser`, `adresseUser`, `CPUser`, `telUser`, `isVeto`, `token`) VALUES
(1, 'Pol', 'Mathis', 'polpolmathis@gmail.com', '6ffdd5fec0a2c1e7e5544cc5328766fee01e8063497719a5659f79287fd07ca4df1fc75d2fa1095840a722e3789d6373e3c6911459bdf447428757d273bd8b1d', 'Cernay-les-Reims', '78 rue general Leclerc', 51420, '07.69.87.59.24', 0, ''),
(4, 'Dupont', 'Jack', 'dupontjack@iut.fr', '42a54e2f4ebad45f32c370d2de587c74e77cc1d13ea256426260c617279563f67c66a70d6c7f7ff14bcdf576e605d97edddc8783dc3ba1c258a11f4f4f6a8343', 'Reims', '51 rue de l\'iut', 51100, '06.06.06.06.06', 0, ''),
(5, 'Soignier', 'Stephanie', 'Soignier.stephanie.pro@gmail.fr', '24604c5285dbe7e63af9922bc9c391c7d50229275daa75b14cb043e7c5479ad8c2f8194e0fcb2424b14cea343e6834a010edfe5cbd60c007b9f1dc2d054a68ac', 'Reims', '36 avenue des chatons', 51100, '08.36.48.06.91', 1, ''),
(6, 'Hanin', 'Colin', 'colin.hanin@etudiant.univ-reims.fr', 'df6b9fb15cfdbb7527be5a8a6e39f39e572c8ddb943fbc79a943438e9d3d85ebfc2ccf9e0eccd9346026c0b6876e0e01556fe56f135582c05fbdbb505d46755a', 'Reims', '12 Rue des Lilas', 51100, '0606060606', 0, ''),
(7, 'test', 'test', 'test@test.fr', '521b91ffa23194473a187c58d83b3e39d7f56c2733b812fddcdccec25efda7717bc21301c49ae4c682a3ef54684f2c624cc8bd3082f91cba8b7f41e0cd38b62a', 'Reims', '51 rue de l\'iut', 51100, '0606060606', 0, 'cc72795fee91985fa2002de862eb12c520220dd86c6458d27e9a146f432666c13cd5f3e63ec09af8edccfe0f855b61d4eb65045a07cec3de2d06ad7fa9a05e83'),
(8, 'Didier', 'Robertine', 'domdom@gmail.com', '67dc3775bcc5f44f7576f645f4ce362eb5db729c0c93bf81b4cb30ff4c23cf002efaaa579d6624020aab92571df6eb69cf346cf79320e6a5cf379ca15cafe388', 'Reims', '2 rue des clochards', 56200, '0656565656', 0, '9203d0a41df0ea3a4033e793972b9c0c68bc5d3061d1a8f131872786e941c560972f4a9706c74f90923393ca9ebb4f6350e047fcd7b06bdebeab31874b7a08d7'),
(9, 'Amaury', 'Guindon', 'amaury.guindon@etudiant.univ-reims.fr', '1b07f72a303933da80e24aca8df96dbce87dec806b228c16dcd488980c59b326f0f7fe789507ea66ee9e8db40cba0a3856b285a4f2efa8ce65b7e3b6d13b7bf2', 'Tournan en Brie', '46 rue de Provins', 77220, '0666458414', 0, '32ccd82f62e9f84093fcef37d1a5f1d5f6021d78a6c2c63bf5a5e70b31529110ef83b6156649d490c24209fd4f071a9f20b5b73c136c6180906a8e3928fa0079'),
(11, 'Pol', 'Ines', 'inespol@sfr.fr', '781336b039ab390f0d7507f4cafca9ae19cff13cca581c2bf3611a61a0cfbad6fa2cf35df3de1c02161dd9903242c5da3845c4162a1119b691b9c1f097feac36', 'cernay les reims', '32 rue charles de gaulles', 511420, '0769875927', 0, '8030758e2a1dc46082f58904d5dff3d39b83a7c7d8552046a3d7f7236ca7c978ce596c6318f011a5a0cbc1ce72afbb08fef9f6b94ea6747471c3203a8ab25963');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUser` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
