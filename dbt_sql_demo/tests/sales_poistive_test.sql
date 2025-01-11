SELECT SalesOrderID
FROM {{ ref('sales') }} -- Replace with the name of the model
WHERE SalesOrderID <= 0
