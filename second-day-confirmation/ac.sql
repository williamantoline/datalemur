select user_id
from texts 
left join emails on texts.email_id = emails.email_id
where texts.signup_action = 'Confirmed' and texts.action_date::date - emails.signup_date::date = 1