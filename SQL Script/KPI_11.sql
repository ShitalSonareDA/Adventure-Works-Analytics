use adventure_works;

SELECT 
    D.CalendarYear AS Year,  -- Getting Year from Date Table
    SUM(C.UnitPrice * C.OrderQuantity * (1 - C.UnitPriceDiscountPct)) AS TotalSalesAmount,  -- Calculating Sales Amount
    SUM(C.ProductStandardCost * C.OrderQuantity) AS TotalProductionCost  -- Calculating Production Cost
FROM CombinedFactInternetSales C
JOIN Calendar D
    ON YEAR(CAST(C.OrderDateKey AS DATE)) = D.CalendarYear  -- Join on year extracted from OrderDateKey
GROUP BY D.CalendarYear  -- Grouping by CalendarYear from Date Table
ORDER BY D.CalendarYear;
