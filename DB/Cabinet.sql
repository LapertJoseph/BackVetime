use vettime;

CREATE OR REPLACE TABLE cabinet (
    cabinet_id INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ville VARCHAR(45) NOT NULL,
    cp INT(5) NOT NULL,
    latitude DECIMAL(8,6),
    longitude DECIMAL(9,6)
);

INSERT INTO cabinet (ville, cp , latitude, longitude) VALUES ("VilleJuif", 94800, 48.789390100000006, 2.363719169294484);
INSERT INTO cabinet (ville, cp , latitude, longitude) VALUES ("Gonesse", 95500, 48.98609, 2.447993);
INSERT INTO cabinet (ville, cp , latitude, longitude) VALUES ("Chilly_Mazarin", 91380, 48.6390100000006, 2.4019169294484);
INSERT INTO cabinet (ville, cp , latitude, longitude) VALUES ("Paris", 75000, 48.989390100000006, 2.363719169294484);
INSERT INTO cabinet (ville, cp , latitude, longitude) VALUES ("Bouville", 91880, 48.789390100000006, 2.843719169294484);

ALTER TABLE cabinet 
ADD idUser int(3) NOT NULL;

ALTER TABLE cabinet
ADD CONSTRAINT `fk_idUser` FOREIGN KEY (idUser) REFERENCES utilisateur(idUser);

ALTER TABLE cabinet ADD adresse VARCHAR(100);
ALTER TABLE cabinet ADD nomCabinet VARCHAR(100);
ALTER TABLE cabinet ADD telCabinet INT(10);

UPDATE cabinet SET idUser = 1 WHERE cabinet_id = 1;
UPDATE cabinet SET idUser = 4 WHERE cabinet_id = 2;
UPDATE cabinet SET idUser = 5 WHERE cabinet_id = 3;
UPDATE cabinet SET idUser = 6 WHERE cabinet_id = 4;
UPDATE cabinet SET idUser = 7 WHERE cabinet_id = 5;
 
UPDATE cabinet SET nomCabinet = "ToutouMinou" WHERE cabinet_id = 1;
UPDATE cabinet SET adresse = "22 rue de paris" WHERE cabinet_id = 1; 
UPDATE cabinet SET telCabinet = 0123456789 WHERE cabinet_id = 1;

UPDATE cabinet SET nomCabinet = "FlairTout" WHERE cabinet_id = 2;
UPDATE cabinet SET adresse = "13 rue du General de Gaulle" WHERE cabinet_id = 2; 
UPDATE cabinet SET telCabinet = 0213456789 WHERE cabinet_id = 2;

UPDATE cabinet SET nomCabinet = "ChillyTest" WHERE cabinet_id = 3;
UPDATE cabinet SET adresse = "28 domaine du chateau" WHERE cabinet_id = 3; 
UPDATE cabinet SET telCabinet = 0123456789 WHERE cabinet_id = 3;

UPDATE cabinet SET nomCabinet = "ParisTest" WHERE cabinet_id = 4;
UPDATE cabinet SET adresse = "Avenue de la République" WHERE cabinet_id = 4; 
UPDATE cabinet SET telCabinet = 0123456789 WHERE cabinet_id = 4;

UPDATE cabinet SET nomCabinet = "BouvilleTest" WHERE cabinet_id = 5;
UPDATE cabinet SET adresse = "15 chemin de la vieille rue" WHERE cabinet_id = 5; 
UPDATE cabinet SET telCabinet = 0123456789 WHERE cabinet_id = 5;