use vettime;

-- nom, adresse, telCabinet

DELIMITER //

CREATE OR REPLACE PROCEDURE get_cabinet()
BEGIN
    SELECT nomCabinet, adresse, telCabinet FROM cabinet;
END //

DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE post_cabinet(
    IN p_ville VARCHAR(45),
    IN p_cp INT(5),
    IN p_latitude DECIMAL(8,6),
    IN p_longitude DECIMAL(9,6),
    IN p_adresse VARCHAR(100),
    IN p_nomCabinet VARCHAR(100),
    IN p_telCabinet VARCHAR(100)
)
BEGIN
    INSERT INTO cabinet (ville, cp, latitude, longitude, adresse, nomCabinet, telCabinet) 
    VALUES (p_ville, p_cp, p_latitude, p_longitude, p_adresse, p_nomCabinet, p_telCabinet);
    
END //

DELIMITER ;