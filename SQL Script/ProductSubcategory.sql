use adventure_works;

CREATE TABLE ProductSubcategory (
    ProductSubcategoryKey INT PRIMARY KEY,
    ProductSubcategoryAlternateKey INT NOT NULL,
    EnglishProductSubcategoryName VARCHAR(100) NOT NULL,
    SpanishProductSubcategoryName VARCHAR(100) NOT NULL,
    FrenchProductSubcategoryName VARCHAR(100) NOT NULL,
    ProductCategoryKey INT NOT NULL
);

select * from ProductSubcategory;
