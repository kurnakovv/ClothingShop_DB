use ClothingShop;

select 
	c.Name,
	c.Price
from Clothings c
order by c.Price;

select 
	c.Name,
	c.Price
from Clothings c
order by c.Price desc;