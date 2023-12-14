select tweet_bucket, count(user_id) as users_num
from
(
select user_id, count(tweets) as tweet_bucket from tweets
where EXTRACT('year' FROM tweet_date) = 2022
group by tweets.user_id
) sub
group by tweet_bucket;
