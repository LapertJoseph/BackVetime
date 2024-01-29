use vettime;

DELIMITER //
CREATE OR REPLACE PROCEDURE get_user() 
BEGIN
    SELECT * FROM utilisateur;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE `login`(
    IN p_emailUser varchar(50),
    IN p_passwordUser varchar(128)
)
BEGIN
    SELECT *
    FROM utilisateur
    WHERE emailUser = p_emailUser AND `passwordUser` = SHA2(p_passwordUser, 512); 
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE add_user(
    IN p_nomUser VARCHAR(20),
    IN p_prnmUser VARCHAR(20),
    IN p_emailUser VARCHAR(50),
    IN p_passwordUser VARCHAR(128),
    IN p_adresseUser VARCHAR(50),
    IN p_isVeto TINYINT(1)
)
BEGIN
    INSERT INTO utilisateur (nomUser, prnmUser, emailUser, passwordUser, adresseUser, isVeto)
    VALUES (p_nomUser, p_prnmUser, p_emailUser, SHA2(p_passwordUser, 512), p_adresseUser, p_isVeto);
END //
DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE get_user_email(
    IN p_emailUser VARCHAR(50)
)
BEGIN
    SELECT * FROM utilisateur
    WHERE emailUser = p_emailUser;
END //
DELIMITER ;

DELIMITER //

CREATE OR REPLACE PROCEDURE get_user_Id(
    IN p_idUser INT(3)
)
BEGIN
    SELECT * FROM utilisateur
    WHERE idUser = p_idUser;
END //
DELIMITER ;