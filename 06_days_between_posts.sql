-- Problem: Average Post Hiatus (Part 1) (Facebook)
-- Objective: Calculate the number of days between a user's first and last post in 2021.

SELECT
  user_id,
  EXTRACT(DAY FROM (MAX(post_date) - MIN(post_date))) AS days_between
FROM posts
WHERE EXTRACT(YEAR FROM post_date) = 2021
GROUP BY user_id
HAVING COUNT(post_id) > 1;
