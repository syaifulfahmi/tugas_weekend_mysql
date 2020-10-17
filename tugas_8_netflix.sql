USE tugas8;

DROP TABLE netflix
CREATE TABLE netflix(
show_id INT,
tipe VARCHAR(20),
title VARCHAR (100),
director VARCHAR (100),
cast_film TEXT,
country VARCHAR (50),
date_added VARCHAR (20),
release_year YEAR,
rating VARCHAR (20),
duration VARCHAR (15),
listed_in VARCHAR(50),
descriptions VARCHAR(250)
);

LOAD DATA INFILE 'D:/db/netflix_titles.csv'
INTO TABLE netflix
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT*FROM netflix;

SELECT*FROM netflix WHERE duration="90 min";
SELECT*FROM netflix WHERE country="Thailand";
SELECT*FROM netflix WHERE release_year>'2015';
