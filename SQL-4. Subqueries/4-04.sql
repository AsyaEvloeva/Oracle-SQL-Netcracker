/*
Выведите все данные (*) о сотрудниках с зарплатой, равной максимальной зарплате внутри своего отдела.
Указание: Решите задачу с использованием некоррелированного подзапроса и оператора IN.
*/

select a.*
from   employees a
where  salary IN (select max(salary) from employees b
                    where  b.department_id = a.department_id )