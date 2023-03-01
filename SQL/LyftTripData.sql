-- print tables
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;

-- cross join between riders and cars
SELECT riders.first,
   riders.last,
   cars.model
FROM riders, cars;

-- left join between trips and riders
SELECT trips.date, 
   trips.pickup, 
   trips.dropoff, 
   trips.type, 
   trips.cost,
   riders.first, 
   riders.last,
   riders.username
FROM trips
LEFT JOIN riders
  ON trips.rider_id = riders.id;

-- inner join between trips and cars
SELECT *
FROM trips
INNER JOIN cars
  ON trips.car_id = cars.id;

-- union riders and riders2
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

-- average cost for a trip
SELECT ROUND(AVG(cost),2)
FROM trips;

-- all riders who've used Lyft less than 500 times
SELECT *
FROM riders
WHERE total_trips < 500;

-- number of cars that are active
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

-- two cars that have the highest trips_completed 
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
