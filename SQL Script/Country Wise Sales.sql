use adventure_works;

select * from factinternetsales
UNION ALL
select * from factinternetsales_new;




SELECT
    ST.salesterritoryCountry AS Country,
    CEILING(SUM(S.SalesAmount)) AS TotalSales
FROM combinedfactinternetsales S
JOIN SalesTerritory ST
    ON S.salesTerritoryKey = ST.salesTerritoryKey
GROUP BY ST.salesterritoryCountry
ORDER BY TotalSales DESC;
