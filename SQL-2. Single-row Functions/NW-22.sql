/*
Выведите сегодняшнюю дату в следующих четырех столбцах (все столбцы - строкового типа):
Год (4 цифры)
Полное название месяца заглавными буквами
День месяца (число)
День недели словом заглавными буквами
Пример вывода:
2011	OCTOBER	04	TUESDAY
*/

select 
to_char(systimestamp, 'YYYY') AS O, 
to_char(systimestamp,'MONTH') AS T, 
to_char(systimestamp, 'dd') AS H,
to_char(systimestamp,'DAY') AS F

from dual