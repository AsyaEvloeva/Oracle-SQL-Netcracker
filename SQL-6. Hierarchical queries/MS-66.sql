/*
Вывести название самого малочисленного взвода (взвод - это подразделение, название которого начинается с 'Platoon') и его численность.
При подсчетах численности следует учитывать состав подразделений (отделений), подчиненных данному взводу.
Если во взводе нет ни одного военнослужащего, он выводиться не должен.
*/

select nn, pe
from
(
select nnn as nn, sum(pers) as pe
from (
select CONNECT_BY_ROOT nn AS nnn, pers
from (
SELECT m.name as nn, m.parent_id as pid, m.unit_id as unid, count(person_id) as pers, level
FROM MILITARY_UNITS m, STAFF f 
where m.UNIT_ID = f.UNIT_ID(+) 
START WITH m.name like 'Platoon%' 
CONNECT BY PRIOR m.unit_id = m.parent_id
group by m.name,  m.unit_id, m.parent_id, level
)
where pers <> 0
START WITH REGEXP_LIKE(nn, 'Platoon*') 
CONNECT BY PRIOR unid = pid 
)

group by nnn
order by 2 
)
where rownum = 1