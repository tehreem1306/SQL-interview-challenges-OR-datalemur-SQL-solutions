-- Problem: Laptop vs. Mobile Viewership (NY Times)
-- Objective: Compare total viewership for laptop versus mobile (tablet + phone) devices.

SELECT
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
  SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership;
