1.	Table Creation (CREATE): Write the SQL statements to create a database named “employee” and the following tables based on the provided schema: 
⦿ Departments 
⦿ Location 
⦿ Employees

create database employ;
use employ;
create table Departments(
Department_id int,
Department_Name varchar(100)
);
create table Location (
Location_id int,
Location_Name varchar(30)
);
create table Employees (
Employees_id int,
Employees_Name varchar(50),
Gender char(1),
age int,
Hire_Date date,
Designation varchar(100),
Department_id int,
Location_id int ,
Salary decimal(10,2)
);

2.	Table Alteration (ALTER): Consider the following scenarios and write the SQL statements to alter the structure of the tables accordingly: 
⦿ Add a new column named "email" to the Employees table to store employee email addresses. 
⦿ Modify the data type of the "designation" column in the Employees table to support a wider range of values. 
⦿ Drop the “age” column from the Employees table. 
⦿ Rename the “hire_date” column to “date_of_joining”

show tables;
alter table Employees
add email varchar(100);
alter table Employees
modify column Designation varchar(100);
alter table Employees
drop column age;
describe Employees;
alter table Employees
rename column Hire_Date to Date_of_Joining;

3.	Table Renaming (RENAME): Rewrite the SQL statements to rename the following tables: 
⦿ Rename the "Departments" table to "Departments_Info". 
⦿ Rename the "Location" table to "Locations".

rename table Departments to Department_info;
show tables;
rename table Location to Locations;
show tables;

4.	Table Truncation (TRUNCATE): Write an SQL statement to truncate the Employees table.
truncate table Employees;
show tables;

5.	Database & Table Dropping (DROP): Write the SQL statements to drop the Employees table and then the “employee” database.

drop table Employees;
show tables ;
drop database Employ;

Constraints : 
1.	Database Recreation: 
⦿ Drop the 'employee' database if it exists and recreate it using the provided schema, ensuring that all tables are created with the appropriate constraints as instructed.

drop database  if exists Employ;
create database employee;
use employee;

2.	Departments Table: 
⦿ Ensure that the "department_id" uniquely identifies each department.
⦿ Set up constraints on the "department_name" to avoid duplicate and null entries.

create table Departments (
Department_id int primary key,
Department_Name varchar (100) not null unique
);
show tables;

3.	Location Table: 
⦿ Establish a mechanism to automatically generate unique identifiers for each location, ensuring that they are incremented sequentially. 
⦿ Implement constraints to prevent the insertion of null and duplicate locations.

create table Location (
Location_id int auto_increment primary key,
Location_Name varchar (100) not null unique
);
show tables;
insert into Location (Location_Name)
values ('Kochi');
insert into Location (Location_Name)
values ('Palakkad');

4.	Employees Table: 
⦿ Guarantee that each employee has a distinct identifier.
⦿ Create a restriction to ensure that the employee's name is always provided. 
⦿ Limit the acceptable values for the "gender" field to only 'M' or 'F'. 
⦿ Enforce a condition to ensure that the employee's age is 18 or above. 
⦿ Automatically assign the current date to the "hire_date" field if not specified. ⦿ Establish links between the "department_id" and "location_id" fields in the "employees" table and their respective tables.

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1),
    age INT,
    designation VARCHAR(100),
    hire_date DATE DEFAULT (CURRENT_DATE),
    email VARCHAR(255),
    department_id INT,
    location_id INT,
    CONSTRAINT chk_gender
        CHECK (gender IN ('M', 'F')),
    CONSTRAINT chk_age
        CHECK (age >= 18),
    CONSTRAINT fk_department
        FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),
    CONSTRAINT fk_location
        FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
show tables;
SHOW tables;