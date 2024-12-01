use adventure_works;

-- Lookup the Customerfullname from the Customer and Unit Price from Product sheet to Sales sheet.

SELECT 
    c.*,
    P.EnglishProductName as ProductName,
    CONCAT(C.FirstName, ' ', COALESCE(C.MiddleName, ''), ' ', C.LastName) AS CustomerFullName -- Concatenate Full Name
FROM CombinedFactinternetSales S
JOIN Products P
    ON S.ProductKey = P.ProductKey
JOIN Customer C
    ON S.CustomerKey = C.CustomerKey;


