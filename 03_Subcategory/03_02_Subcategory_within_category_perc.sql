with category_count as (
		select Category
			,count(Category) as category_count_col
		from kickstarter
		group by Category
		order by 1),
	category_subcategory_count as (
		select Category
			,Subcategory
			,count(subcategory) as subcategory_count_col
		from kickstarter
		group by Category, Subcategory
		order by 1)
select cc.Category
	,csc.Subcategory
	,round((csc.subcategory_count_col / cc.category_count_col)*100,2) as subcategory_within_category_perc
from category_count as cc
left join category_subcategory_count as csc
on cc.Category = csc.Category