--Inner join on salaries table to show salary for each employee on employees table
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;

--Query to show employees who were hire in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986%';

--Query using two joins to show managers of each department
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager m
INNER JOIN departments d
ON m.dept_no = d.dept_no
INNER JOIN employees e
ON m.emp_no = e.emp_no;

--Two joins on employees table to show dept_name from departments table and dept_no form dept_emp table
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, departments.dept_name
FROM employees e
INNER JOIN dept_emp d
ON e.emp_no = d.emp_no
INNER JOIN departments
ON d.dept_no = departments.dept_no;

--Query to show employees with first name 'Hercules' and last name starting with a 'B'
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Query to show employees in sales dept using a subquery 
SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN (
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no = 'd007');

--Alternate method using another sub query and 'Sales' instead of dept_no
SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN (
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no IN(
		SELECT dept_no
		FROM departments
		WHERE dept_name = 'Sales'));
		
--Query to show all employees in the sales and development departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
ON de.emp_no = e.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no
WHERE de.dept_no IN (
		SELECT dept_no
		FROM departments
		WHERE dept_name IN ('Sales','Development'));

--Query to show frequency of last names in employees table
SELECT last_name, count(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;