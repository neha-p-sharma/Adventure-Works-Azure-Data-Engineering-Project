-----------------------------------
--- Create view Calandar
-----------------------------------
CREATE VIEW gold.calendar
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://awstoragedatalake26.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
    )AS query1

-----------------------------------
--- Create view Customers
-----------------------------------

CREATE VIEW gold.customers
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://awstoragedatalake26.dfs.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    )AS query2

-----------------------------------
--- Create view Product Categories
-----------------------------------

CREATE VIEW gold.prod_categories
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://awstoragedatalake26.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
        FORMAT = 'PARQUET'
    )AS query3

-----------------------------------
--- Create view Product SubCategories
-----------------------------------


CREATE VIEW gold.prod_subcategories
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://awstoragedatalake26.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
        FORMAT = 'PARQUET'
    )AS query4

-----------------------------------
--- Create view Products
-----------------------------------

CREATE VIEW gold.products
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://awstoragedatalake26.dfs.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    )AS query5

-----------------------------------
--- Create view Returns
-----------------------------------

CREATE VIEW gold.returns
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://awstoragedatalake26.dfs.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    )AS query6

-----------------------------------
--- Create view Sales
-----------------------------------

CREATE VIEW gold.sales
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://awstoragedatalake26.dfs.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
    )AS query7


-----------------------------------
--- Create view Territories
-----------------------------------

CREATE VIEW gold.territories
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://awstoragedatalake26.dfs.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    )AS query8













