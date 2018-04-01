/*
Выведите все данные (*) о тех сотрудниках, у которых в трудовой истории (таблица job_history) есть запись о работе в должности ST_CLERK.
Указание: Использование оператора EXISTS.
*/

select *
from employees
where exists
(select a.*
from job_history a
where a.employee_id = employees.employee_id 
and a.job_id = 'ST_CLERK'
)