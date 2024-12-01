use adventure_works;

truncate table CombinedFactinternetSales;


select * from SalesTerritory;
select * from ProductSubcategory;
select * from ProductCategory;
select * from Customer;
select * from products;
select * from factinternetsales;
select * from calendar;
select * from factinternetsales_new;

-- Union of Fact Internet sales and Fact internet sales new
CREATE TABLE CombinedFactinternetSales
 (
    ProductKey VARCHAR(50),
    OrderDateKey VARCHAR(50),
    DueDateKey VARCHAR(50),
    ShipDateKey VARCHAR(50),
    CustomerKey VARCHAR(50),
    PromotionKey VARCHAR(50),
    CurrencyKey VARCHAR(50),
    SalesTerritoryKey VARCHAR(50),
    SalesOrderNumber VARCHAR(50),
    SalesOrderLineNumber VARCHAR(50),
    RevisionNumber VARCHAR(50),
    OrderQuantity VARCHAR(50),
    UnitPrice VARCHAR(50),
    ExtendedAmount VARCHAR(50),
    UnitPriceDiscountPct VARCHAR(50),
    DiscountAmount VARCHAR(50),
    ProductStandardCost VARCHAR(50),
    TotalProductCost VARCHAR(50),
    SalesAmount VARCHAR(50),
    TaxAmt VARCHAR(50),
    Freight VARCHAR(50),
    CarrierTrackingNumber VARCHAR(50),
    CustomerPONumber VARCHAR(50),
    OrderDate VARCHAR(50),
    DueDate VARCHAR(50),
    ShipDate VARCHAR(50)
);

INSERT INTO CombinedFactInternetSales
SELECT 
    ProductKey,
    OrderDateKey,
    DueDateKey,
    ShipDateKey,
    CustomerKey,
    PromotionKey,
    CurrencyKey,
    SalesTerritoryKey,
    SalesOrderNumber,
    SalesOrderLineNumber,
    RevisionNumber,
    OrderQuantity,
    UnitPrice,
    ExtendedAmount,
    UnitPriceDiscountPct,
    DiscountAmount,
    ProductStandardCost,
    TotalProductCost,
    SalesAmount,
    TaxAmt,
    Freight,
    CarrierTrackingNumber,
    CustomerPONumber,
    OrderDate,
    DueDate,
    ShipDate
FROM FactInternetSales

UNION ALL

SELECT 
    ProductKey,
    OrderDateKey,
    DueDateKey,
    ShipDateKey,
    CustomerKey,
    PromotionKey,
    CurrencyKey,
    SalesTerritoryKey,
    SalesOrderNumber,
    SalesOrderLineNumber,
    RevisionNumber,
    OrderQuantity,
    UnitPrice,
    ExtendedAmount,
    UnitPriceDiscountPct,
    DiscountAmount,
    ProductStandardCost,
    TotalProductCost,
    SalesAmount,
    TaxAmt,
    Freight,
    CarrierTrackingNumber,
    CustomerPONumber,
    OrderDate,
    DueDate,
    ShipDate
FROM FactInternetSales_New;

select * from CombinedFactinternetSales;


