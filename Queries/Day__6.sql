alter table salaries
modify salary int;

-- check for outliers in the salaries table
select 
min(salary) as min_salary,
max(salary) as max_salary,
avg(salary) as avg_salary
from cleaned_salaries
where salary >0;