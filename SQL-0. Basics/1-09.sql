/*
Выведите все данные (*) о сотрудниках с зарплатой не менее 3000, кроме сотрудника с фамилией King.
*/

SELECT *
FROM EMPLOYEES
WHERE SALARY>=3000
AND
LAST_NAME<>'King'