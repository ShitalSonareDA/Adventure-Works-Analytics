use adventure_works;

CREATE TABLE SalesTerritory (
    SalesTerritoryKey INT PRIMARY KEY,
    SalesTerritoryAlternateKey INT NOT NULL,
    SalesTerritoryRegion VARCHAR(50) NOT NULL,
    SalesTerritoryCountry VARCHAR(50) NOT NULL,
    SalesTerritoryGroup VARCHAR(50) NOT NULL
);

