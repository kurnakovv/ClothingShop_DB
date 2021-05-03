use ClothingShop

select 
	c.Name,
	coalesce(sum(cl.Price), 0) as TotalAmount
from Customers c
	left join Baskets b on b.CustomerId = c.Id
	left join BasketClothings bc on bc.BasketId = b.Id
	left join Clothings cl on cl.Id = bc.ClothingId
group by c.Name
order by TotalAmount desc
;