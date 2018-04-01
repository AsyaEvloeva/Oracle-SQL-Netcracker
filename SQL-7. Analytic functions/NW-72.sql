/*
Для каждой делавшей заказы компании из таблицы CUSTOMERS вывести имя заказчика (companyname) 
и количество территорий (territoryid из таблицы ORDERS), на которых данный заказчик работает.
Примечание: предполагается, что запрос будет содержать только одно слово SELECT
*/

select distinct companyname, count(distinct b.territoryid) over ( partition by COMPANYNAME)
from customers a, orders b
where a.CUSTOMERID = b.CUSTOMERID(+)
and b.orderid is not null