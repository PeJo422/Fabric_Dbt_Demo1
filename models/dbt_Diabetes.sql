



{{ config(materialized='table') }}

with Fact_Diabetes as (

SELECT [AGE],
			[SEX],
			[BMI],
			[BP],
			[S1],
			[S2],
			[S3],
			[S4],
			[S5],
			[S6],
			[Y]
FROM [dbt_Demo1].[dbo].[Diabetes] 

)

select *
from Fact_Diabetes
