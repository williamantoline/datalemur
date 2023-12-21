select customer_id
from customer_contracts
left join products on customer_contracts.product_id = products.id
group by customer_id
having count(distinct products.product_category) = 
(select count(distinct products.product_category) from products)