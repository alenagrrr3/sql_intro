SELECT *
  FROM movies
 ORDER BY title ASC;

SELECT *
  FROM movies
 WHERE year   > 2010
   AND rating = 'PG';


SELECT genre,
       AVG(rating) AS avg_rating
  FROM movies
 GROUP BY genre
HAVING AVG(rating) > 8

(vybrat zhanr, poschitat srednij rating, post otfiltrovat)

SELECT MIN(release_year)
  FROM movies
 WHERE genre = 'Drama';

 (najtu minimalsnyj god vypuska iz kino, gde genre drama)

SELECT COUNT(*)
  FROM movies;

(schitaet vse filmy)


SELECT AVG(rating)
  FROM movies
 WHERE genre = 'Drama';

 (scitaet sredniy rating)

SELECT SUM(budget)
  FROM movies
 WHERE genre = 'Drama';


SELECT movies.title,
       movies.genre,
       reviews.review
  FROM movies
 INNER JOIN reviews
    ON movies.id = reviews.movie_id;

SELECT movies.title,
       movies.genre,
       reviews.review
  FROM movies
  LEFT JOIN reviews
    ON movies.id = reviews.movie_id;

(fisrst table, movies, complete, joined table reviews)

SELECT movies.title,
       movies.release_year,
       movies.genre,
       movies.rating,
       actors.name
  FROM movies
  FULL JOIN actors
    ON movies.id = actors.movie_id;


CREATE TABLE movies (
  id INTEGER NOT NULL,
  title TEXT NOT NULL,
  release_year INTEGER NOT NULL,
  genre TEXT NOT NULL,
  rating INTEGER NOT NULL,
  PRIMARY KEY (id));

ALTER TABLE movies
  MODIFY COLUMN release_year DATE NOT NULL

DROP TABLE movies


INSERT INTO movies (id, title, release_year, genre, rating)
VALUES (1, 'The Shawshank Redemption', 1994, 'Drama', 9);

UPDATE movies
SET rating = 8
WHERE release_year > 2000;

