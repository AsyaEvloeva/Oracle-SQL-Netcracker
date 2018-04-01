/*
Из таблицы LOCATIONS выведите адрес (STREET_ADDRESS) и позицию второго буквенного символа, входящего в ту же строку (адрес). 
Указание: Использование REGEXP_INSTR.
*/

SELECT STREET_ADDRESS, REGEXP_INSTR(STREET_ADDRESS, '[a-z]')
FROM locations