/* Write your T-SQL query statement below */
SELECT U.name, SUM(T.amount) as balance
from Users U Right join Transactions T on U.account = T.account
Group by U.name
HAVING  SUM(T.amount) > 10000