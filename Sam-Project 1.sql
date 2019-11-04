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
<<<<<<< HEAD
=======

# Frequency of Actors w/ IMDb rating 8 or more
SELECT a.actors,count(a.actors), avg(imdb_rating)
FROM Movies.OMDb_Top_250_and_Low_100 l
INNER JOIN Movies.OMDb_Actors  a 
on a.movie_id = l.movie_id where imdb_rating >=8
group by a.actors
having count(a.actors)>1
order by count(a.actors) desc limit 20
;


# Frequency of Actors w/ IMDb rating 4.5 or less
SELECT a.actors,count(a.actors), avg(imdb_rating)
FROM Movies.OMDb_Top_250_and_Low_100 l
INNER JOIN Movies.OMDb_Actors  a 
on a.movie_id = l.movie_id where imdb_rating <=4.5
group by a.actors
having count(a.actors)>1
order by count(a.actors) desc
;


# Linking actors with avg revenue of the movies they were in
SELECT l.actors, avg(a.revenue)
FROM Movies.OMDb_Top_250_and_Low_100  m
INNER JOIN Movies.OMDb_Actors l on m.movie_name = l.movie_name
INNER JOIN Movies.The_Movie_Db  a on m.movie_name = a.movie_name
group by l.actors
order by avg(a.revenue)
;
>>>>>>> Sams_branch
