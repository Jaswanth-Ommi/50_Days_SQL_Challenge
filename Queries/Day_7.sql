-- Identifying invalid date values

use hr_database;

-- 1. Remove invalid month

-- 25-08-2022 => 25-08 => 08 
update cleaned_employees
set hire_date = null
where 
cast(substring_index(substring_index(hire_date, '-', 2), '-', -1) as unsigned) > 12;


-- 2. DD-MM-YYYY TO YYYY-MM-DD
-- 28-08-2024

update cleaned_employees
set hire_date = cast(concat(
    substring(hire_date, 7, 4), '-',  -- year
    substring(hire_date, 4, 2), '-',  -- month
    substring(hire_date, 1, 2)        -- day
) as unsigned)
where hire_date like '__-__-____';


-- 3.  Invalid day values
select * from cleaned_employees
where substring(right(hire_date, 2), 1, 2) > '31';

update cleaned_employees
set hire_date = null
where substring(right(hire_date, 2), 1, 2) > '31';

-- 4. Changing the data type of hire_date to date
alter table cleaned_employees
modify column hire_date date;
