use ClothingShop;

declare @discount int = 10;
declare @coefficientDiscount float = 1 - ((@discount * 0.1) / (100 * 0.1));

select 
	Name,
	Price OldPrice,
	Price * @coefficientDiscount NewPrice
from Clothings c
where c.CategoryId = 1;