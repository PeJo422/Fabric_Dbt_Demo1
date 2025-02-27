SELECT  
            sa.[SaleKey],
			sa.[CityKey],
			sa.[CustomerKey],
            cu.Customer,
			sa.[BillToCustomerKey],
			sa.[StockItemKey],
			sa.[InvoiceDateKey],
			sa.[DeliveryDateKey],
			sa.[SalespersonKey],
			sa.[WWIInvoiceID],
			sa.[Description],
			sa.[Package],
			sa.[Quantity],
			sa.[UnitPrice],
			sa.[TaxRate],
			sa.[TotalExcludingTax],
			sa.[TaxAmount],
			sa.[Profit],
			sa.[TotalIncludingTax],
			sa.[TotalDryItems],
			sa.[TotalChillerItems],
			sa.[LineageKey]
FROM [dbt_Demo1].[dbo].[Sales] sa

Left Join [dbt_Demo1].[dbo].[Customers] cu on cu.CustomerKey = sa.CustomerKey