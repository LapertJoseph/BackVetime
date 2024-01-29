use vettime;

--date de rdv, animal , nom, prenom
DELIMITER //
CREATE OR REPLACE PROCEDURE get_rdv()

BEGIN
    SELECT `date`, `nomUser`, `prnmUser`, `idAnimal`, `animal`.`especeAnimal`, `utilisateur`.`idUser`, `rdv`.`idRdv` FROM rdv
    INNER JOIN utilisateur ON rdv.idUser = utilisateur.idUser
    INNER JOIN animal ON utilisateur.idUser = animal.idUser;
END //

DELIMITER ;

-- post rdv idUser, cabinet, animal, date
DELIMITER //

CREATE OR REPLACE PROCEDURE post_rdv(
    IN p_idUser INT(3),
    IN p_cabinet_id INT(3),
    IN p_especeAnimal VARCHAR(50),
    IN p_date DATETIME
)
BEGIN
    INSERT INTO rdv (idUser, cabinet_id, especeAnimal, `date`) 
    VALUES (p_idUser, p_cabinet_id, p_especeAnimal, p_date);
END //

DELIMITER ;