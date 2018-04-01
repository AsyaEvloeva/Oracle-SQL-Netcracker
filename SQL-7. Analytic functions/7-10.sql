/*
Для всех сотрудников вывести фамилию(last_name), дату приёма на работу (hire_date), зарплату (salary) 
и разницу между зарплатой данного сотрудника и средней зарплатой всех сотрудников, нанятых за предыдущий год (включая данного сотрудника).
Указание: использовать аналитические функции и NUMTOYMINTERVAL.
*/

select last_name, hire_date, salary, salary - (avg(salary) 
   OVER ( ORDER BY hire_date
   RANGE NUMTOYMINTERVAL(1,'year') PRECEDING)) AS t_sal
from employees