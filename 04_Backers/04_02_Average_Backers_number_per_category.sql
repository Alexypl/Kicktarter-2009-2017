select Category, Round(AVG(Backers),0)
from kickstarter
group by Category
order by 2 desc