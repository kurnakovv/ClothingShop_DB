use ClothingShop;

declare @discount float = 0.5;

select 
	Name,
	Price OldPrice,
	Price * @discount NewPrice
from Clothings c
where c.CategoryId = 1;