/* Write your T-SQL query statement below */
SELECT * FROM Cinema
WHERE ID%2 <> 0 AND description <> 'boring'
ORDER BY rating DESC