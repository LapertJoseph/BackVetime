use vettime;

-- nom, adresse, telCabinet

DELIMITER //

CREATE OR REPLACE PROCEDURE get_cabinet()
BEGIN
    SELECT nomCabinet, adresse, telCabinet FROM cabinet;
END //

DELIMITER ;