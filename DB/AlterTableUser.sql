
ALTER TABLE utilisateur MODIFY nomUser varchar(20) NOT NULL;
ALTER TABLE utilisateur MODIFY prnmUser varchar(20) NOT NULL;
ALTER TABLE utilisateur MODIFY emailUser varchar(50) NOT NULL;
ALTER TABLE utilisateur MODIFY passwordUser varchar(128) NOT NULL;
ALTER TABLE utilisateur MODIFY adresseUser varchar(50) NOT NULL;
ALTER TABLE utilisateur MODIFY villeUser varchar(50) NULL;
ALTER TABLE utilisateur MODIFY CPUser INT(5) NULL;
ALTER TABLE utilisateur MODIFY telUser CHAR(15) NULL;
ALTER TABLE utilisateur MODIFY token VARCHAR(130) NULL;