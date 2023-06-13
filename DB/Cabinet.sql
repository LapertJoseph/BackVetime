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

ALTER TABLE cabinet 
ADD idUser int(3) NOT NULL;

ALTER TABLE cabinet
ADD CONSTRAINT `fk_idUser` FOREIGN KEY (idUser) REFERENCES utilisateur(idUser);

ALTER TABLE cabinet ADD nomCabinet VARCHAR(100);
ALTER TABLE cabinet ADD adresse VARCHAR(100);
ALTER TABLE cabinet ADD telCabinet INT(10);

UPDATE cabinet SET nomCabinet = "ToutouMinou" WHERE cabinet_id = 1;
UPDATE cabinet SET adresse = "22 rue de paris" WHERE cabinet_id = 1; 
UPDATE cabinet SET telCabinet = 0123456789 WHERE cabinet_id = 1;

UPDATE cabinet SET nomCabinet = "FlairTout" WHERE cabinet_id = 2;
UPDATE cabinet SET adresse = "13 rue du General de Gaulle" WHERE cabinet_id = 2; 
UPDATE cabinet SET telCabinet = 0213456789 WHERE cabinet_id = 2;
