with cte as (
  select card_name, issued_amount, rank() over(PARTITION BY card_name order by issue_year, issue_month) as rnk
  from monthly_cards_issued
)
select card_name, issued_amount
from cte
where rnk = 1
order by issued_amount desc