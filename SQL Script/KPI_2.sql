use adventure_works;

-- Lookup the productname from the Product sheet to Sales sheet.
SELECT 
   c.*,
   P.EnglishProductName as ProductName-- Lookup ProductName from Product table
FROM CombinedFactInternetSales C
JOIN Products P
    ON C.ProductKey = P.ProductKey;
