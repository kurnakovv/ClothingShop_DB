use ClothingShop;

select 
	c.Name,
	c.Price,
	case
		when c.Price > 1000 then 'Profitable clothing!'
		when c.Price < 1000 then 'Expensive clothing '
	end as PriceCharacteristic
from Clothings as c

;