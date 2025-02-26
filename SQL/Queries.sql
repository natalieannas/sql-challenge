Question 1
SELECT s.emp_no, e.last_name, e.first_name, e.sex, s.salaries
FROM employees e
JOIN salaries s ON empo_no=emp_no

Question 2
SELECT first_name, last_name, hire_date
FROM employees
Where EXTRACT (YEAR FROM hire_date) = 1986;


Question 3
SELECT de.dept_no, d.dept_name, e.empo_no, e.last_name, e.first_name
FROM employees e
JOIN dept_manager de ON e.empo_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no


#Question 4
SELECT e.empo_no, de.dept_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dep_emp de ON e.empo_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no;


Question 5 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

Question 6
SELECT e.empo_no, e.last_name, e.first_name
FROM employees e
JOIN dep_emp de ON e.empo_no = de.emp_no
WHERE de.dept_no ='d007';


Question 7
SELECT e.empo_no, e.first_name, e.last_name, d.dept_name
FROM employees e
JOIN dep_emp de ON e.empo_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
Where de.dept_no IN('d007', 'd005')


Question 8 
SELECT last_name, COUNT(last_name) as frequecy
FROM employees
GROUP BY last_name
ORDER BY frequecy DESC;
