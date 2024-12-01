use adventure_works;

-- KPI-8--for month and sales (provide the Year as filter to select a particular Year)
select c.CalendarYear,c.MonthNumberOfYear,c.EnglishMonthName, SUM(s.SalesAmount) TotalSale from combinedfactinternetsales s
inner join calendar c on s.OrderDateKey = c.DateKey
group by c.CalendarYear,c.MonthNumberOfYear, c.EnglishMonthName
-- having c.CalendarYear= 2013
order by c.CalendarYear, CAST(c.MonthNumberOfYear AS UNSIGNED);


-- KPI-9 show yearwise Sales
select c.CalendarYear,SUM(s.SalesAmount) TotalSale from combinedfactinternetsales s
inner join calendar c on s.OrderDateKey = c.DateKey
group by c.CalendarYear
order by c.CalendarYear;

-- KPI-10-Monthwise sales
select c.MonthNumberOfYear,c.EnglishMonthName, SUM(s.SalesAmount) TotalSale from combinedfactinternetsales s
inner join calendar c on s.OrderDateKey = c.DateKey
group by c.MonthNumberOfYear, c.EnglishMonthName
order by CAST(c.MonthNumberOfYear AS UNSIGNED);

-- KPI-11-Quarterwise sales
select c.CalendarQuarter, SUM(s.SalesAmount) TotalSale from combinedfactinternetsales s
inner join calendar c on s.OrderDateKey = c.DateKey
group by c.CalendarQuarter;


-- KPI-12--Create a combinational to show Salesamount and Productioncost together
select c.CalendarYear,c.EnglishMonthName, SUM(s.SalesAmount) TotalSale, Sum(s.ProductStandardCost * s.OrderQuantity) as ProductionCost 
from factinternetsales s
inner join calendar c on s.OrderDateKey = c.DateKey
group by c.CalendarYear,c.MonthNumberOfYear, c.EnglishMonthName
-- having c.CalendarYear= 2012
order by c.CalendarYear, CAST(c.MonthNumberOfYear AS UNSIGNED);




