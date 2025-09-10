select 
	Category
	,Round(AVG(Goal),2) as Goal_per_category
	,Round(AVG(Pledged),2) as Pledged_per_category
from kickstarter
group by Category
order by 2 desc