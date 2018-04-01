/*
Выведите все данные (*) о сотрудниках с зарплатой, равной максимальной зарплате внутри своего отдела.
Указание: Решите задачу с использованием некоррелированного подзапроса во FROM.
*/

select a.*
from   employees a
where  a.salary = ( select max(salary) from employees b
                    where  b.department_id = a.department_id )