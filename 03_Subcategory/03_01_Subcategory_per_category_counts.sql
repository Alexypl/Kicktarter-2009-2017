select category, subcategory, count(subcategory)
from kickstarter
group by category, subcategory
order by 1, 3 desc