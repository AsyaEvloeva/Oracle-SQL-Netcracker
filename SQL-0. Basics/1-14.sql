/*
Выведите все данные (*) о сотрудниках, зарплата которых не менее 4200 и не более 6000.
Указание: Использовать оператор between.
*/

SELECT * 
FROM employees
WHERE SALARY BETWEEN 4200 AND 6000