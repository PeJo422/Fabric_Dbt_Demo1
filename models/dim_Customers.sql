



{{ config(
    materialized='table',
    schema="Dim"
) }}

with Dim_Customers as (

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
FROM [dbt_Demo1].[dbo].[Customers]

)

select *
from Dim_Customers
