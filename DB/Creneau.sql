
--creneau , disponibilité, date_start, date_end, 
-- fk cabinet_id 

use vettime;

CREATE OR REPLACE TABLE creneau (
   creneau_id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
   disponibilité TINYINT(1) NOT NULL,
   date_start DATETIME,
   date_end DATETIME
);

ALTER TABLE creneau
ADD cabinet_id INT(3) NOT NULL;

ALTER TABLE creneau
ADD CONSTRAINT `fk_cabinet_id` FOREIGN KEY (cabinet_id) REFERENCES cabinet(cabinet_id);

INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2023-06-19 13:20:00"), ("2023-06-19 13:35:00"), 1);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2023-05-01 13:40:00"), ("2023-05-01 13:50:00"), 1);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2023-04-09 14:00:00"), ("2023-04-09 14:10:00"), 1);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2023-04-11 14:20:00"), ("2023-04-11 14:35:00"), 1);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2023-03-14 14:40:00"), ("2023-03-14 14:50:00"), 1);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2023-01-17 15:00:00"), ("2023-01-17 15:10:00"), 1);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2023-12-19 15:20:00"), ("2023-12-19 15:35:00"), 1);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2023-11-01 15:40:00"), ("2023-11-01 15:50:00"), 1);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2023-10-04 16:00:00"), ("2023-10-04 16:10:00"), 1);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2022-09-01 16:20:00"), ("2022-09-01 16:35:00"), 2);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2022-08-04 16:40:00"), ("2022-08-04 16:50:00"), 2);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2022-07-05 17:20:00"), ("2022-07-05 17:10:00"), 2);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2022-06-06 17:40:00"), ("2022-06-06 17:35:00"), 2);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2022-04-07 18:00:00"), ("2022-04-07 18:50:00"), 2);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2022-03-08 18:20:00"), ("2022-03-08 18:10:00"), 2);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2022-02-09 18:40:00"), ("2022-02-09 18:35:00"), 2);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2022-01-10 19:20:00"), ("2022-01-10 19:50:00"), 2);
INSERT INTO creneau (disponibilité, date_start, date_end, cabinet_id) VALUES (1, ("2022-12-12 19:40:00"), ("2022-12-12 19:10:00"), 2);

UPDATE creneau SET cabinet_id = 1 WHERE creneau_id = 1;
UPDATE creneau SET cabinet_id = 2 WHERE creneau_id = 3;

UPDATE creneau SET disponibilité = 0 WHERE creneau_id = 1;
UPDATE creneau SET disponibilité = 0 WHERE creneau_id = 4;
UPDATE creneau SET disponibilité = 0 WHERE creneau_id = 6;
UPDATE creneau SET disponibilité = 0 WHERE creneau_id = 7;