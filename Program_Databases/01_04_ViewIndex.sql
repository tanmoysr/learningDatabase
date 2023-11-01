-- Leverage view objects with indexes
USE WideWorldImporters;
GO

-- Review stock item information
SELECT * FROM Warehouse.StockItems;
SELECT * FROM Purchasing.Suppliers;
GO

-- Get a user friendly look at the information
/* 
The view needs to be deterministic. If View uses random function then it is no longer deterministic.
Non deterministic functions cannot be included in the index view.
The view must alo be created against tables in the same database and not other views.
It cannot contain a top class to limit rows, aggregate functions, such as count, mean or max or any outer joins
Any columns that use the float or real data types, cannot be part of the index.
*/

        -- Create a schemabound view
CREATE VIEW Warehouse.StockItemDetails
WITH SCHEMABINDING
AS
SELECT
    StockItemStockGroups.StockItemStockGroupID,
    StockItems.StockItemName,
    StockItemHoldings.QuantityOnHand,
    StockGroups.StockGroupName,
    Colors.ColorName,
    StockItems.UnitPrice,
    StockItems.SupplierID
  FROM Warehouse.StockItemStockGroups
    INNER JOIN Warehouse.StockItems
        ON StockItemStockGroups.StockItemID = StockItems.StockItemID
    INNER JOIN Warehouse.StockGroups
        ON StockItemStockGroups.StockGroupID = StockGroups.StockGroupID
    INNER JOIN Warehouse.Colors
        ON StockItems.ColorID = Colors.ColorID
    INNER JOIN Warehouse.StockItemHoldings
        ON StockItems.StockItemID = StockItemHoldings.StockItemID
;
GO

-- Test the view
SELECT * FROM Warehouse.StockItemDetails;
GO

-- Add an index to the view
CREATE UNIQUE CLUSTERED INDEX IDX_StockItemDetails
   ON Warehouse.StockItemDetails (StockItemStockGroupID, StockItemName, SupplierID);
GO

-- Query the view
/*
If the view has an index, anytime an update to the base table is made, those changes are attomatically saved to the view as well.
*/
SELECT *
    FROM Warehouse.StockItemDetails
      INNER JOIN Purchasing.Suppliers
        ON Suppliers.SupplierID = StockItemDetails.SupplierID
WHERE StockItemDetails.SupplierID = 5;