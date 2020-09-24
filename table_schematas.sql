-- DATA ENGINEERING	: IMPORT TABLES

-- DROP TABLE (TABLE);

CREATE TABLE dept_emp (emp_no INTEGER NOT NULL, dept_no VARCHAR(30) NOT NULL);  
CREATE TABLE departments (dept_no VARCHAR(30) NOT NULL, dept_name VARCHAR(30) NOT NULL);
CREATE TABLE dept_manager (dept_no VARCHAR(30) NOT NULL, emp_no INTEGER NOT NULL);

CREATE TABLE employees (emp_no INTEGER NOT NULL, 
						emp_title_id VARCHAR(30) NOT NULL,
					   birth_date DATE,
					   first_name VARCHAR(30) NOT NULL,
					   last_name VARCHAR(30) NOT NULL,
					   sex VARCHAR(30),
					   hire_date DATE,

select * from employees;
CREATE TABLE salaries (emp_no INTEGER NOT NULL, salary INTEGER NOT NULL);  
CREATE TABLE titles (title_id VARCHAR(30) NOT NULL, title VARCHAR(30) NOT NULL);  

---AFTER THE ABOVE, IMPORT THE TABLES
-- select * from (TABLES) TEST;
						
-----------
						
--Alter Table to put in primary keys

ALTER TABLE employees ADD CONSTRAINT pk_employees PRIMARY KEY (emp_no, birth_date); 
ALTER TABLE dept_manager ADD CONSTRAINT pk_dept_manager PRIMARY KEY (emp_no); 
ALTER TABLE departments ADD CONSTRAINT pk_departments PRIMARY KEY (dept_name); 
ALTER TABLE titles ADD CONSTRAINT pk_titles PRIMARY KEY (title_id); 
ALTER TABLE salaries ADD CONSTRAINT pk_salaries PRIMARY KEY (emp_no); 
ALTER TABLE dept_emp ADD CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no, dept_no); 
											
-- select * from -- select * from (TABLES) TEST;;