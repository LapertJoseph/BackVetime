
--creneau , disponibilité, date_start, date_end, 
-- fk cabinet_id 

use vettime;

CREATE OR REPLACE TABLE creneau (
   creneau_id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
   disponibilité TINYINT(1) NOT NULL,
   date_start DATETIME
);

ALTER TABLE creneau
ADD cabinet_id INT(3) NOT NULL;

ALTER TABLE creneau
ADD CONSTRAINT `fk_cabinet_id` FOREIGN KEY (cabinet_id) REFERENCES cabinet(cabinet_id);

INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-06-19"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-05-01"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-04-09"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-04-11"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-03-14"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-01-17"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-12-19"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-11-01"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2023-10-04"), 1);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-09-01"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-08-04"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-07-05"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-06-06"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-04-07"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-03-08"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-02-09"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-01-10"), 2);
INSERT INTO creneau (disponibilité, date_start, cabinet_id) VALUES (1, DATE("2022-12-12"), 2);

UPDATE creneau SET cabinet_id = 1 WHERE creneau_id = 1;
UPDATE creneau SET cabinet_id = 2 WHERE creneau_id = 3;
