/*
Выведите все номера отделов, в которых состоят сотрудники, и максимальную зарплату по каждому из них.
Максимальная зарплата по сотрудникам, не состоящим ни в каком отделе, тоже должна выводиться (номер отдела - null).
*/

select department_id, salary
from   employees a
where  a.salary = ( select max(salary) from employees b
                    where  b.department_id = a.department_id )
union
select department_id, salary
from   employees a
where  department_id is null