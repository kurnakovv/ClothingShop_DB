use ClothingShop;

select 
	* 
from Clothings;

select
	c.Name,
	c.Price,
	cc.Name,
	cs.Name,
	ct.Name,
	i.Url
from Clothings c
	left join ClothingCategories cc on c.CategoryId = cc.Id
	left join ClothingSizes cs on c.SizeId = cs.Id
	left join ClothingTypes ct on c.TypeId = ct.Id
	left join Images i on i.ClothingId = c.Id;
	
