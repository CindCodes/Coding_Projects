SELECT *
FROM startups;

-- total number of companies in the table
SELECT COUNT(*)
FROM startups;

-- total value of all companies 
SELECT SUM(valuation)
FROM startups;

-- highest amount of money raised by a startup
SELECT MAX(raised)
FROM startups;

-- highest amount of money raised by a startup during 'Seed' stage
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

-- year the oldest company was founded
SELECT MIN(founded)
FROM startups;

-- average valuation
SELECT AVG(valuation)
FROM startups;

-- average valuation in each category
SELECT AVG(valuation)
FROM startups
GROUP BY category;

-- average valuation in each category rounded to two decimal places
SELECT category, ROUND(AVG(valuation),2)
FROM startups
GROUP BY category;

-- average valuation in each category rounded to two decimal places ordered from highest to lowest
SELECT category, ROUND(AVG(valuation),2)
FROM startups
GROUP BY 1
ORDER BY 2 DESC;

-- returns the name of each category with the total number of companies belonging to it
SELECT category, COUNT(*)
FROM startups
GROUP BY category;

-- returns the name of categories which contain more than three companies 
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

-- average size of a startup in each location
SELECT location, AVG(employees)
FROM startups
GROUP BY location;

-- average size of a startup in each location with average sizes above 500
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;
