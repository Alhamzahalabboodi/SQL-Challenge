DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS department_emp CASCADE;
DROP TABLE IF EXISTS department_manager CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salary CASCADE;
DROP TABLE IF EXISTS titles CASCADE;

CREATE TABLE departments (
    dept_no VARCHAR(50) NOT NULL,
    dept_name varchar(50) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
    title_id CHAR(200) NOT NULL,
    title CHAR(100) NOT NULL,
	PRIMARY KEY (title_id)
);
SELECT * FROM salary;
CREATE TABLE employees (
    emp_no CHAR,
    emp_title_id VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    sex CHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp (
    emp_no CHAR(100),
    dept_no VARCHAR(100) NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
    dept_no CHAR(100) NOT NULL,
	emp_no VARCHAR(100),
	PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
    emp_no CHAR(100),
    salary INT,
	PRIMARY KEY (emp_no)
);
