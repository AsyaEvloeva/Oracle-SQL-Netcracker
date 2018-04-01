/*
Выведите сотрудников, у которых комиссионные меньше 20% или не указаны. Задачу решите с применением только одного условия (без OR). 
Указание: использование LNNVL.
*/

select *
from employees
WHERE LNNVL(commission_pct >= .2)