


With Cities As (
SELECT      [CityKey],
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
FROM [dbt_Demo1].[dbo].[Cities]

)

Select * From Cities