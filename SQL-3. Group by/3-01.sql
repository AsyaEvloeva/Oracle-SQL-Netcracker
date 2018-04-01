/*
Выведите в одну строчку: максимальную, среднюю и минимальную зарплату, суммарную зарплату, 
количество сотрудников и количество отделов, в которых состоят сотрудники.
Все значения вычисляйте по всем сотрудникам таблицы employees
*/

select MAX(SALARY), AVG(SALARY), MIN(SALARY), SUM(SALARY), COUNT(EMPLOYEE_ID), COUNT(UNIQUE(DEPARTMENT_ID))
FROM EMPLOYEES