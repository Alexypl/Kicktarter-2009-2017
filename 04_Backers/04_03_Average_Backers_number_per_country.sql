select Country, Round(AVG(Backers),0)
from kickstarter
group by Country
order by 2 desc