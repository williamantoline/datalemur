select user_id, spend, transaction_date
from
(
select user_id, spend, transaction_date, rank() over(partition by user_id order by transaction_date) rk
from transactions
) trx
where rk = 3