with category_subcategory_count as (
	select 
		category
		,subcategory
		,count(subcategory) as subcategory_count
	from kickstarter
	group by category, subcategory
	order by 1, 3 desc
), subcategory_successful_count as (
	select category
		,subcategory
		,count(subcategory) as subcategory_successful_count
	from kickstarter
	where State = 'Successful'
	group by category, subcategory
	order by 1, 3 desc)
select 
	csc.category
	,ssc.subcategory
	,ssc.subcategory_successful_count
	,csc.subcategory_count
	,round((ssc.subcategory_successful_count / csc.subcategory_count)*100,2) as succesful_rate_per_subcategory
from category_subcategory_count as csc
left join subcategory_successful_count as ssc
on csc.category = ssc.category and csc.subcategory = ssc.subcategory