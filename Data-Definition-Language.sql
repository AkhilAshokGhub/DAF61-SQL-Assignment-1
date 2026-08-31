-- DDL (Data Definition Language) to define, alter, and 
-- manage database structures like schemas, tables, views, and indexes
create database MyFSql;
use MyFsql;

create table department (
	Department_ID INT primary key auto_increment,
    Department_Name varchar(50) unique not null);
    
create table Employee (
		Employee_Id int primary key auto_increment,
        Employee_Name varchar(50) not null,
        Email varchar(50) unique,
        Age int check(Age >= 18),
        salary decimal(10,2) default 0,
        Department_Id int ,
        foreign key (Department_ID) references department(Department_ID));
        
alter table employee add Phone varchar(10);
alter table employee modify Phone char(10);
alter table employee drop column Phone;

rename table Employee to Employee_Details; 
rename table Employee_Details to Employee_Detail;

truncate table Employee;   -- delete all records from the table but keep the structure of the table 
Drop Table Employee;       -- Delete table Completely 
Drop database myfsql;		-- Delete the Database completely


-- DML (Data Manipulation Language) used to manage and manipulate the actual data stored inside your database tables
insert into Department (Department_Name) value ("HR"),("Sales"),("IT");

select * from department;
insert into employee_Detail (Employee_Name,Email,Age,Salary,Department_Id) value


