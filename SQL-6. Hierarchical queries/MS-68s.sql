/*
Для каждого отделения (отделение - это подразделение, название которого начинается со слова "Squad") 
перечислить через запятую в одной строчке весь личный состав, упорядочив военнослужащих по алфавиту. 
Учитывать только военнослужащих, приписанных непосредственно к отделению.
Вывод: первой колонкой - ID подразделения, второй - список имен военнослужащих (name) через запятую (без пробелов).
*/

select distinct mm, LISTAGG(ff, ',')
                    WITHIN GROUP (ORDER BY mm, ff) 
                    OVER (PARTITION BY mm) as one
from (
select m.unit_id as mm, f.name as ff
from military_units m, staff f
where m.name like 'Squad%'
and m.unit_id = f.unit_id(+)
and f.name is not null
)