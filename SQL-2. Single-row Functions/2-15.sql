/*
Выведите всю информацию о сотрудниках, фамилии которых начинаются с H или K, содержат 2 одинаковые буквы подряд, 
а оставшаяся после повторяющихся букв часть фамилии не заканчивается на букву s. 
Указание: Использование REGEXP_LIKE.
*/

select *
from employees
where last_name = ANY (
select last_name
from employees
where REGEXP_LIKE(last_name, '[^s]$')
and last_name = ANY (
select last_name
from employees
where REGEXP_LIKE(last_name, '(^H|^K)', 'i')
and last_name = ANY (
select last_name
from employees
where REGEXP_LIKE(last_name, '([a-z])\1', 'i')
)
))