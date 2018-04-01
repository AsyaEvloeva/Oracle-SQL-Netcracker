/*
Для каждого военнослужащего званием ниже лейтенанта вывести начальника роты (подразделения с названием 'Company'), к которой приписан данный военнослужащий.
В обоих столбцах выводить атрибут name.
Примечание: отношение званий (выше/ниже) хранится в атрибуте priority таблицы ranks.
Для проверки можно использовать тот факт, что начальник роты является майором.
*/

select d.voenn,  h.one
from (
SELECT f.name as voenn, priority, r.name
from ranks r, staff f
where r.rank_id = f.rank_id
and priority < 5	 ) d,

(SELECT f.name as voenna, 
rtrim(substr(lpad('',2*level)||sys_connect_by_path(f.name, ' / '), 15, 8)) as one
from staff f, military_units m
where m.unit_id = f.unit_id(+)
and level > 2
start with m.parent_id is null
connect by m.parent_id = prior m.unit_id
order by 1) h

where d.voenn = h.voenna(+)