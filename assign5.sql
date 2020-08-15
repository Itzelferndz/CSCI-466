-- Drop the tables if they exist
DROP TABLE IF EXISTS dogs;
DROP TABLE IF EXISTS visits;

-- Crate the table dogs
CREATE TABLE dogs(dog_id int NOT NULL AUTO_INCREMENT, breed varchar(20), name varchar(20), PRIMARY KEY (dog_id));


-- Insert 5 rows to dogs
INSERT INTO dogs (breed,name) values("Labrador","Jimmy");
INSERT INTO dogs (breed,name) values("Husky","Rupert");
INSERT INTO dogs (breed,name) values("German Shephard","Kenny");
INSERT INTO dogs (breed,name) values("Golden Retriver","Casper");
INSERT INTO dogs (breed,name) values("Great Dan","Don");


-- Describe the table dogs
DESCRIBE dogs;


-- Select all from table dogs
SELECT * FROM dogs;


-- Create the table visits, add foreign key
CREATE TABLE visits(visit_id int NOT NULL AUTO_INCREMENT,
dog_id int,
visit_date DATE,
PRIMARY KEY(visit_id),
FOREIGN KEY (dog_id) REFERENCES dogs(dog_id));


-- Insert 8 values into the table
INSERT INTO visits (dog_id, visit_date) values(1,'2004-01-22');
INSERT INTO visits (dog_id, visit_date) values(4,'2004-01-01');
INSERT INTO visits (dog_id, visit_date) values(5, '2004-01-18');
INSERT INTO visits (dog_id, visit_date) values(5, '2004-01-20');
INSERT INTO visits (dog_id, visit_date) values(2,'2004-01-30');
INSERT INTO visits (dog_id, visit_date) values(2,'2004-01-5');
INSERT INTO visits (dog_id, visit_date) values(1,'2004-01-19');
INSERT INTO visits (dog_id, visit_date) values(3,'2004-01-18');


-- Describe visits table
DESCRIBE visits;


-- Show all rows from visits
SELECT * FROM visits;

-- Adda new column for time of visit
ALTER TABLE visits ADD visit_time TIME;


-- Add values to th e new column
UPDATE visits SET visit_time = '09:10:00' WHERE dog_id = 5;
UPDATE visits SET visit_time = '04:10:00' WHERE dog_id = 1;
UPDATE visits SET visit_time = '06:00:00' WHERE dog_id = 2;
UPDATE visits SET visit_time = '12:10:00' WHERE dog_id = 3;
UPDATE visits SET visit_time = '09:30:00' WHERE dog_id = 4;

-- Show all rows from visits
SELECT * FROM visits;
