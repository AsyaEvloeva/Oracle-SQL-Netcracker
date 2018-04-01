/*
Выведите 'Yes', если в разложении числа 123456789 по степеням двойки существует двойка в степени 10, и 'No' иначе.
Указание: Использование BITAND, POWER.
*/

SELECT
CASE WHEN BITAND(123456789,POWER(2,10)) != 0 THEN 'Yes' ELSE 'No' END 
FROM dual