with cte as (
  select case when signup_action = 'Confirmed' then 1 else 0 end as c,
  case when signup_action = 'Not Confirmed' then 1 else 0 end as nc
  from texts
)
select round(sum(cte.c)::numeric / count(*)::numeric, 2) as activation_rate
from cte