select 
	Country
	,Sum(case when State = 'Failed' then 1 else 0 end) / count(State) as Failed_Count
	,Sum(case when State = 'Successful' then 1 else 0 end) / count(State) as Successful_Count
	,Sum(case when State = 'Canceled' then 1 else 0 end) / count(State) as Canceled_Count
	,Sum(case when State = 'Suspended' then 1 else 0 end) / count(State) as Suspended_Count
	,Sum(case when State = 'Live' then 1 else 0 end) / count(State) as Live_Count
from kickstarter
group by Country
order by count(State) desc