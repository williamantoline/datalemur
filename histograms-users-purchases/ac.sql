with cte as (
  select user_id, max(transaction_date) as transaction_date
  from user_transactions
  group by user_transactions.user_id
)
select cte.transaction_date, cte.user_id, count(user_transactions) as purchase_count
from cte
left join user_transactions on cte.user_id = user_transactions.user_id and cte.transaction_date = user_transactions.transaction_date
group by cte.transaction_date, cte.user_id
order by cte.transaction_date