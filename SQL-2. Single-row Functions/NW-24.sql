/*
Для всех имен продуктов (PRODUCTNAME) из таблицы PRODUCTS, которые состоят более чем из одного слова,
выведите первым столбцом само имя, вторым - только первое слово имени. Например:
Teatime Chocolate Biscuits	Teatime
Считать, что слова отделяются друг от друга пробелами.
*/

select PRODUCTNAME, 
NVL(SUBSTR(PRODUCTNAME, 0, INSTR(PRODUCTNAME, ' ')-1), PRODUCTNAME) AS output
FROM PRODUCTS
WHERE PRODUCTNAME LIKE '% %'