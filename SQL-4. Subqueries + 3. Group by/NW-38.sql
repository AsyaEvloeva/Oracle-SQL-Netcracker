/*
Выведите имена (companyname) и адреса (address) заказчиков (customers), не сделавших ни одного заказа (orders)
*/

select companyname, address
from customers a, orders b
where a.CUSTOMERID = b.CUSTOMERID(+)
and b.customerid is null