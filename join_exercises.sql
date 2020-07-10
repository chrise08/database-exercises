USE employees;

SELECT departments.dept_name AS 'Department', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date LIKE '9999%'
ORDER BY dept_name;

SELECT departments.dept_name AS 'Department', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date LIKE '9999%' AND employees.gender = 'F'
ORDER BY dept_name;

SELECT titles.title AS 'Title', COUNT(*) AS 'Count'
FROM dept_emp
# JOIN titles ON employees.emp_no = titles.emp_no
# JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
# JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN titles ON employees.emp_no = titles.emp_no
WHERE dept_no = 'd009' AND titles.to_date LIKE '9999%' AND dept_emp.to_date LIKE '9999%'
GROUP BY titles.title;

SELECT departments.dept_name AS 'Department', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Name', salaries.salary AS 'Salary'
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON employees.employees.emp_no = dept_manager.emp_no
JOIN salaries ON salaries.emp_no = employees.employees.emp_no
WHERE dept_manager.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%'
ORDER BY dept_name;