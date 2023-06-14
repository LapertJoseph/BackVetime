use vettime;


DELIMITER //

CREATE OR REPLACE PROCEDURE get_creneau(
    IN p_cabinet_id INT(3)
)
BEGIN
    SELECT creneau_id, disponibilité, date_start, date_end, creneau.cabinet_id, ville, cp, latitude, longitude, idUser, adresse, telCabinet, nomCabinet 
    FROM creneau 
    INNER JOIN cabinet ON creneau.cabinet_id = cabinet.cabinet_id
    WHERE `cabinet`.`cabinet_id` = `p_cabinet_id`;
END //

DELIMITER ;