/*
Вывести почтовый код отдела, в котором работает сотрудник по фамилии 'Sully'.
*/

select postal_code
from departments d, employees e, locations l
where d.department_id = e.department_id
and d.location_id = l.location_id
and d.department_id = e.department_id
and last_name = 'Sully'