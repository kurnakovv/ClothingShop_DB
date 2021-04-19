use ClothingShop;

bulk insert Clothings

-- Use your path current file
from 'D:\C#\sql\ClothingShop\Clothing\BulkInsert\clothes.csv'

with
(
rowterminator='\n',
fieldterminator=','
);

select * from Clothings;