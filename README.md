# SQL-Challenge

## Background:
It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.
In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

1. Data Engineering
2. Data Analysis

Note: You may hear the term "Data Modeling" in place of "Data Engineering," but they are the same terms. Data Engineering is the more modern wording instead of Data Modeling.

## Instructions:

-Data Modeling
* Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like: http://www.quickdatabasediagrams.com.

-Data Engineering
* Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

* For the primary keys check to see if the column is unique, otherwise create a composite key. Which takes 	to primary keys in order to uniquely identify a row.
	
* Be sure to create tables in the correct order to handle foreign keys.

* Import each CSV file into the corresponding SQL table. Note be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

![ERD](/EmployeeSQL/ERD.png)

## Data Analysis:
Once you have a complete database, do the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name. 

## Relationships/ Analysis Gathered from Data Engineering:
* departments 1-to-many to dept_emp: employees can belong to more than one department over time (for example, switching departments.)
* departments many-to-many to dept_manager: departments can have multiple managers assigned to them over time. Also managers can (theoretically at least) manage multiple departments over time.
* employees many-to-many to titles: employees can have more than one title as they may be promoted. One title can have many employees assigned with the same title. Therefore, a many-to-many relationship exists.
* employees many-to-many to salaries: similar to the aforementioned relationship. Because employees can have more than one title as they get promoted, they may have more than one salary level. One salary level can have many employees as multiple employees can make the same salary. Therefore, a many-to-many relationship exists.
* employees many-to-1 to dept_emp: a department can contain multiple employees.
* employees many-to-1 to dept_manager: a manager can have many employees under their team.

## Directory Structure:
Once inside the "Employee SQL" folder, navigate to the "ERD.png" to see the visual representation of the table schema.  "schema.sql" has the creation of the tables and "query.sql" has the query results.  Within the "data" directory under "Employee SQL" all the csv files can be found.
