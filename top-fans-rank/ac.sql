with cte as (
select artists.artist_name, dense_rank() over(order by count(*) desc) artist_rank
from artists
left join songs on artists.artist_id = songs.artist_id
left join global_song_rank on songs.song_id = global_song_rank.song_id
where global_song_rank.rank <= 10
group by artists.id
)
select * from cte
where cte.artist_rank <= 5