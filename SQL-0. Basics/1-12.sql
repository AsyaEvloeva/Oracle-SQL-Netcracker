/*
Выведите все данные (*) о сотрудниках, которые НЕ находятся в подчинении у менеджеров с id 101 и 102 (включая топ-менеджера).
*/

SELECT *
FROM (SELECT *
FROM employees
WHERE manager_id not between 101 and 102)
union all
SELECT *
FROM employees
WHERE job_id='AD_PRES'