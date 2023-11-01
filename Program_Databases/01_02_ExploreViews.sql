-- Explore existing views
USE WideWorldImporters;
GO

-- Find database view objects using T-SQL
SELECT * FROM sys.objects
WHERE type_desc = 'VIEW';

SELECT
    objects.object_id,
    schemas.name AS schema_name,
    objects.name AS view_name
FROM sys.objects JOIN sys.schemas ON objects.schema_id = schemas.schema_id
WHERE objects.type_desc = 'VIEW';

-- Find information about a specific view
SELECT *
FROM sys.sql_modules
--WHERE object_id = 1678629023
WHERE object_id = OBJECT_ID('Website.Suppliers')
;

-- Use a stored procedure to write out the view's definition
/*
Alternative Ways:
	right click on Object Explorer/WideWorldImporters/Views/Website.Suppliers
	Script View as > CREATE to > New Query Editor Window
*/
EXEC sp_helptext 'Website.Suppliers';