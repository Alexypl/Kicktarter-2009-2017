select 
    Category
    ,count(Category) as Category_count
from kickstarter
group by Category
order by 2 desc