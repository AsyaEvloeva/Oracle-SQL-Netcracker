/*
Для каждого заказа из таблицы ORDERS вывести customerid, orderid и суммарную стоимость всех компонентов этого заказа (с учетом скидки).
Примечание: предполагается, что запрос будет содержать только одно слово SELECT
*/

select distinct customerid, a.orderid, sum((unitprice-(unitprice*discount))*quantity) over (partition by a.orderid)
from orders a, orderdetails b
where a.orderid = b.orderid