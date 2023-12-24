select users.city, count(*) as total_orders
from trades 
left join users on trades.user_id = users.user_id
where trades.status = 'Completed'
group by users.city
order by total_orders desc
limit 3