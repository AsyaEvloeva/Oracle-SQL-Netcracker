/*
Для всех сотрудников выведите дату приема на работу (hire_date), имя сотрудника, его фамилию и текущий стаж,
т.е. число полных лет и полных месяцев, которые он отработал с даты приема. 
Число лет и месяцев следует выводить даже в том случае, если это число 0. Пример вывода стажа:
12 Years, 1 Months
Указание: Использовать MONTHS_BETWEEN и числовые функции. 
Примечание: следует обратить внимание на сотрудника, которому отдел кадров ошибочно указал дату приема в будущем.
В этом случае число месяцев (и лет) будет отрицательным. Например:
0 Years, -6 Months
*/

select  hire_date, first_name, last_name,  
concat(
concat(floor(floor(MONTHS_BETWEEN(systimestamp, hire_date))/12), ' Years, '),
concat(floor(MONTHS_BETWEEN(systimestamp, hire_date))-(floor(floor(MONTHS_BETWEEN(systimestamp, hire_date))/12)*12), ' Months' )
) as one



from employees, dual
where trunc(to_char(MONTHS_BETWEEN(systimestamp, hire_date)/12*10, '9999.999999')) > 0

union


select  hire_date, first_name, last_name,  
concat(
concat(floor(floor(MONTHS_BETWEEN(hire_date, systimestamp))/12)*(-1), ' Years, '),
concat(floor(MONTHS_BETWEEN(hire_date, systimestamp))*(-1), ' Months' )
) as one



from employees, dual
where trunc(to_char(MONTHS_BETWEEN(systimestamp, hire_date)/12*10, '9999.999999')) < 0 