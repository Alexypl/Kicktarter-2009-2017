with successful_records as (
select 
	Category
	,count(Category) as Successful_category_count
from kickstarter
where State = 'Successful'
group by Category
order by 2 desc),
all_records as (
select 
	Category
	,count(Category) as Category_count
from kickstarter
group by Category
order by 2 desc
)
select sr.Category
	,sr.Successful_category_count
	,ar.Category_count
	,sr.Successful_category_count / ar.Category_count as Successful_rate
from successful_records as sr
inner join all_records as ar
	on sr.Category = ar.Category