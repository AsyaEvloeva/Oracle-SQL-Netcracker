/*
Перечислить в одной строчке через запятую (без пробелов) весь личный состав первого отделения 
(т.е. подразделения с именем "Squad #1"), упорядочив там имена военнослужащих (name) по алфавиту.
Учитывать только военнослужащих, приписанных непосредственно к отделению.
*/

select substr(mm, 2, 100)
from (
select name, rank, rankk, sys_connect_by_path(name, ',') as mm
from (
select f.NAME as name, (rank () over (ORDER BY f.name))-1 as rank, rank () over (ORDER BY f.name) as rankk
from staff f, military_units m
where m.name = 'Squad #1'
and f.unit_id = m.unit_id
start with f.chief is null
connect by f.chief = prior f.person_id
order by 1)
start with rank = 0
connect by rank = prior rankk
)
where rankk = 6