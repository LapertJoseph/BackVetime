use vettime;


DELIMITER //

CREATE OR REPLACE PROCEDURE get_creneau(
    IN p_cabinet_id INT(3)
)
BEGIN
    SELECT creneau_id, disponibilité, date_start, creneau.cabinet_id, ville, cp, latitude, longitude, idUser, adresse, telCabinet, nomCabinet 
    FROM creneau 
    INNER JOIN cabinet ON creneau.cabinet_id = cabinet.cabinet_id
    WHERE `cabinet`.`cabinet_id` = `p_cabinet_id`;
END //

DELIMITER ;

-- Creneau qui ont les data supérieur a la date actuel

DELIMITER //

CREATE OR REPLACE PROCEDURE get_creneau_sup(
    IN p_date_start DATETIME
)
BEGIN
    SELECT * FROM creneau
    WHERE date_start > p_date_start;
END //

DELIMITER ;
-- idCabinet, * from creneau idCabinet
DELIMITER //

CREATE OR REPLACE PROCEDURE post_creneau (
    IN p_cabinet_id INT(10),
    IN p_disponibilité TINYINT(1),
    IN p_date_start DATETIME,
    IN p_date_end DATETIME
)
BEGIN
    INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id)
    VALUES (p_disponibilité, p_date_start, p_date_end, p_cabinet_id);
END //

DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE get_creneau_ok(
    IN p_cabinet_id INT(3)
)
BEGIN
    SELECT creneau_id, disponibilité, date_start, creneau.cabinet_id, ville, cp, latitude, longitude, idUser, adresse, telCabinet, nomCabinet 
    FROM creneau 
    INNER JOIN cabinet ON creneau.cabinet_id = cabinet.cabinet_id
    WHERE disponibilité = 1 AND `cabinet`.`cabinet_id` = `p_cabinet_id`;
END //

DELIMITER ;