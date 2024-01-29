SELECT employee_id, 
IF(NAME NOT LIKE 'M%' AND MOD(employee_id,2),salary,0) AS bonus 
FROM Employees 
ORDER BY employee_id