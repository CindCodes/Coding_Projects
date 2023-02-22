-- what are the column names?
SELECT *
FROM nomnom;

-- what are the distinct neighborhoods?
SELECT DISTINCT neighborhood
FROM nomnom;

-- what are the distinct cuisine types?
SELECT DISTINCT cuisine
FROM nomnom;

-- supppose we would like some Chinese takeout. what are our options?
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

-- return all restaurants with reviews of 4 and above
SELECT *
FROM nomnom
WHERE review > 4;

-- suppose abbi and llana want to have a fancy dinner date. return all italian restaurants and $$$
SELECT *
FROM nomnom
WHERE cuisine = 'Italian' and price = '$$$';

-- your coworker Trey can’t remember the exact name of a restaurant he went to but he knows it contains the word ‘meatball’ in it. can you find it for him using a query?
SELECT * 
FROM nomnom
WHERE name LIKE '%meatball%';

-- let’s order delivery to the house! find all the close by spots in Midtown, Downtown or Chinatown.
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown' 
  OR neighborhood = 'Downtown' 
  OR neighborhood = 'Chinatown';
  
  -- find all the health grade pending restaurants (empty values).
  SELECT *
  FROM nomnom
  WHERE health IS NULL;

-- create a Top 10 Restaurants Ranking based on reviews.
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

/* use a CASE statement to change the rating system to:
review > 4.5 is Extraordinary
review > 4 is Excellent
review > 3 is Good
review > 2 is Fair
else Everything else is Poor
rename the new column
*/
SELECT name,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
  END AS 'Reviews'
FROM nomnom
ORDER BY review DESC;
