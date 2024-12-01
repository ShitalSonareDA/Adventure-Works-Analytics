use adventure_works;

CREATE TABLE ProductCategory (
    ProductCategoryKey INT PRIMARY KEY,
    ProductCategoryAlternateKey INT NOT NULL,
    EnglishProductCategoryName VARCHAR(50) NOT NULL,
    SpanishProductCategoryName VARCHAR(50) NOT NULL,
    FrenchProductCategoryName VARCHAR(50) NOT NULL
);

select * from ProductCategory;