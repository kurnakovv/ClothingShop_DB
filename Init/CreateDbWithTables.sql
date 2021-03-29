create database ClothingShop;

go

use ClothingShop;

create table ClothingTypes
(
	Id int not null identity,
	Name nvarchar(50) not null,
	primary key (Id),
);

create table ClothingCategories
(
	Id int not null identity,
	Name nvarchar(50) not null,
	primary key (Id),
);

create table ClothingSizes
(
	Id int not null identity,
	Name nvarchar(50) not null,
	primary key (Id),
);

create table Clothings
(
	Id int not null identity,
	Name nvarchar(50) not null,
	Price int not null check (Price > 0),
	TypeId int not null,
	CategoryId int not null,
	SizeId int not null,
	primary key (Id),
	foreign key(TypeId) references ClothingTypes (Id),
	foreign key(CategoryId) references ClothingCategories (Id),
	foreign key(SizeId) references ClothingSizes (Id),
);

create index IX_Clothings_Name on Clothings (Name);
create index IX_Clothings_Price on Clothings (Price);

create index IX_Clothings_TypeId on Clothings (TypeId);
create index IX_Clothings_CategoryId on Clothings (CategoryId);
create index IX_Clothings_SizeId on Clothings (SizeId);

create table Images
(
	Id int not null identity,
	Url nvarchar(45) not null,
	ClothingId int not null,
	primary key (Id),
	foreign key(ClothingId) references Clothings (Id),
);

create index IX_Images_ClothingId on Images (ClothingId);

create table Customers
(
	Id int not null identity,
	Name nvarchar(50) not null,
	Email nvarchar(50) not null ,
	Phone nvarchar(11) not null,
	primary key (Id),
);

create table Baskets
(
	Id int not null identity,
	CustomerId int not null,
	primary key (Id),
	foreign key(CustomerId) references Customers (Id),
);

create index IX_Baskets_CustomerId on Baskets (CustomerId);

create table BasketClothings
(
	BasketId int not null,
	ClothingId int not null,
	foreign key(BasketId) references Baskets (Id),
	foreign key(ClothingId) references Clothings (Id),
);

create index IX_BasketClothings_BasketId on BasketClothings (BasketId);
create index IX_BasketClothings_ClothingId on BasketClothings (ClothingId);