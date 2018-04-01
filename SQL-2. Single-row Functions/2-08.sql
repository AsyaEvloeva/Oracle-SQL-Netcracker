/*
Выведите имя, фамилию сотрудника, его email и четвертой колонкой — email сотрудника,
заменив в нем символы по следующему соответствию: A-a, E-e, I-i, O-o, U-u, Y-y.
Указание: Использование TRANSLATE.
*/

select first_name, last_name, email, translate(email, 'AEIOUY', 'aeiouy')
from employees