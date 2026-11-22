-- =============================================================================
-- Fact Table: Campaign Engagement (fact_engagement)
-- Purpose: Extract and parse multi-channel marketing campaign engagement.
-- Method:
--   1. Parses delimited string [ViewsClicksCombined] into distinct integer Views and Clicks.
--   2. Standardizes ContentType labels (e.g. 'Socialmedia' -> 'Social Media').
--   3. Normalizes EngagementDate format.
--   4. Excludes non-campaign newsletter noise.
-- =============================================================================

SELECT  
    EngagementID,
    CampaignID,
    ContentID,
    ProductID,
    UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,
    CONVERT(DATE, EngagementDate) AS EngagementDate,
    CAST(LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS INT) AS Views,
    CAST(RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS INT) AS Clicks
FROM dbo.engagement_data
WHERE ContentType != 'Newsletter';
