SELECT 
    Department.name AS Department,
    Employee.name AS Employee,
    Employee.salary AS Salary
FROM 
    Employee
INNER JOIN 
    Department ON Employee.departmentId = Department.id
WHERE 
    (Employee.departmentId, Employee.salary) IN 
    (SELECT 
        departmentId, MAX(salary) 
     FROM 
        Employee 
     WHERE 
        Employee.departmentId = Department.id
     GROUP BY 
        departmentId)