/*
Для всех отделов, располагающихся в городе 'Seattle', вывести название отдела и номер телефона его менеджера.
Если отдел не имеет менеджера, второй столбец должен содержать NULL.
*/

SELECT distinct department_name, phone_number
from departments k, employees e
where k.location_id = (
SELECT z.LOCATION_ID
from locations z
where city = 'Seattle')
and k.department_id = e.department_id

and
employee_id = ANY(SELECT k.manager_id
from departments k

where k.location_id = (
SELECT z.LOCATION_ID
from locations z
where city = 'Seattle'))

union

SELECT distinct b.department_name, a.phone_number
from departments b
full join locations j
on j.location_id = b.location_id
left join employees a 
on a.manager_id = b.manager_id
where j.location_id = (
SELECT z.LOCATION_ID
from locations z
where city = 'Seattle')
and b.manager_id is null