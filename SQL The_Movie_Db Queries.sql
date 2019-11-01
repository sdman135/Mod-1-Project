SELECT
  d.movie_name, g.genres,
  FORMAT((d.revenue/1000000),1) AS revenue_in_mil,
  FORMAT((d.budget/1000000),0) AS budget_in_mil,
  FORMAT((d.revenue/d.budget), 2) AS ROI
FROM
  Movies.The_Movie_Db d
JOIN
  Movies.The_Movie_Db_Genres g
ON
  d.movie_name = g.movie_name
GROUP BY
  d.movie_name
ORDER BY
  ROI DESC;
  
SELECT
  d.movie_name, g.genres,
  (d.revenue/1000000) AS revenue_in_mil,
  (d.budget/1000000) AS budget_in_mil,
  (d.revenue/d.budget) as ROI
 