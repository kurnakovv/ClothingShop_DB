use ClothingShop;

-- Create backup for Basket Clothings.
select * into BasketClothingsBackup from BasketClothings;

select * from BasketClothingsBackup;

drop table BasketClothings;

create table BasketClothings
(
	BasketId int not null,
	ClothingId int not null,
	foreign key(BasketId) references Baskets (Id),
	foreign key(ClothingId) references Clothings (Id),
);

create index IX_BasketClothings_BasketId on BasketClothings (BasketId);
create index IX_BasketClothings_ClothingId on BasketClothings (ClothingId);

-- Insert data in Basket Clothings
insert into BasketClothings select * from BasketClothingsBackup;

select * from BasketClothings;

drop table BasketClothingsBackup;