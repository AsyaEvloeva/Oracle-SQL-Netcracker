/*
Вывести названия всех отделов, располагающихся по адресу '2004 Charade Rd'.
*/

SELECT department_name
from departments k, locations e
where k.location_id = e.location_id
and street_address = '2004 Charade Rd'