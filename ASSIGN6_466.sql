USE BabyName;
SHOW TABLES;
DESCRIBE BabyName;
SELECT year, COUNT(name) FROM BabyName WHERE name ="Laura" LIMIT 50;
SELECT name FROM BabyName WHERE year= "1997" LIMIT 50;
--display most popular names
SELECT name FROM BabyName WHERE year = "1997" count > (SELECT name FROM BabyName WHERE year= "1997") LIMIT 50;
--display most popular names from males anf females of your birth year 
SELECT name, gender FROM BabyName WHERE year= "1997" LIMIT 50;

SELECT name, gender COUNT(name) AS popularity FROM BabyName WHERE year= "1997" GROUP BY name,gender ORDER BY COUNT(NAME) DESC LIMIT 50;

SELECT COUNT(*) FROM BabyName;

SELECT name FROM BabyName COUNT(name) WHERE YEAR ="1963" LIMIT 50;

SELECT COUNT(name) FROM BabyName WHERE YEAR ="1953" GROUP BY gender LIMIT 50;

SELECT COUNT(name) FROM BabyName GROUP BY place;

