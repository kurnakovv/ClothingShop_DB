use ClothingShop;

select 
	c.CategoryId,
	count(*) CategoryCount,
	max(cc.Name) CategoryName
from
	Clothings c
	left join ClothingCategories cc on c.CategoryId = cc.Id
group by c.CategoryId;