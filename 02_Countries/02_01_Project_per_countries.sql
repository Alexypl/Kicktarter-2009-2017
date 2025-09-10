select 
	Country
	,count(Country) as Projects_by_country
from kickstarter
group by Country
order by 2 desc