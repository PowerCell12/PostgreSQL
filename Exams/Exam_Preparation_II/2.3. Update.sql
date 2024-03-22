UPDATE cars
SET condition = 'C'
WHERE (cars.year <= 2010)
AND (cars.make <> 'Mercedes-Benz')
AND (cars.mileage >= 800000 OR cars.mileage IS NULL);
