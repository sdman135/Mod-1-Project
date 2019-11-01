SELECT
  *
FROM
  Movies.Metacritic
ORDER BY
  metascore DESC;
  
SELECT
  *
FROM
  Movies.Metacritic m
JOIN
  Movies.The_Movie_Db d
ON
  m.title = d.movie_name
ORDER BY
  d.revenue DESC;