use adventure_works;

-- Drop table Customer;

CREATE TABLE Customer (
    CustomerKey INT PRIMARY KEY,
    GeographyKey INT NOT NULL,
    CustomerAlternateKey VARCHAR(20) NOT NULL,
    Title VARCHAR(10),
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50),
    LastName VARCHAR(50) NOT NULL,
    NameStyle VARCHAR(50) NOT NULL,
    BirthDate  VARCHAR(50),
    MaritalStatus CHAR(1) NOT NULL,
    Suffix VARCHAR(10),
    Gender CHAR(1) NOT NULL,
    EmailAddress VARCHAR(100),
    YearlyIncome DECIMAL(10, 2),
    TotalChildren INT,
    NumberChildrenAtHome INT,
    EnglishEducation VARCHAR(50),
    SpanishEducation VARCHAR(50),
    FrenchEducation VARCHAR(50),
    EnglishOccupation VARCHAR(50),
    SpanishOccupation VARCHAR(50),
    FrenchOccupation VARCHAR(50),
    HouseOwnerFlag BOOLEAN NOT NULL,
    NumberCarsOwned INT,
    AddressLine1 VARCHAR(100),
    AddressLine2 VARCHAR(100),
    Phone VARCHAR(20),
    DateFirstPurchase  VARCHAR(50),
    CommuteDistance VARCHAR(20)
);

select * from Customer