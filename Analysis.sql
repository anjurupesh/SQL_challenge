SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name", "Employees"."gender","Salaries"."salary" 
FROM "Employees" 
INNER JOIN "Salaries" ON "Employees"."emp_no" = "Salaries"."emp_no";

SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name","Employees"."hire_date"
FROM "Employees" 
WHERE "Employees"."hire_date" BETWEEN '1986-01-01' AND '1987-01-01';

SELECT "Department_Manager"."dept_no","Department_Manager"."emp_no","Employees"."last_name","Employees"."first_name","Department_Manager"."from_date","Department_Manager"."to_date"
FROM "Department_Manager" 
INNER JOIN "Employees" ON "Department_Manager"."emp_no" = "Employees"."emp_no";

SELECT "Employees"."emp_no","Employees"."last_name","Employees"."first_name","Employee_Data"."dept_no"
FROM "Employees" 
INNER JOIN "Employee_Data" ON "Employees"."emp_no" = "Employee_Data"."emp_no";

SELECT "Employees"."last_name","Employees"."first_name"
FROM "Employees" 
WHERE "Employees"."first_name" = 'Hercules' AND "Employees"."last_name" LIKE 'B%';

SELECT "Employee_Data"."emp_no", "Employees"."last_name", "Employees"."first_name", "Departments"."dept_name"
FROM "Employee_Data"
INNER JOIN "Employees" ON "Employee_Data"."emp_no" = "Employees"."emp_no"
INNER JOIN "Departments" ON "Employee_Data"."dept_no" = "Departments"."dept_no"
WHERE "Departments"."dept_name" = 'Sales';

SELECT "Employee_Data"."emp_no", "Employees"."last_name", "Employees"."first_name", "Departments"."dept_name"
FROM "Employee_Data"
INNER JOIN "Employees" ON "Employee_Data"."emp_no" = "Employees"."emp_no"
INNER JOIN "Departments" ON "Employee_Data"."dept_no" = "Departments"."dept_no"
WHERE "Departments"."dept_name" = 'Sales' OR "Departments"."dept_name" = 'Development';

SELECT "Employees"."last_name", COUNT(*)
FROM "Employees"
GROUP BY "Employees"."last_name"
ORDER BY 2 DESC;
