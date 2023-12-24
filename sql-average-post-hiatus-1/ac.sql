select user_id, max(post_date)::date - min(post_date)::date as days_between
from posts 
where post_date >= '2021-01-01' and post_date <= '2021-12-31'
GROUP BY user_id
having count(post_date) > 1