SELECT customer_id
FROM Customer C 
GROUP BY customer_id
HAVING count(DISTINCT C.product_key) = (SELECT count(product_key) FROM Product);