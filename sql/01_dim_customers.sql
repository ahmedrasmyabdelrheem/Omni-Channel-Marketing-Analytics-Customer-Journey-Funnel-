-- =============================================================================
-- Dimension: Customers (dim_customers)
-- Purpose: Extract customer demographic data joined with geographic regions.
-- Categorizes European countries into regional business territories.
-- =============================================================================

SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Email,
    c.Gender,
    c.Age,
    g.Country,
    g.City,
    CASE 
        WHEN g.Country IN ('Spain', 'Italy') 
            THEN 'Southern Europe'
        WHEN g.Country IN ('France', 'Netherlands', 'Belgium') 
            THEN 'Western Europe'
        WHEN g.Country IN ('Germany', 'Austria', 'Switzerland') 
            THEN 'Central Europe'
        WHEN g.Country IN ('Sweden', 'UK') 
            THEN 'Northern Europe'
        ELSE 'Other'
    END AS CountryCategory 
FROM dbo.customers AS c 
LEFT JOIN dbo.geography AS g
    ON c.GeographyID = g.GeographyID;
