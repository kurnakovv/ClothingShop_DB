use ClothingShop;
go

create proc GetAllClothes as 
begin
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
end;

go

create proc GetClothesByTypes
	@typeId int
as 
begin
	select 
		c.Name,
		c.Price,
		ct.Name Type
	from Clothings c
		left join ClothingTypes ct on c.TypeId = ct.Id
	where c.TypeId = @typeId;
end;

go

create proc GroupByCategory as 
begin
	select 
		c.CategoryId,
		count(*) CategoryCount,
		max(cc.Name) CategoryName
	from
		Clothings c
		left join ClothingCategories cc on c.CategoryId = cc.Id
	group by c.CategoryId;
end;

go

create proc PaginationForClothes as 
begin
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
end;

go

create proc SetDiscount
	@discount int
as 
begin
	declare @coefficientDiscount float = 1 - ((@discount * 0.1) / (100 * 0.1));

	select 
		Name,
		Price OldPrice,
		Price * @coefficientDiscount NewPrice
	from Clothings c
	where c.CategoryId = 1;
end;

go

create proc SortByPrice as 
begin
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
end;

go

use ClothingShop;
go

create proc AddCoupon
	@clothingId int,
	@customerId int
as
begin
	declare @basketId int;
	declare @percentage int = 10;

	insert into Baskets
	(CustomerId)
	values
	(@customerId)

	set @basketId = SCOPE_IDENTITY();
	
	insert into BasketClothings
	(BasketId, ClothingId)
	values
	(@basketId, @clothingId)

	insert into ClothingCoupons
	(CustomerId, Percentage)
	values
	(@customerId, @percentage)
end;