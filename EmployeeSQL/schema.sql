-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Critical to import these tables in the order below, since the keys make references to other tables your import will not be successful if not done in this order

-- Create titles table
CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (title_id)  --setting the title_id as the primary key
);

-- Create employees table
CREATE TABLE employees ( 
    emp_no INT NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date Date NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex CHAR NOT NULL,
    hire_date Date NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) references titles (title_id) --foreign key must reference the junction table
);

-- Create salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Create departments table
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL, 
    PRIMARY KEY (dept_no)  --setting the department number as the primary key will be unique identifier 
);

-- Create department employees table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Create department manager table 
CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);