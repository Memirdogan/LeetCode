/* Write your T-SQL query statement below */
SELECT tweet_id
FROM Tweets
where LEN(Content) > 15