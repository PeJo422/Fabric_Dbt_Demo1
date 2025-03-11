with Cities as (

SELECT
            [CityKey],
			[WWICityID],
			[City],
			[StateProvince],
			[Country],
			[Continent],
			[SalesTerritory],
			[Region],
			[Subregion],
			[Location],
			[LatestRecordedPopulation],
			[ValidFrom],
			[ValidTo],
			[LineageKey]
FROM {{ref("dim_cities")}}

),  


Sales as (
SELECT  
            [SaleKey],
			[CityKey],
			[CustomerKey],
			[BillToCustomerKey],
			[StockItemKey],
			[InvoiceDateKey],
			[DeliveryDateKey],
			[SalespersonKey],
			[WWIInvoiceID],
			[Description],
			[Package],
			[Quantity],
			[UnitPrice],
			[TaxRate],
			[TotalExcludingTax],
			[TaxAmount],
			[Profit],
			[TotalIncludingTax],
			[TotalDryItems],
			[TotalChillerItems],
			[LineageKey]
FROM {{ref("fact_sales")}}
)


select 
Cities.[Country],
Cities.City,
SUM(Sales.TotalIncludingTax) as TotalSales
from Cities 

Left Join Sales on Cities.CityKey = Sales.CityKey

GROUP BY Cities.Country, Cities.City
