--First query

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries as s ON e.emp_no = s.emp_no;

--Second query

SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE e.hire_date > '12/31/1985'
AND e.hire_date < '1/1/1987';

--Third query

SELECT d.dept_name, dm.dept_no, e.emp_no, e.first_name, e.last_name
FROM dept_manager as dm
LEFT JOIN departments as d
ON dm.dept_no = d.dept_no
LEFT JOIN employees as e
ON dm.emp_no = e.emp_no;

--Fourth query

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name, d.dept_no
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON de.dept_no = d.dept_no;

--Fifth query

SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE (first_name = 'Hercules' AND last_name LIKE 'B%');

--Sixth query

SELECT e.emp_no, e.first_name, e.last_name
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--Seventh query

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

--Eighth query

SELECT e.last_name, COUNT(e.last_name) as “last_name_count”
FROM employees as e
GROUP BY e.last_name
ORDER BY “last_name_count” DESC;
