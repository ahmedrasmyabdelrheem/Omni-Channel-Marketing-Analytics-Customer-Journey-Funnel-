-- =============================================================================
-- Fact Table: Customer Journey (fact_customer_journey)
-- Purpose: Cleans and deduplicates online customer session telemetry.
-- Method:
--   1. ROW_NUMBER() CTE partitions by JourneyID, Customer, Product, Date, Stage, Action
--      to eliminate duplicate clickstream event logs.
--   2. Window function AVG(Duration) OVER (PARTITION BY VisitDate) to impute missing duration values.
--   3. Standardizes Stage casing (UPPER).
-- =============================================================================

WITH CleanedJourney AS (
    SELECT 
        JourneyID,
        CustomerID,
        ProductID,
        VisitDate,
        UPPER(Stage) AS Stage,
        Action,
        Duration,
        AVG(Duration) OVER (PARTITION BY VisitDate) AS avg_duration,
        ROW_NUMBER() OVER (
            PARTITION BY
                JourneyID,
                CustomerID,
                ProductID,
                VisitDate,
                UPPER(Stage),
                Action
            ORDER BY Duration DESC
        ) AS Row_Num
    FROM dbo.customer_journey
)
SELECT 
    JourneyID,
    CustomerID,
    ProductID,
    VisitDate,
    Stage,
    Action,
    COALESCE(Duration, avg_duration) AS Duration
FROM CleanedJourney
WHERE Row_Num = 1;
