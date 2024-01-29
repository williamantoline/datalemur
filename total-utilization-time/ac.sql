with cte as (
SELECT server_id, session_status, status_time, rank() over(order by server_id, status_time) + 1 as rnk
FROM server_utilization
order by server_id, status_time
)
select 
sum(extract(epoch from stop.status_time - start.status_time)::int/3600)/24 as total_uptime_days
from cte as start
inner join cte as stop on start.rnk / 2 = stop.rnk / 2 and start.rnk != stop.rnk
where start.session_status = 'start'
