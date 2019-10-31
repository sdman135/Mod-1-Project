SELECT
  *
FROM
  Movies.OMDb_Top_250_and_Low_100 o
ORDER BY
  o.box_office DESC;

SELECT
  o.movie_name,
  o.metascore,
  o.director,
  o.box_office
FROM
  Movies.OMDb_Top_250_and_Low_100 o
ORDER BY
  o.metascore DESC;