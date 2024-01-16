SELECT p.project_id, ROUND(AVG(CAST(experience_years AS DECIMAL(10,2) ) ), 2) 
as average_years 
FROM Project p join Employee e on p.employee_id = e.employee_id
group by project_id