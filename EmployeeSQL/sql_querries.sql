SELECT* FROM employees;

--List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex,salary
FROM employees as emp
	 JOIN salaries as sal
	ON emp.emp_no=sal.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name,last_name,hire_date
	FROM employees
WHERE hire_date BETWEEN '01-01-1986' AND '12-31-1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dptm.dept_no, dept.dept_name, dptm.emp_no, emp.last_name, emp.first_name
FROM dept_manager AS dptm
JOIN departments AS dept
ON dptm.dept_no = dept.dept_no
JOIN employees AS emp
ON dptm.emp_no = emp.emp_no;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dpt.dept_no, dpte.emp_no, emp.last_name, emp.first_name, dpt.dept_name
FROM departments AS dpt
JOIN dept_emp AS dpte
ON dpt.dept_no = dpte.dept_no
JOIN employees AS emp
ON dpte.emp_no = emp.emp_no;


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name= 'Hercules'
AND last_name LIKE 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT 	emp.emp_no, emp.last_name, emp.first_name, dpt.dept_name
FROM employees as emp
	JOIN dept_emp as dpte
	ON emp.emp_no=dpte.emp_no
JOIN departments as dpt
	ON dpt.dept_no=dpte.dept_no
WHERE dpt.dept_name='Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 	emp.emp_no, emp.last_name, emp.first_name, dpt.dept_name
FROM employees as emp
	JOIN dept_emp as dpte
	ON emp.emp_no=dpte.emp_no
JOIN departments as dpt
	ON dpt.dept_no=dpte.dept_no
WHERE dpt.dept_name='Sales'
	OR dpt.dept_name='Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;




