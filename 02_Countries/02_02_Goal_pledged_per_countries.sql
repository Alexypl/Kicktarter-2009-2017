select 
	Country
	,AVG(Goal) as Goal_by_country
	,AVG(Pledged) as Pledged_by_country
from kickstarter
group by Country
order by 2 desc