DROP TABLE IF EXISTS visits;
DROP TABLE IF EXISTS dogs;

CREATE TABLE dogs(dog_id int NOT NULL AUTO_INCREMENT, breed varchar(20)NOT NULL, name varchar(20)NOT NULL, PRIMARY KEY(dog_id));

INSERT INTO dogs(beed, name) VALUES ('pitbull', 'buddy');
DESCRIBE dogs;

SELECT * FROM dogs;

CREATE TABLE visits(visit_id int NOT NULL AUTO_INCREMENT, dog_id int, visit_date  varchar(20) NOT NULL ,
PRIMARY KEY(visit_id), FOREIGN KEY(dog_id) REFERENCES dogs(dog_id));

INSERT INTO visits( dog_id,visit_date) VALUES ('1', '6-11-19');

DESCRIBE visits;

SELECT * FROM visits;

ALTER TABLE visits ADD time_ofVisit TIME ;


UPDATE visits SET time_ofVisit = '09:10:00' WHERE dog_id= 1;

SELECT * FROM visits;

