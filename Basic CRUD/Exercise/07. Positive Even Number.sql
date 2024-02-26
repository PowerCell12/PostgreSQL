select concat(number, ' ', street) as "Address", city_id from addresses where city_id % 2 =0 order by city_id;
