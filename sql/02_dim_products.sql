-- =============================================================================
-- Dimension: Products (dim_products)
-- Purpose: Extract product catalog with price tier categorization.
-- Segments products into Low (<), Medium (-), and High (>) tiers.
-- =============================================================================

SELECT 
    ProductID,
    ProductName,
    Category,
    Price,
    CASE 
        WHEN Price < 50 THEN 'Low'
        WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
        ELSE 'High'
    END AS PriceCategory
FROM dbo.products;
