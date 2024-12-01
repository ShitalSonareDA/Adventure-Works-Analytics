use adventure_works;

-- calcuate the following fields from the Orderdatekey field ( First Create a Date Field from Orderdatekey)

SELECT 
    C.*,
    P.EnglishProductName as ProductName,  -- Product Name

    -- A. Year
    D.CalendarYear AS Year,

    -- B. Month Number (1 to 12)
    D.MonthNumberOfYear AS Monthno,

    -- C. Month Full Name
    D.EnglishMonthName AS Monthfullname,

    -- D. Quarter (Q1, Q2, Q3, Q4)
    D.CalendarQuarter AS Quarter,

    -- E. Year-Month (YYYY-MMM)
    CONCAT(D.CalendarYear, '-', LEFT(D.EnglishMonthName, 3)) AS YearMonth,

    -- F. Weekday Number (1 to 7, Monday = 1, Sunday = 7)
    D.DayNumberOfWeek AS Weekdayno,

    -- G. Weekday Name
    D.EnglishDayNameOfWeek AS Weekdayname,

    -- H. Financial Month (From Date Table assuming fiscal year starts in October)
    D.FiscalQuarter AS FinancialMonth,

    -- I. Financial Quarter (Fiscal Year Quarter)
    D.FiscalQuarter AS FinancialQuarter
FROM CombinedFactInternetSales C
JOIN Products P
    ON C.ProductKey = P.ProductKey
JOIN Calendar D
    ON C.OrderDateKey = D.DateKey;

