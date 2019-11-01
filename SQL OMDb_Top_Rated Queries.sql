SELECT
  *
FROM
  Movies.OMDb_Directors d;

SELECT
  *
FROM
  Movies.OMDb_Top_250_and_Low_100 o;

WITH a AS (
SELECT
  o.metascore,
  AVG(o.imdb_rating),
  d.director,
  FLOOR((o.metascore)/10) AS metascore_buckets,
  COUNT(*) AS bucket_count
FROM
  Movies.OMDb_Directors d
JOIN
  Movies.OMDb_Top_250_and_Low_100 o
ON
  d.movie_name = o.movie_name
GROUP BY
  metascore_buckets, d.director
ORDER BY
  metascore_buckets DESC, bucket_count DESC)
  
SELECT *
FROM a
WHERE
  metascore_buckets > 7
AND
  bucket_count > 1;