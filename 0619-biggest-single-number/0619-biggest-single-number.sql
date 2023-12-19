/* Write your T-SQL query statement below */
SELECT MAX(num) as num FROM
( SELECT num
FROM MyNumbers
group by num
HAVING COUNT(*) = 1 ) num