-- List employee number, last name, first name, sex and salary
SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

-- List first name, last name and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List manager of each department w/ dept number, dept name, emp_no, last/first name
SELECT dept_manager.dept_no, dept_name, dept_manager.emp_no, last_name, first_name
FROM departments
RIGHT JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
	LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- List dept number for each employee w/ emp_no, last/first name and dept name
SELECT departments.dept_no, employees.emp_no, last_name, first_name, dept_name
FROM departments
RIGHT JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
	RIGHT JOIN employees ON dept_emp.emp_no = employees.emp_no;

-- List first/last/sex for each employee named Hercules and last name begins w/ B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List employees in Sales (d007), emp_no/last/first
SELECT employees.emp_no, last_name, first_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
WHERE dept_no = 'd007';

-- List employees in Sales (d007) and Development (d005), emp_no/last/first/dept_name
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
	JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.dept_no = 'd007' OR dept_emp.dept_no = 'd005';

-- List frequency counts (DESC) of employee last names
SELECT last_name, COUNT(last_name) AS my_count
FROM employees
GROUP BY last_name
ORDER BY my_count DESC;

-- SELECT * FROM employees;