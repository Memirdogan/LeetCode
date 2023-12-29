/* Write your T-SQL query statement below */
--Şubat 2020'de en az 100 adet sipariş edilen ürünlerin adlarını ve miktarlarını elde etmek için bir çözüm yazın.
SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p RIGHT JOIN Orders o ON p.product_id = o.product_id
where o.order_date like '2020-02%'
GROUP BY p.product_name
HAVING SUM(unit) >= 100