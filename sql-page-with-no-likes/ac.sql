select pages.page_id
from pages
left join page_likes on pages.page_id = page_likes.page_id
group by pages.page_id
having count(page_likes) = 0;