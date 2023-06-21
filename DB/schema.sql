SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
SET NAMES utf8;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0;

CREATE OR REPLACE DATABASE vettimeTest;

use vettimeTest;

--
-- Base de données :  `infs3_prj19`
--


--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUser` int(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateur`
--

ALTER TABLE utilisateur MODIFY nomUser varchar(20) NOT NULL;
ALTER TABLE utilisateur MODIFY prnmUser varchar(20) NOT NULL;
ALTER TABLE utilisateur MODIFY emailUser varchar(50) NOT NULL;
ALTER TABLE utilisateur MODIFY passwordUser varchar(128) NOT NULL;
ALTER TABLE utilisateur MODIFY adresseUser varchar(50) NOT NULL;
ALTER TABLE utilisateur MODIFY villeUser varchar(50) NULL;
ALTER TABLE utilisateur MODIFY CPUser INT(5) NULL;
ALTER TABLE utilisateur MODIFY telUser CHAR(15) NULL;
ALTER TABLE utilisateur MODIFY token VARCHAR(130) NULL;

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

ALTER TABLE `rdv` ADD idUser INT(3) NOT NULL;

ALTER TABLE `rdv`
ADD CONSTRAINT `fk_idUser_rdv` FOREIGN KEY (idUser) REFERENCES utilisateur(idUser);

ALTER TABLE `rdv` ADD cabinet_id INT(3) NOT NULL;

ALTER TABLE `rdv`
ADD CONSTRAINT `fk_cabinet_id_rdv` FOREIGN KEY (cabinet_id) REFERENCES cabinet(cabinet_id);

ALTER TABLE `rdv` ADD especeAnimal VARCHAR(50);

ALTER TABLE `rdv` 
MODIFY `timeslot` VARCHAR(255);

ALTER TABLE `rdv` 
MODIFY `nom` VARCHAR(255);

ALTER TABLE `rdv` 
MODIFY `email` VARCHAR(255);
-- --------------------------------------------------------

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


CREATE OR REPLACE TABLE cabinet (
    cabinet_id INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ville VARCHAR(45) NOT NULL,
    cp INT(5) NOT NULL,
    latitude DECIMAL(8,6),
    longitude DECIMAL(9,6)
);

INSERT INTO cabinet (ville, cp , latitude, longitude) VALUES ("VilleJuif", 94800, 48.789390100000006, 2.363719169294484);
INSERT INTO cabinet (ville, cp , latitude, longitude) VALUES ("Gonesse", 95500, 48.98609, 2.447993);

ALTER TABLE cabinet 
ADD idUser int(3) NOT NULL;

ALTER TABLE cabinet
ADD CONSTRAINT `fk_idUser` FOREIGN KEY (idUser) REFERENCES utilisateur(idUser);

ALTER TABLE cabinet ADD adresse VARCHAR(100);
ALTER TABLE cabinet ADD nomCabinet VARCHAR(100);
ALTER TABLE cabinet ADD telCabinet INT(10);

UPDATE cabinet SET idUser = 1 WHERE cabinet_id = 1;
UPDATE cabinet SET idUser = 4 WHERE cabinet_id = 2;
 
UPDATE cabinet SET nomCabinet = "ToutouMinou" WHERE cabinet_id = 1;
UPDATE cabinet SET adresse = "22 rue de paris" WHERE cabinet_id = 1; 
UPDATE cabinet SET telCabinet = 0123456789 WHERE cabinet_id = 1;

UPDATE cabinet SET nomCabinet = "FlairTout" WHERE cabinet_id = 2;
UPDATE cabinet SET adresse = "13 rue du General de Gaulle" WHERE cabinet_id = 2; 
UPDATE cabinet SET telCabinet = 0213456789 WHERE cabinet_id = 2;



--------------------------------------------------------

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


CREATE OR REPLACE TABLE creneau (
   creneau_id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
   disponibilité TINYINT(1) NOT NULL,
   date_start DATETIME
);

ALTER TABLE creneau
ADD cabinet_id INT(3) NOT NULL;

ALTER TABLE creneau
ADD CONSTRAINT `fk_cabinet_id` FOREIGN KEY (cabinet_id) REFERENCES cabinet(cabinet_id);

INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-06-19"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-05-01"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-04-09"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-04-11"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-03-14"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-01-17"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-12-19"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-11-01"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-10-04"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-09-01"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-08-04"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-07-05"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-06-06"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-04-07"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-03-08"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-02-09"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-01-10"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-12-12"), 2);

UPDATE creneau SET cabinet_id = 1 WHERE creneau_id = 1;
UPDATE creneau SET cabinet_id = 2 WHERE creneau_id = 3;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

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

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;
SET SQL_NOTES=@OLD_SQL_NOTES;