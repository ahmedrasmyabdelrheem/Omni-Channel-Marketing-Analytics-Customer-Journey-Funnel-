-- =============================================================================
-- Fact Table: Customer Reviews & Sentiment (fact_customer_reviews)
-- Purpose: Extract verified post-purchase customer ratings and review texts.
-- Method: Cleans double whitespace from unstructured text fields.
-- =============================================================================

SELECT 
    ReviewID,
    CustomerID,
    ProductID,
    ReviewDate,
    Rating,
    REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM dbo.customer_reviews;
