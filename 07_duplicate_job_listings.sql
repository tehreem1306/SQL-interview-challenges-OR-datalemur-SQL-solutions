-- Problem: Duplicate Job Listings (LinkedIn)
-- Objective: Count companies that posted multiple job listings with the same title and description.

WITH duplicate_jobs AS (
  SELECT
    company_id,
    title,
    description,
    COUNT(job_id) AS job_count
  FROM job_listings
  GROUP BY company_id, title, description
  HAVING COUNT(job_id) > 1
)
SELECT COUNT(DISTINCT company_id) AS duplicate_companies
FROM duplicate_jobs;
