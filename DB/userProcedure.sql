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
    SELECT emailUser , passwordUser, isVeto
    FROM utilisateur
    WHERE emailUser = p_emailUser AND `passwordUser` = p_passwordUser; 
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
    VALUES (p_nomUser, p_prnmUser, p_emailUser, SHA2(p_passwordUser, 512), p_adresseUser, p_isVeto);
    SELECT LAST_INSERT_ID() as idUser;
END //
DELIMITER ;
