/*
Выведите все данные (*) о тех сотрудниках, зарплаты которых больше, чем средняя зарплата в каждом из отделов. 
Указание: Использование оператора сравнения с оператором ALL.
*/

select a.*
from employees a
where salary > ALL (select max(sal) 
from (select department_id, avg(salary) as sal
from employees
group by department_id))