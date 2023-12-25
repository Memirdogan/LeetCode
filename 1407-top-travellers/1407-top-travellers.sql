/* Write your T-SQL query statement below */
SELECT name, ISNULL(SUM(R.distance),0) AS travelled_distance
FROM Users U LEFT JOIN Rides R On U.id=R.user_id
GROUP BY R.user_id,name
ORDER BY sum(distance) DESC, name ASC