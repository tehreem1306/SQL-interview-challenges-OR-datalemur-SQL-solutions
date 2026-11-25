-- Problem: Histogram of Tweets (Twitter)
-- Objective: Group users by the number of tweets they posted in 2022 and count users per bucket.

WITH user_tweets AS (
  SELECT
    user_id,
    COUNT(tweet_id) AS tweet_bucket
  FROM tweets
  WHERE EXTRACT(YEAR FROM tweet_date) = 2022
  GROUP BY user_id
)
SELECT
  tweet_bucket,
  COUNT(user_id) AS users_num
FROM user_tweets
GROUP BY tweet_bucket;
