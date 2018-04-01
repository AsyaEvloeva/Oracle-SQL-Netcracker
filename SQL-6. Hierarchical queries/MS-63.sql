/*
Назовем средним сроком службы по подразделению (таблица military_units) среднее число дней службы на текущий момент всех военнослужащих (таблица staff), 
приписанных к этому подразделению и ко всем его дочерним подразделениям (до нижнего уровня).
Для каждого из взводов (military_units.name начинается с "Platoon"), к которым приписаны военнослужащие,
вывести имя взвода и средний срок службы по взводу, усеченный до дней (т.е. округленный в меньшую сторону).
*/

SELECT 
n_root, floor(AVG(SYSDATE-dt)) as main_dt 
FROM( 
SELECT 
CONNECT_BY_ROOT name AS n_root, 
dt 
FROM ( 
SELECT 
mu.UNIT_ID as un_id, 
mu.NAME as name, 
mu.PARENT_ID as pa_id, 
s.CONSC_DATE as dt 
FROM MILITARY_UNITS mu 
LEFT JOIN STAFF s 
ON mu.UNIT_ID = s.UNIT_ID 
) t1 
START WITH REGEXP_LIKE(name, 'Platoon*') 
CONNECT BY PRIOR un_id = pa_id 
) t2 
GROUP BY n_root 