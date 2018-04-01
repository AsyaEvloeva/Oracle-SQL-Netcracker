/*
Вывести телефон менеджера сотрудника по фамилии 'Chen'.
*/

SELECT phone_number
from employees 
where employee_id = (select e.manager_id
from employees e
where last_name = 'Chen' )