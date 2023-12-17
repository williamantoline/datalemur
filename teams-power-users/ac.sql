select sender_id, count(messages)
from messages
where sent_date >= '08/01/2022' and sent_date <= '08/31/2022'
group by sender_id
order by count(messages) desc
limit 2