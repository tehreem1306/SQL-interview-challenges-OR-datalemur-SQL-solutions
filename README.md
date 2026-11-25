# SQL Interview Challenges (PostgreSQL)

A structured collection of real-world SQL problem solutions inspired by technical interviews at companies like LinkedIn, Facebook, Tesla, New York Times, and Robinhood. 

This repository focuses on translating business questions into clean, readable PostgreSQL queries using a repeatable analytical framework.

## Core SQL Patterns Covered
* **Filtering Precision:** Row-level filtering (`WHERE`) vs. post-aggregation thresholds (`HAVING`).
* **Conditional Aggregation:** Single-pass metric segmentation using `CASE WHEN`.
* **Multi-Table Joins:** Combining relational tables (`INNER JOIN`) and identifying missing records (`LEFT JOIN` + `IS NULL`).
* **Multi-Stage Logic:** Breaking complex aggregations into readable steps with Common Table Expressions (`CTE`s).
* **Date & Interval Manipulation:** Extracting date parts (`EXTRACT`) and computing durations (`MIN`/`MAX`).

## Solutions Index

| # | Problem Title | Company | Key SQL Concepts | Solution File |
| :--- | :--- | :--- | :--- | :--- |
| 01 | Histogram of Tweets | Twitter | `CTE`, `GROUP BY`, `EXTRACT` | [`01_histogram_of_tweets.sql`](./01_histogram_of_tweets.sql) |
| 02 | Data Science Skills | LinkedIn | `WHERE IN`, `GROUP BY`, `HAVING COUNT` | [`02_data_science_skills.sql`](./02_data_science_skills.sql) |
| 03 | Page With No Likes | Facebook | `LEFT JOIN`, `IS NULL` | [`03_page_with_no_likes.sql`](./03_page_with_no_likes.sql) |
| 04 | Unfinished Parts | Tesla | `WHERE IS NULL` | [`04_unfinished_parts.sql`](./04_unfinished_parts.sql) |
| 05 | Laptop vs. Mobile Viewership | NY Times | `CASE WHEN`, `SUM` | [`05_laptop_vs_mobile_viewership.sql`](./05_laptop_vs_mobile_viewership.sql) |
| 06 | Average Post Hiatus (Part 1) | Facebook | `EXTRACT`, `MIN`, `MAX`, `HAVING` | [`06_days_between_posts.sql`](./06_days_between_posts.sql) |
| 07 | Duplicate Job Listings | LinkedIn | `CTE`, `GROUP BY`, `HAVING`, `COUNT DISTINCT` | [`07_duplicate_job_listings.sql`](./07_duplicate_job_listings.sql) |
| 08 | Cities With Completed Trades | Robinhood | `INNER JOIN`, `WHERE`, `GROUP BY`, `LIMIT` | [`08_cities_with_completed_trades.sql`](./08_cities_with_completed_trades.sql) |

## Tools Used
* **Dialect:** PostgreSQL
* **Practice & Validation:** DataLemur & pgAdmin
