/*
Вывести, какие уникальные иерархии подчинения (от самого старшего командира до младшего подчиненного) присутствуют в таблице staff.
Под элементом иерархии понимаются не имя военнослужащего, а его воинское звание (таблица ranks).
Элементы разделяются символом ">", а упорядочиваются от старшего к младшему. Например:
Colonel>Major>Leutenant>Sergeant
*/

select one
from (
select unique(substr(sys_connect_by_path(r.name, '>'), 2, 100)) as one
from staff f, ranks r
where r.rank_id = f.rank_id(+)
and connect_by_isleaf = 1
start with chief is null
connect by chief = prior person_id
)
where length(one)>8