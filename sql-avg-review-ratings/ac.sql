select EXTRACT(month from submit_date) as mth, product_id, round(avg(stars),2) as avg_stars
from reviews
group by EXTRACT(month from submit_date), product_id
order by mth, product_id