/*
Выведите все страны из таблицы COUNTRIES: первым столбцом выведите название страны (COUNTRY_NAME), 
вторым столбцом - ту же строку (название страны), в которой исключены гласные буквы со всех позиций, кроме первой позиции в строке.
Гласными считаются буквы A,E,I,O,U,Y
*/

SELECT country_name, 
Replace( Replace( Replace( Replace( Replace( Replace( Replace( country_name,'a','' ),'e','' ),'i','' ), 'o', ''), 'u', ''), 'y', ''), ' A', ' ') as one
FROM countries