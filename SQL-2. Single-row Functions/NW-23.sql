/*
В таблице CUSTOMERS адрес (address) может начинаться или заканчиваться числом.
Необходимо для всех клиентов вывести customerid, address и исправленный address, в котором из начала и конца строки убрано это число (т.е. цифры),
а также пробелы, запятые и точки (т.е. эти 3 символа рассматриваются так же, как цифры). 
Например:
ALFKI	Obere Str. 57	Obere Str
FRANR	54, rue Royale	rue Royale

*/

select CUSTOMERID, ADDRESS, RTRIM(LTRIM(ADDRESS, '1234567890 ,.'), '1234567890 ,.')
FROM CUSTOMERS