
-- Removing Null Values and Replacing with Default Values
update cleaned_employees
set emp_name  = "Unknown"
where emp_name = "" or emp_name is null;

-- emp_id-13 => Delhi

update cleaned_employees
set city = "Delhi"
where emp_id = 13;

update cleaned_employees
set city = "Delhi NCR"
where emp_id is null or city = '';

-- Rating_2023-0
update cleaned_performance
set rating_2023 = 0
where rating_2023 = "" or rating_2023 is null;


-- Find Duplicate Records

-- Employees_table
select emp_id, emp_name, city,count(*)
from cleaned_employees
group by emp_id, emp_name, city
having count(*) > 1;

-- Attendance_table
select emp_id, attendance_date, status, count(*)
from cleaned_attendance
group by emp_id, attendance_date, status
having count(*) > 1;

-- Performance_table
select emp_id, rating_2022, rating_2023, rating_2024, count(*)
from cleaned_performance
group by emp_id, rating_2022, rating_2023, rating_2024
having count(*) > 1;

-- Salaries_table
select emp_id, salary, salary_date, count(*)
from cleaned_salaries
group by emp_id, salary, salary_date
having count(*) > 1;


