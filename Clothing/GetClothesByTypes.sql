use ClothingShop;

select 
	c.Name,
	c.Price,
	ct.Name Type
from Clothings c
	left join ClothingTypes ct on c.TypeId = ct.Id
where c.TypeId = 1;

select 
	c.Name,
	c.Price,
	ct.Name Type
from Clothings c
	left join ClothingTypes ct on c.TypeId = ct.Id
where c.TypeId = 2;

select 
	c.Name,
	c.Price,
	ct.Name Type
from Clothings c
	left join ClothingTypes ct on c.TypeId = ct.Id
where c.TypeId = 3;