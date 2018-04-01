/*
Найти заказчиков (customers), сделавшие заказы в тот день или те дни (orderdate), в которые было совершено наибольшее число заказов.
Вывести: дату (orderdate) и название компании-заказчика (companyname).
*/

select orderdate, companyname
from orders a, customers b
where orderdate = (select orderdate from (select orderdate, count(orderid), RANK() OVER (order by count(orderid) desc) as rank
from orders
group by orderdate)
where rank = 1)
and a.customerid = b.customerid