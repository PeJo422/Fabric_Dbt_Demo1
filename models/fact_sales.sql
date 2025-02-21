SELECT  [SaleKey],
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
FROM [dbt_Demo1].[dbo].[Sales]