-- Deliverable 1
-- creating Retirement_Titles
SELECT e.emp_no, e.first_name, e.last_name,ti.title,ti.from_date,ti.to_date
INTO Retirement_Titles
FROM employees as e
inner join titles as ti
on (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;


-- creating unique_titles
SELECT DISTINCT ON (emp_no) emp_no,first_name, last_name,title,from_date,to_date
into unique_titles
FROM retirement_titles 
order by emp_no asc, to_date Desc


-- creating retiring_titles
SELECT count(emp_no),title
into retiring_titles
from unique_titles
group by title
order by count(emp_no) Desc




-- Deliverable 2
select distinct on(e.emp_no) e.emp_no,e.first_name,e.last_name,e.birth_date,
	de.from_date,de.to_date,ti.title
into Mentorship_Eligibility
from employees as e
inner join dept_emp as de
	on (e.emp_no = de.emp_no)
inner join titles as ti
	on (e.emp_no=ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by e.emp_no
