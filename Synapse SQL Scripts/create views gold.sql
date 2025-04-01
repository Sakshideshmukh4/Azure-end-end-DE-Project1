----Create Schema gold------
SELECT * FROM gold.customers


--Create Views for all tables using gold schema

----------------------
-- View calendar --
----------------------
CREATE VIEW gold.calendar
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://de1storagedatalake.dfs.core.windows.net/silver/Calendar/',
    FORMAT = 'PARQUET'
) AS quer1;
GO

----------------------
-- View customers --
----------------------
CREATE VIEW gold.customers
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://de1storagedatalake.dfs.core.windows.net/silver/Customers/',
    FORMAT = 'PARQUET'
) AS quer2;
GO

----------------------
-- View product categories --
----------------------
CREATE VIEW gold.product_categories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://de1storagedatalake.dfs.core.windows.net/silver/Product_Categories/',
    FORMAT = 'PARQUET'
) AS quer3;
GO

----------------------
-- View product subcategories --
----------------------
CREATE VIEW gold.product_subcategories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://de1storagedatalake.dfs.core.windows.net/silver/Product_Subcategories/',
    FORMAT = 'PARQUET'
) AS quer4;
GO

----------------------
-- View products --
----------------------
CREATE VIEW gold.products
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://de1storagedatalake.dfs.core.windows.net/silver/Products/',
    FORMAT = 'PARQUET'
) AS quer5;
GO

----------------------
-- View returns --
----------------------
CREATE VIEW gold.returns_
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://de1storagedatalake.dfs.core.windows.net/silver/Returns/',
    FORMAT = 'PARQUET'
) AS quer6;
GO

----------------------
-- View sales --
----------------------
CREATE VIEW gold.sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://de1storagedatalake.dfs.core.windows.net/silver/Sales/',
    FORMAT = 'PARQUET'
) AS quer7;
GO

----------------------
-- View territories --
----------------------
CREATE VIEW gold.territories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://de1storagedatalake.dfs.core.windows.net/silver/Territories/',
    FORMAT = 'PARQUET'
) AS quer8;
GO
