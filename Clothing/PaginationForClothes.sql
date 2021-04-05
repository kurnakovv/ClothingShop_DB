use ClothingShop;

select
	* 
from Clothings c
order by 
	c.Id offset 0 rows
	fetch next 5 rows only;

select
	* 
from Clothings c
order by 
	c.Id offset 5 rows
	fetch next 5 rows only;