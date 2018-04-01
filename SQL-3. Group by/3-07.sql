/*
Выведите максимальное значение средней зарплаты по отделам. Результат округлите до ближайшего целого.
*/

SELECT max(round(avg(salary)))
FROM employees 
GROUP BY department_id