
-- cleaned_departments table
select * from cleaned_departments
where dept_id = "" or dept_id is null
or
dept_name = "" or dept_name is null;


-- cleaned_employees table
select * from cleaned_employees
where emp_id = "" or emp_id is null
or
emp_name = "" or emp_name is null
or
age is null or age =""
or
city = "" or city is null
or
dept_id = "" or dept_id is null;


-- cleaned_attendance table
select * from cleaned_attendance
where attendance_id = "" or attendance_id is null
or
emp_id = "" or emp_id is null
or
attendance_date = "" or attendance_date is null
or
status = "" or status is null;

-- cleaned_performance table
select * from cleaned_performance
where emp_id = "" or emp_id is null
or
rating_2022 = "" or rating_2022 is null
or
rating_2023 = "" or rating_2023 is null 
or
rating_2024 = "" or rating_2024 is null;

-- cleaned_salaries table
select * from cleaned_salaries
where salary_id = "" or salary_id is null
or
emp_id = "" or emp_id is null
or
salary = "" or salary is null
or
salary_date = "" or salary_date is null;

