-- top five stories with the highest scores
SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

-- find the total score of all the stories
SELECT SUM(score)
FROM hacker_news;

-- find individual uders who have gotten combined scores of more than 200
SELECT user, SUM(score)
FROM hacker_news
GROUP BY user
HAVING SUM(score) > 200
ORDER BY 2 DESC;

-- add users' scores together and divide by total to get percentage
SELECT (517 + 309 + 304 + 282) / 6366.0;

-- times user posted following link: https://www.youtube.com/watch?v=dQw4w9WgXcQ
SELECT user, COUNT(*)
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ%'
GROUP BY 1
ORDER BY 2 DESC;

-- which of these sites feed Hacker News the most?
SELECT CASE
   WHEN url LIKE '%github.com' THEN 'Github'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%newyorktimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source'
FROM hacker_news;

-- add a column from previous query for number of stories from each URL 
SELECT CASE
   WHEN url LIKE '%github.com' THEN 'Github'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%newyorktimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source',
  COUNT(*)
FROM hacker_news
GROUP BY 1;

-- returns hour of timestamp column
SELECT timestamp, strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

-- query returns three columns: hours of timestamp, average score of each hour, count of stories of each hour
SELECT strftime('%H', timestamp), AVG(score), COUNT(*)
FROM hacker_news
GROUP BY 1
ORDER BY 2 DESC;

-- round query, rename columns, filter out null values in timestamp
SELECT strftime('%H', timestamp) AS 'Hours', ROUND(AVG(score), 2) AS 'Average Score', COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;
