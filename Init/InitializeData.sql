use ClothingShop;

insert into ClothingTypes(Name)
values
('T-shirt'),
('Blouse'),
('Jeans');

insert into ClothingCategories(Name)
values
('Films'),
('Games'),
('Brands');

insert into ClothingSizes(Name)
values
('S'),
('M'),
('L'),
('XL'),
('XXL');

insert into Clothings(Name, Price, TypeId, CategoryId, SizeId)
values
('Black and white', 1250, 1, 1, 2),
('Dealeron T-shirt', 1999, 1, 1, 2),
('Pikachu t-shirt ', 2500, 1, 1, 2),
('Kimetsu no Yaiba', 500, 1, 1, 2),
('THE LAST OF US ellie t-shirt', 1690, 1, 1, 2),
('Space blouse', 1250, 2, 1, 2),
('Doberman in a blouse', 3000, 2, 1, 2),
('Snow', 2999, 3, 1, 2),
('Ripped jeans', 5000, 3, 1, 2),
('Tom and Jerry', 999, 3, 1, 2);

insert into Images(Url, ClothingId)
values
('Black_and_white.png', 1),
('Dealeron_T_shirt.png', 2),
('Pikachu_t_shirt.png', 3),
('Kimetsu_no_Yaiba.png', 4),
('THE_LAST_OF_US_ellie_t_shirt.png', 5),
('Space_blouse.png', 6),
('Doberman_in_a_blouse.png', 7),
('Snow.png', 8),
('Ripped_jeans.png', 9),
('Tom_and_Jerry.png', 10);

insert into Customers(Name, Email, Phone)
values
('Vasia', 'vasia@gmail.com', '79999999991'),
('Petia', 'petia@gmail.com', '79999999992'),
('Kolya', 'kolya@gmail.com', '79999999993');

insert into Baskets(CustomerId)
values
(1),
(1),
(2);

insert into BasketClothings(BasketId, ClothingId)
values
(1, 1),
(1, 5),
(2, 6),
(2, 2),
(3, 10);