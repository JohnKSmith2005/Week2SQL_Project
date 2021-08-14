--1.I want to know how many employees with each title were born after 1965-01-01.

select count(*), titles.title
FROM titles
INNER JOIN employees ON titles.emp_no = employees.emp_no
WHERE birth_date > '1965-01-01'
GROUP BY titles.title;

--2. I want to know the average salary per title.

select t.title as "Title", avg(s.salary) as "Average Salary" from titles t
INNER JOIN salaries s ON t.emp_no = s.emp_no
GROUP BY t.title;

--3. How much money was spent on salary for the marketing department between the years 1990 and 
--1992?


select sum(salaries.salary) as “Salary Total”
FROM  salaries
INNER JOIN dept_emp ON salaries.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.to_date < ‘1993-01-01’;