--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name,  e.sex, s.salary
from employees as e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no;				

						---
--2.List first name, last name, and hire date for employees who were hired in 1986.
select e.first_name,  e.last_name, e.hire_date
from employees as e
WHERE e.hire_date BETWEEN '19851231' and '19861231';
					
						
						---
-- 3.List the manager of each department department number, department name, 
-- 3.the manager's employee number, last name, first name.
SELECT dm.dept_no,  ds.dept_name, dm.emp_no, e.last_name, e.first_name
FROM (  
	(dept_manager AS dm INNER JOIN departments AS ds ON dm.dept_no = ds.dept_no)
	INNER JOIN employees AS e ON dm.emp_no = e.emp_no); 
--------------
						
--4.List the department of each employee with the following information: 
	--employee number, last name, first name, and department name.
						
SELECT de.emp_no, e.last_name, e.first_name, ds.dept_name
FROM (  
	(dept_emp AS de INNER JOIN departments AS ds ON de.dept_no = ds.dept_no)
	INNER JOIN employees AS e ON de.emp_no = e.emp_no); 
						
---------
						
--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
						
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name= 'Hercules' 
AND	  e.last_name  LIKE 'B%';
						
----
--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
						
SELECT de.emp_no, e.last_name, e.first_name, ds.dept_name
FROM (  
	(dept_emp AS de INNER JOIN departments AS ds ON de.dept_no = ds.dept_no)
	INNER JOIN employees AS e ON de.emp_no = e.emp_no)
	WHERE ds.dept_name= 'Sales'; 
						
--7.List all employees in the Sales and Development departments, including their employee number, 
						--last name, first name, and department name.			
SELECT de.emp_no, e.last_name, e.first_name, ds.dept_name
FROM (
	(dept_emp AS de INNER JOIN departments AS ds ON de.dept_no = ds.dept_no)
	INNER JOIN employees AS e ON de.emp_no = e.emp_no)
	WHERE ((ds.dept_name= 'Development') OR (ds.dept_name= 'Sales')); 
						
--8. In descending order, list the frequency count of employee last names, 
						--i.e., how many employees share each last name.
						
SELECT last_name, COUNT(last_name)AS Frequency
FROM employees AS e
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;

 