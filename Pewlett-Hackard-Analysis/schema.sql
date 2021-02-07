--Creating tables for PH-employeeDB
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name varchar(40) NOT NULL,
	PRIMARY KEY (dept_no),
	UNIQUE (dept_name)
);

Create table employees (
	emp_no INT NOT NULL,
	birth_date date NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	gender varchar NOT NULL,
	hire_date date NOT NULL,
	primary key(emp_no)
);	

CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

create table Dept_Emp (
	emp_no int NOT NULL,
	dept_no varchar NOT NULL,
	from_date date not null,
	to_date date not null,
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no),
	PRIMARY KEY (emp_no, dept_no)
	);

create table titles(
	emp_no int not null,
	title varchar, 
	from_date date, 
	to_date date,
	foreign key(emp_no) references employees(emp_no),
	primary key(emp_no,title,from_date)
)