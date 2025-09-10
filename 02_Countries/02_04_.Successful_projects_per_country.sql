with all_records_countries as (select 
	Country
	,Count(State) as Country_count
from kickstarter
group by Country
order by 2 desc),
successful_records_countries as (
select 
	Country
	,Count(State) as Successful_country_count
from kickstarter
where State = 'Successful'
group by Country
order by 2 desc)
select 
	ar.Country
	,ar.Country_count
	,sr.Successful_country_count
	,(sr.Successful_country_count / ar.Country_count) * 100 as Successful_rate
from all_records_countries as ar
inner join successful_records_countries as sr
	on ar.Country = sr.Country