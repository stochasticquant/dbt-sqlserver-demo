SELECT h.[SalesOrderID]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[Status]
      ,[OnlineOrderFlag]
      ,[PurchaseOrderNumber]
      ,[AccountNumber]
      ,[CustomerID]
      ,[ShipMethod]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[ModifiedDate]
FROM {{ ref('stg_sales_header') }} h
JOIN {{ ref('stg_sales_detail') }} d
ON d.SalesOrderID = h.SalesOrderID
WHERE h.Status = 5; -- Use numeric value for 'Shipped'
