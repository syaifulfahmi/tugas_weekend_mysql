CREATE DATABASE tugas8
USE tugas8

CREATE TABLE ramen (
review INT(4),
brand VARCHAR(50),
variety VARCHAR(100),
style VARCHAR(50),
country VARCHAR(50),
stars FLOAT,
top_ten VARCHAR(20) NULL
);

LOAD DATA INFILE 'D:/db/ramen-ratings.csv'
INTO TABLE ramen
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT*FROM ramen
SELECT*FROM ramen WHERE stars>4;
SELECT*FROM ramen WHERE country="Japan";
SELECT review,brand, UPPER(variety) AS 'variety',style,country,stars,top_ten FROM ramen;