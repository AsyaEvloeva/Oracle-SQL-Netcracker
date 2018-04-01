/*
Для военнослужащего с именем "Vasiliev" вывести всех его подчиненных (прямых и непрямых), у которых, в свою очередь, нет собственных подчиненных. 
Подчинение определяется колонкой chief в таблице staff.
Вывод: имя военнослужащего, его звание, название подразделения и ID военнослужащего.
*/

select f.NAME, r.name as rank, m.name as unit, f.PERSON_ID
from staff f, ranks r, military_units m
where connect_by_isleaf = 1
and f.rank_id = r.rank_id
and f.unit_id = m.unit_id
start with f.chief is null
connect by f.chief = prior f.person_id