use vettime;

--date de rdv, animal , nom, prenom
DELIMITER //
CREATE OR REPLACE PROCEDURE get_rdv()

BEGIN
    SELECT `date`, `nomUser`, `prnmUser`, `idAnimal`, `especeAnimal` FROM rdv
    INNER JOIN utilisateur ON rdv.idUser = utilisateur.idUser
    INNER JOIN animal ON utilisateur.idUser = animal.idUser;
END //

DELIMITER ;