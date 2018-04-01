/*
Вывести информацию обо всех отделах и состоящих в них сотрудниках.
В первом столбце - id отдела, во втором - id сотрудника.
Если в отделе нет ни одного сотрудника, то второй столбец в строке такого отдела должен содержать NULL.
Решите задачу, используя синтаксис Oracle
*/

select departments.department_id, employee_id 
from employees a
right join departments
on departments.department_id = a.department_id 