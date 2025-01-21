-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

/* 
SELECT * 
FROM players
WHERE first_name = "Barry"
AND last_name = "Bonds";
*/

Select 
  players.id,
  players.first_name,
  players.last_name,
  stats.player_id,
  SUM(stats.hits)
FROM
  players
INNER JOIN stats ON players.id = stats.player_id
WHERE 
  players.first_name = "Barry"
AND 
  players.last_name = "Bonds";