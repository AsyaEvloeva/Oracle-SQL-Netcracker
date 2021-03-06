/*
Вывести имена сотрудников для второй страницы телефонного справочника при условиях, что:
а) сотрудники в справочнике упорядочены по фамилиям и затем по именам,
б) на одной странице справочника размещается ровно 10 записей.
Имена выводить в одном столбце в формате first_name пробел last_name. Никаких других столбцов выводить не надо.
Указание: использовать аналитическую функцию.
*/

select er
from (
SELECT concat(concat(first_name, ' '), last_name) as er, rank() over(order by last_name, first_name) as rank
from employees )
where rank = ANY (11, 12, 13, 14, 15, 16, 17, 18, 19, 20)