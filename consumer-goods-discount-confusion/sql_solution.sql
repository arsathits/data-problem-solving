SELECT 
	category AS Category,
	description AS Description,
	COALESCE(
        CAST(regexp_substr(description, '\d+') AS FLOAT) / 100,
        0
    ) AS Discount,
	productname AS ProductName,
	soldunits AS SoldUnits,
	storeid AS StoreID 
FROM SalesData