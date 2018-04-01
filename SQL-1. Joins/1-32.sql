/*
Вывести в первом столбце названия всех отделов компании, а втором - названия стран, где они располагаются.
*/

SELECT department_name, country_name
from departments k, locations e, countries c
where k.location_id = e.location_id
and e.country_id = c.country_id