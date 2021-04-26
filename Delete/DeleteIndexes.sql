use ClothingShop;

drop index IX_Clothings_Name on Clothings;
drop index IX_Clothings_Price on Clothings;
drop index IX_Clothings_TypeId on Clothings;
drop index IX_Clothings_CategoryId on Clothings;
drop index IX_Clothings_SizeId on Clothings;
drop index IX_Images_ClothingId on Images;
drop index IX_Baskets_CustomerId on Baskets;
drop index IX_BasketClothings_BasketId on BasketClothings;
drop index IX_BasketClothings_ClothingId on BasketClothings;
drop index IX_ClothingCoupons_CustomerId on ClothingCoupons;