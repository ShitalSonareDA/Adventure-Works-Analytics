use adventure_works;

SELECT 
    C.ProductKey,
    C.OrderDateKey,
    C.DueDateKey,
    C.ShipDateKey,
    C.CustomerKey,
    C.PromotionKey,
    C.CurrencyKey,
    C.SalesTerritoryKey,
    C.SalesOrderNumber,
    C.SalesOrderLineNumber,
    C.RevisionNumber,
    C.OrderQuantity,
    C.UnitPrice,
    C.ExtendedAmount,
    C.UnitPriceDiscountPct,
    C.DiscountAmount,
    C.ProductStandardCost,
    C.TotalProductCost,
    C.SalesAmount,
    C.TaxAmt,
    C.Freight,
    C.CarrierTrackingNumber,
    C.CustomerPONumber,
    C.OrderDate,
    C.DueDate,
    C.ShipDate,
    P.EnglishProductName as ProductName,  -- Product Name

    -- Calculating the Production Cost
    (C.ProductStandardCost * C.OrderQuantity) AS TotalProductionCost
FROM CombinedFactInternetSales C
JOIN Products P
    ON C.ProductKey = P.ProductKey;

select
-- Calculating the Production Cost
    CEILING((C.ProductStandardCost * C.OrderQuantity)) AS TotalProductionCost
FROM CombinedFactInternetSales C
JOIN Products P
    ON C.ProductKey = P.ProductKey;