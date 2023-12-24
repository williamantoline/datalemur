with cte as (
  select app_id, 
  case when event_type = 'click' then 1 else 0 end as click,
  case when event_type = 'impression' then 1 else 0 end as impr,
  timestamp
  from events
)
select cte.app_id, round(sum(cte.click)*100.0/sum(cte.impr),2) as ctr
from cte
where cte.timestamp >= '2022-01-01' and timestamp <= '2023-12-31'
group by cte.app_id