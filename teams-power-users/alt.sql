select sender_id, count(messages)
from messages
where extract(month from sent_date) = 8 and extract(year from sent_date) = 2022
group by sender_id
order by count(messages) desc
limit 2