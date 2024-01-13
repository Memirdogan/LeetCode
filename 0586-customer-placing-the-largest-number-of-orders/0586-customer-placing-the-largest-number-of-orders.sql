SELECT TOP 1 customer_number 
FROM ORDERS
GROUP BY customer_number
ORDER BY COUNT(customer_number) DESC
