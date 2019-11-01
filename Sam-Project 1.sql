#Main Table
SELECT * FROM `Movies`.`OMDb_Top_250_and_Low_100`;
#Actors Table
SELECT * FROM `Movies`.`OMDb_Actors`;
#Directors Table
SELECT * FROM `Movies`.`OMDb_Directors`;


# Joining Main table with Actors table @ key movie_id
SELECT *
FROM Movies.OMDb_Top_250_and_Low_100 l
INNER JOIN Movies.OMDb_Actors  a where a.movie_id = l.movie_id
order by l.movie_id;

# Joining main info table with Directors table @ key movie_id
SELECT *
FROM Movies.OMDb_Top_250_and_Low_100 c
INNER JOIN Movies.OMDb_Directors  b where b.movie_id = c.movie_id
order by l.movie_id;
