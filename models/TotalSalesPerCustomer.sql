{{ config(
    materialized='view',
    schema="Gold"
) }}

with Customers as (

SELECT      [CustomerKey],
			[WWICustomerID],
			[Customer],
			[BillToCustomer],
			[Category],
			[BuyingGroup],
			[PrimaryContact],
			[PostalCode],
			[ValidFrom],
			[ValidTo],
			[LineageKey]
FROM {{ref("dim_Customers")}}

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
Customers.Customer,
SUM(Sales.TotalIncludingTax) as TotalSales
from Customers 

Left Join Sales on Customers.CustomerKey = Sales.CustomerKey

GROUP BY Customers.Customer
