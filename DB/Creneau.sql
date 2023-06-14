
--creneau , disponibilité, date_start, date_end, 
-- fk cabinet_id 

use vettime;

CREATE OR REPLACE TABLE creneau (
   creneau_id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
   disponibilité TINYINT(1) NOT NULL,
   date_start VARCHAR(45),
   date_end VARCHAR(45)
);

INSERT INTO creneau (disponibilité, date_start, date_end) VALUES (1, "09h-12h30", "13h-17h30");
INSERT INTO creneau (disponibilité, date_start, date_end) VALUES (1, "08h-13h00", "13h-18h30");

ALTER TABLE creneau
ADD cabinet_id INT(3) NOT NULL;

ALTER TABLE creneau
ADD CONSTRAINT `fk_cabinet_id` FOREIGN KEY (cabinet_id) REFERENCES cabinet(cabinet_id);