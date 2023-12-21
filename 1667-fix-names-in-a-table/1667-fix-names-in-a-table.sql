/* Write your T-SQL query statement below */

select user_id, CONCAT(UPPER(LEFT(name,1)), LOWER(RIGHT(name,LEN(name)-1))) name 
from Users 
order by user_id