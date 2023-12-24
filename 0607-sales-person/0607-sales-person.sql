/* Write your T-SQL query statement below */
SELECT name FROM SalesPerson
WHERE sales_id NOT IN (
  SELECT sales_id FROM Orders AS O
  LEFT JOIN Company AS C ON O.com_id = C.com_id
  WHERE name = 'RED'
)