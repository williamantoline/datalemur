select round(cast((sum(x.z) / sum(x.y)) as numeric),1)
from (
  select order_occurrences y, item_count * order_occurrences z
  from items_per_order
) x