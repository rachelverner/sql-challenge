--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT s.emp_no, s.salary, e.last_name, e.first_name, e.sex
FROM employees AS e
INNER JOIN salaries AS s
ON s.emp_no = e.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager AS m
INNER JOIN departments AS d  
ON m.dept_no = d.dept_no
INNER JOIN employees AS e
ON e.emp_no = m.emp_no;


--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
LEFT JOIN dept_emp as de
on e.emp_no = de.emp_no
INNER JOIN departments as d
on de.dept_no = d.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no=de.emp_no
INNER JOIN departments AS d
ON de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no=de.emp_no
INNER JOIN departments AS d
ON de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY Frequency DESC;