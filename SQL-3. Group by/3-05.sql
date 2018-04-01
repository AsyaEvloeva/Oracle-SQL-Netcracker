/*
Для отдела с id = 50 выведите должности, занимаемые его сотрудниками.
В каждой строке выведите: должность (job_id) и максимальную зарплату сотрудников отдела в этой должности.
Результат отсортируйте по максимальной зарплате в порядке возрастания.
Указание: используйте только таблицу employees
*/

select job_id, salary
from   employees a
where  a.salary = ( select max(salary) from employees b
                    where  b.job_id = a.job_id )
and department_id = 50
order by salary 