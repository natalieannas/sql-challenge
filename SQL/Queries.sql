Question 1
SELECT empo_no, last_name, first_name, sex,
 (SELECT salaries FROM salaries WHERE salaries.emp_no = employees.empo_no) AS salary
FROM employees
WHERE empo_no IN
(
	SELECT emp_no
	FROM salaries
	
);


Question 2
Question 2 SELECT first_name, last_name, hire_date
FROM employees
Where EXTRACT (YEAR FROM hire_date) = 1986;


Question 3
SELECT 
    (SELECT dept_no 
	FROM dept_manager
	WHERE dept_manager.emp_no = employees.empo_no ) AS dept_no,
    (SELECT dept_name 
	FROM departments 
     WHERE dept_no = 
	 (SELECT dept_no 
	 FROM dept_manager 
	 WHERE dept_manager.emp_no = employees.empo_no )) AS dept_name,
    empo_no,
    last_name,
    first_name
FROM employees
WHERE empo_no IN 
(SELECT emp_no FROM dept_manager);


Question 4
SELECT e.empo_no, de.dept_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dep_emp de ON e.empo_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no;


Question 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name IN
	(Select last_name
	FROM employees
	WHERE last_name like 'B%');

Question 6
SELECT empo_no, last_name, first_name
FROM employees
WHERE empo_no IN
	(SELECT emp_no
	FROM dep_emp
	Where dept_no = 'd007')


Question 7
SELECT empo_no, first_name, last_name, 
  (SELECT dept_name 
   FROM departments 
   WHERE dept_no = 
     (SELECT dept_no 
      FROM dep_emp 
      WHERE dep_emp.emp_no = employees.empo_no 
      AND dept_no IN ('d007', 'd005') 
      )
  ) AS department_name
FROM employees
WHERE empo_no IN 
  (SELECT emp_no 
   FROM dep_emp 
   WHERE dept_no IN ('d007', 'd005'));


Question 8 
Question 8 SELECT COUNT(last_name) as frequecy
FROM employees
GROUP BY last_name
ORDER BY frequency DESC
