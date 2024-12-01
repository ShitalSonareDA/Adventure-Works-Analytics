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

    -- Calculating the Sales Amount
    (C.UnitPrice * C.OrderQuantity * (1 - C.UnitPriceDiscountPct)) AS TotalSalesAmount,

    -- Calculating the Production Cost
    (C.ProductStandardCost * C.OrderQuantity) AS TotalProductionCost,

    -- Calculating the Profit
    ((C.UnitPrice * C.OrderQuantity * (1 - C.UnitPriceDiscountPct)) - (C.ProductStandardCost * C.OrderQuantity)) AS Profit
FROM CombinedFactInternetSales C
JOIN Products P
    ON C.ProductKey = P.ProductKey;


Select
   -- Calculating the Sales Amount
    CEILING((C.UnitPrice * C.OrderQuantity * (1 - C.UnitPriceDiscountPct))) AS TotalSalesAmount,

    -- Calculating the Production Cost
   CEILING((C.ProductStandardCost * C.OrderQuantity)) AS TotalProductionCost,

    -- Calculating the Profit
    CEILING(((C.UnitPrice * C.OrderQuantity * (1 - C.UnitPriceDiscountPct)) - (C.ProductStandardCost * C.OrderQuantity))) AS Profit
FROM CombinedFactInternetSales C
JOIN Products P
    ON C.ProductKey = P.ProductKey;
