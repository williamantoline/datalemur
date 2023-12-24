with cte as (
select company_id
from job_listings 
group by company_id, title, description
having count(title) + count(description) > 2
)
select count(*) as duplicate_companies from cte
