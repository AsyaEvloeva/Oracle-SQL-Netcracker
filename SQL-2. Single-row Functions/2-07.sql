/*
Выведите имя, фамилию сотрудника и третьей колонкой должность (JOB_ID), заменив в ней встречающиеся символы '_' на '-'. 
Отсортировать полученные результаты по суммарной длине имени и фамилии, затем по первому и второму столбцу выборки. 
Указание: Использование LENGTH, REPLACE.
*/

select first_name, last_name, replace(job_id, '_', '-')
from employees
order by length(first_name)+ length(last_name), first_name, last_name