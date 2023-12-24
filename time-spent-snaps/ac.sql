with cte as (
  select user_id,
  case when activity_type = 'open' then time_spent else 0 end as open, 
  case when activity_type = 'send' then time_spent else 0 end as send
  from activities
)
select age_breakdown.age_bucket,
  round(sum(cte.open)/sum(cte.open + cte.send)*100, 2) as open_perc, 
  round(sum(cte.send)/sum(cte.open + cte.send)*100, 2) as send_perc
from cte 
left join age_breakdown on cte.user_id = age_breakdown.user_id
group by age_breakdown.age_bucket
