/*
Выведите все данные (*) о сотрудниках, у которых либо id должности равно "FI_ACCOUNT" и зарплата больше 4200, 
либо id должности равно "IT_PROG" (и любая зарплата).
Указание: Запрос должен быть написан без использования скобок.
*/

SELECT * 
FROM employees
WHERE JOB_ID = 'FI_ACCOUNT' AND SALARY>4200
UNION ALL
SELECT * 
FROM employees
WHERE JOB_ID = 'IT_PROG'