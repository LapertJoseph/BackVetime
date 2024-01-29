use vettime;

-- nom, adresse, telCabinet + nomUser, PrenomUser

DELIMITER //

CREATE OR REPLACE PROCEDURE get_cabinet()
BEGIN
    SELECT cabinet_id, ville, cp, latitude, longitude, adresse, telCabinet, nomCabinet, nomUser, prnmUser FROM cabinet
    INNER JOIN utilisateur ON `cabinet`.`idUser` = `utilisateur`.`idUser`;
END //

DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE get_cabinet_id (
    IN p_cabinet_id  INT(3)
)
BEGIN
    SELECT cabinet_id, ville, cp, latitude, longitude, adresse, telCabinet, nomCabinet, nomUser, prnmUser FROM cabinet
    INNER JOIN utilisateur ON `cabinet`.`idUser` = `utilisateur`.`idUser`
    WHERE cabinet_id = p_cabinet_id;
END //

DELIMITER //

CREATE OR REPLACE PROCEDURE post_cabinet(
    IN p_idUser INT(3),
    IN p_ville VARCHAR(45),
    IN p_cp INT(5),
    IN p_latitude DECIMAL(8,6),
    IN p_longitude DECIMAL(9,6),
    IN p_adresse VARCHAR(100),
    IN p_nomCabinet VARCHAR(100),
    IN p_telCabinet VARCHAR(100)
)
BEGIN
    INSERT INTO cabinet (idUser, ville, cp, latitude, longitude, adresse, nomCabinet, telCabinet) 
    VALUES (p_idUser, p_ville, p_cp, p_latitude, p_longitude, p_adresse, p_nomCabinet, p_telCabinet);
    
END //

DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE get_cabinet_ville(
    IN p_ville VARCHAR(45)
)
BEGIN
    SELECT * FROM cabinet
    WHERE ville = p_ville;
END //
DELIMITER ;

-- Avoir les cabinet dans un rayon de 20km +- 0.18

DELIMITER //

CREATE OR REPLACE PROCEDURE get_cabinet_rayon(
    IN p_latitude DECIMAL(8,6),
    IN p_longitude DECIMAL(9,6)
)

BEGIN
    SELECT cabinet_id, ville, cp, latitude, longitude, adresse, telCabinet, nomCabinet, nomUser, prnmUser FROM cabinet
    INNER JOIN utilisateur ON `cabinet`.`idUser` = `utilisateur`.`idUser` 
    WHERE (latitude BETWEEN p_latitude - 0.18 AND p_latitude + 0.18) 
    AND (longitude BETWEEN p_longitude -0.18 AND p_longitude + 0.18);
END //

DELIMITER ;