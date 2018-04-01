/*
»з таблицы LOCATIONS выведите первым столбцом уникальный идентификатор местоположени€ (LOCATION_ID), 
вторым столбцом street Ч адрес, образованный усечением слева цифр и пробелов у колонки STREET_ADDRESS.
”казание: »спользование LTRIM.
*/

select location_id, ltrim(street_address, '1234567890 ') as street
from locations