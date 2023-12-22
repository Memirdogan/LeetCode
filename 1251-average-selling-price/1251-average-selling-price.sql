SELECT P.product_id,
ROUND(ISNULL((SUM(P.price*U.units) + 0.00) / (SUM(U.units) +0.00 ),0),2)
AS average_price
FROM Prices P
LEFT JOIN UnitsSold U ON P.product_id = U.product_id AND
P.start_date <= U.purchase_date AND
P.end_date >= U.purchase_date 
GROUP BY P.product_id