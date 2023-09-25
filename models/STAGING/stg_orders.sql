
select 
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice - o.ordercustprice as orderprofit,
o.ordersellingprice,
o.ordercustprice as ordercostprice,
c.customerid,
c.customername,
c.segment,
c.country,
p.productid,
p.category,
p.productname,
p.subcategory
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
ON o.customerid = c.customerid
left join {{ ref('raw_product') }} as p
ON o.productid = p.productid









