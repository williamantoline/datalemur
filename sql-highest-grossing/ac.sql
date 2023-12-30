with cte as (
SELECT category, product, sum(spend) as total_spend, rank() over(PARTITION BY category order by sum(spend) desc) as rnk
FROM product_spend
where transaction_date >= '2022-01-01' and transaction_date <= '2022-12-31'
group by category, product
order by category, total_spend desc
)
select category, product, total_spend
from cte
where rnk <= 2