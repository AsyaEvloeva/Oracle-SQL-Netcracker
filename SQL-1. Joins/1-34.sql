/*
Для всех отделов компании вывести название отдела и фамилию (last_name) его менеджера.
Если отдел не имеет менеджера, второй столбец должен содержать NULL.
*/

SELECT distinct b.department_name, a.last_name
from departments b
left join employees a 
on a.employee_id = b.manager_id