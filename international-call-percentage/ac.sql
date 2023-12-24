with cte as (
select 
case when pifrom.country_id != pito.country_id then 1 else 0 end as intl, 
1 as overall
from phone_calls 
left join phone_info pifrom on phone_calls.caller_id = pifrom.caller_id
left join phone_info pito on phone_calls.receiver_id = pito.caller_id
)
select round(cast(sum(intl) * 100.0 / sum(overall) as float)::numeric,1) as international_calls_pct
from cte