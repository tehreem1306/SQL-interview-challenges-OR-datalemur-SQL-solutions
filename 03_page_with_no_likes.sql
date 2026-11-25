-- Problem: Page With No Likes (Facebook)
-- Objective: Find page IDs that have zero recorded likes using a left join.

SELECT p.page_id
FROM pages p
LEFT JOIN page_likes pl
  ON p.page_id = pl.page_id
WHERE pl.page_id IS NULL
ORDER BY p.page_id;
