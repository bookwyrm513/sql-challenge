CREATE TABLE departments (
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
);

CREATE TABLE employees (
	emp_no VARCHAR NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR REFERENCES titles (title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1),
	hire_date DATE NOT NULL
);

CREATE TABLE dept_emp (
	emp_no VARCHAR REFERENCES employees (emp_no) NOT NULL,
	dept_no VARCHAR REFERENCES departments (dept_no) NOT NULL,
	PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR REFERENCES departments (dept_no) NOT NULL,
	emp_no VARCHAR REFERENCES employees (emp_no) NOT NULL,
	PRIMARY KEY(dept_no, emp_no)
);

CREATE TABLE salaries (
	id SERIAL PRIMARY KEY NOT NULL,
	emp_no VARCHAR REFERENCES employees (emp_no) NOT NULL,
	salary(7) REAL NOT NULL
);

--SELECT * FROM departments LIMIT 5;
--SELECT * FROM dept_emp LIMIT 5;
--SELECT * FROM dept_manager LIMIT 5;
--SELECT * FROM employees LIMIT 5;
--SELECT * FROM salaries LIMIT 5;
--SELECT * FROM titles LIMIT 5;