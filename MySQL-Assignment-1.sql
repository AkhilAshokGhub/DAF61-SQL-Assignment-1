create database employee;
use employee;

create table Departments (
	Department_id int primary key auto_increment,
    Department_name varchar (100) unique not null);
    
create table Location (
	location_id int primary key auto_increment,
    location varchar(30));
    
create table Employees (
	employee_id int primary key,
    employee_name varchar(50),
    gender enum ('M','F'),
    age int,
    hire_date date,
	designation varchar(100),
    department_id int,
    location_id int,
    salary decimal(10,2));
    
alter table Employees add email VARCHAR(100);
alter table Employees modify designation varchar(250);
alter table Employees  drop column age;
alter table Employees rename column hire_date to date_of_joining;
    
rename table Departments to Departments_Info;
rename table Location to Locations;

truncate table Employees;

drop table Employees;
drop database employee;

create database employee;
use employee;

create table Departments (
	Department_id int primary key auto_increment,
    Department_name varchar (100) unique not null);
    
create table Location (
	location_id int primary key auto_increment,
    location varchar(30)unique not null);
    
create table Employees (
	employee_id int primary key auto_increment,
    employee_name varchar(50) NOT NULL,
    gender enum ('M','F') NOT NULL,
    age int NOT NULL check(age >= 18),
    hire_date date default (current_date),
	designation varchar(100),
    department_id int,
    location_id int,
    salary decimal(10,2),
    foreign key (Department_id) references Departments(Department_id),
    foreign key (location_id) references Location(location_id));
    


    
	
    
