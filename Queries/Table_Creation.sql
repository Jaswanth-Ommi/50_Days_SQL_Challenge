create TABLE Departments (
    dept_id varchar(50) PRIMARY KEY,
    dept_name VARCHAR(50)
);

create table employees(
    emp_id varchar(50) primary key,
    emp_name varchar(50),
    age int,
    city varchar(50),
    dept_id varchar(50),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

create table salaries(
    salary_id varchar(50) primary key,
    emp_id varchar(50),
    salary int,
    salary_date date,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

create table attendance(
    attendance_id varchar(50) primary key,
    emp_id varchar(50),
    attendance_date date,
    status varchar(20),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

create table performance(
    emp_id varchar(50),
    rating_2022 int,
    rating_2023 int,
    rating_2024 int,
    foreign key (emp_id) references employees(emp_id)
);

alter table employees
modify column hire_date varchar(50);

alter table attendance
modify column attendance_date varchar(50);


-- Cleaned tables

create table cleaned_departments as
select * from departments;

create table cleaned_employees as
select * from employees;

create table cleaned_attendance as
select * from attendance;

create table cleaned_performance as
select * from performance;

create table cleaned_salaries as
select * from salaries;






