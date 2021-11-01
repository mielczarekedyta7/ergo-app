
CREATE TABLE movies_dataset.movies( movieId INT NOT NULL, title VARCHAR(255), genres VARCHAR(255), PRIMARY KEY(movieId));

LOAD DATA LOCAL INFILE '/tmp/movies.csv' 
INTO TABLE movies_dataset.movies 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE movies_dataset.ratings( userId INT NOT NULL, movieId INT NOT NULL, rating DECIMAL, timestamps INT);

LOAD DATA LOCAL INFILE '/tmp/ratings.csv' 
INTO TABLE movies_dataset.ratings 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
