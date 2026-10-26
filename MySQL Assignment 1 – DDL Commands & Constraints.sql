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
rename table Departments to Department_info;
show tables;
rename table Location to Locations;
show tables;
truncate table Employees;
show tables;
drop table Employees;
show tables ;
drop database Employ;
drop database  if exists Employ;
create database employee;
use employee;
create table Departments (
Department_id int primary key,
Department_Name varchar (100) not null unique
);
show tables;
create table Location (
Location_id int auto_increment primary key,
Location_Name varchar (100) not null unique
);
show tables;
insert into Location (Location_Name)
values ('Kochi');
insert into Location (Location_Name)
values ('Palakkad');
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