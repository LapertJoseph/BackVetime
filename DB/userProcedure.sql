use vettime;

DELIMITER //

CREATE OR REPLACE PROCEDURE get_user() 

BEGIN
    SELECT * FROM utilisateur;
END //

DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE login(
    IN p_emailUser varchar(50),
    IN p_passwordUser varchar(128)
)

BEGIN
    SELECT emailUser , passwordUser 
    FROM utilisateur
    WHERE emailUser = p_emailUser AND `passwordUser` = p_passwordUser; 
END //

DELIMITER ;
