/*
Для каждого сотрудника вывести id отдела, фамилию, дату приема на работу и фамилию сотрудника, принятого на работу в этот отдел самым первым. 
Если таких несколько (приняты в один день) – вывести фамилию первого из них. Указание: «первый» определяется функцией first_value.
*/

select department_id, last_name, hire_date, FIRST_VALUE(last_name) over (partition by department_id order by department_id, hire_date ) as one
from employees