use vettime;

CREATE OR REPLACE TABLE cabinet (
    cabinet_id INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ville VARCHAR(45) NOT NULL,
    cp INT(5) NOT NULL,
    latitude DECIMAL(8,6),
    longitude DECIMAL(9,6)
);

INSERT INTO cabinet (ville, cp , latitude, longitude) VALUES ("VilleJuif", 94800, 48.789390100000006, 2.363719169294484);
INSERT INTO cabinet (ville, cp , latitude, longitude) VALUES ("Gonesse", 95500, 48.98609, 2.447993);


