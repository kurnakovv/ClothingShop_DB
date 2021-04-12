use ClothingShop;
go

create trigger Baskets_Insert_GetTShirts
on BasketClothings 
after insert
as
exec GetClothesByTypes 
	@typeId = 1;