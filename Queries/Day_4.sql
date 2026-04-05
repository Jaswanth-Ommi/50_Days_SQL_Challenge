-- Cleaning Duplicate Records

-- employees_table/salaries_table/attendance_table/performance_table

-- employees_table
with cte as(
    select *,row_number() over(partition by emp_id, emp_name, city 
    order by emp_id) as rn
from cleaned_employees
)
delete from cleaned_employees
where emp_id in (select emp_id from cte
where rn>1);


--attendance_table
with cte as (
    select *, row_number() over(partition by emp_id, attendance_date, status 
        order by attendance_id) as rn
    from cleaned_attendance
)
delete from cleaned_attendance
where attendance_id in (
    select attendance_id from cte
    where rn > 1
);

-- performance_table
with cte as (
    select *, row_number() over(partition by emp_id, rating_2022, rating_2023, rating_2024
        order by emp_id) as rn
from cleaned_performance
)
    delete from cleaned_performance
where emp_id in (
    select emp_id from cte
    where rn >1
);

-- salaries_table
with cte as(
    select *, row_number() over(partition by emp_id, salary, salary_date
        order by salary_id) as rn
        from cleaned_salaries
)
delete from cleaned_salaries
where salary_id in (
    select salary_id from cte
    where rn >1
);