/*
Выведите все данные (*) о сотрудниках из таблицы employees, у которых нет комиссионных и есть менеджер.
*/

SELECT *
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL
AND
MANAGER_ID IS NOT NULL