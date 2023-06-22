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
    SELECT emailUser , passwordUser, isVeto, `utilisateur`.`idUser`, `cabinet`.`cabinet_id`
    FROM utilisateur
    INNER JOIN cabinet ON `utilisateur`.`idUser` = `cabinet`.`idUser`
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
