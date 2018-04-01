/*
Для всех сотрудников вывести отдел (department_id), фамилию (last_name), зарплату (salary) и количество человек, 
которые, работая в этом же отделе, имеют зарплату (строго) больше, чем данный сотрудник.
*/

SELECT department_id, last_name, salary, count(last_name) over(partition by department_id order by salary range between 1 following and UNBOUNDED following) as eww
from employees