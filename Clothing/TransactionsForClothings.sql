use ClothingShop;

begin transaction
	insert into Clothings(Name, Price, CategoryId, SizeId, TypeId)
	values
	('Name1', 100, 1, 1, 1),
	('Name2', 200, 2, 2, 2)

	insert into Clothings(Name, Price, CategoryId, SizeId, TypeId)
	values
	('Name3', 300, 3, 3, 3),
	('Name4', 400, 1, 1, 1)
commit;

select * from Clothings;