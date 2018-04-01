/*
Выведите идентификатор (supplierid) всех поставщиков (suppliers), поставляющих продукцию (products) только одной категории (categories), 
а также имя этой категории (categoryname)
*/

select distinct g.supplierid, r.categoryname
from products g, categories r
where g.supplierid = ANY (select supplierid from (
select distinct a.supplierid, count(c.categoryname)
from suppliers a, products b, categories c
where a.supplierid = b.supplierid
and b.categoryid = c.categoryid
having count(unique(c.categoryname)) = 1
group by a.supplierid
))
and g.categoryid = r.categoryid