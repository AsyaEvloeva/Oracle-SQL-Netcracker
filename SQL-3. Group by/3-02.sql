/*
Посчитайте количество сотрудников, у кого есть комиссионные, средние комиссионные среди всех сотрудников и средние комиссионные среди получающих их сотрудников.
Под комиссионными здесь понимается процент комиссионных - commission_pct
*/

select count(employee_id)-(count(employee_id)-count(commission_pct)), sum(commission_pct)/count(employee_id), avg(commission_pct)
from employees