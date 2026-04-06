-- Dealing with outliers


alter table salaries
modify salary int;

-- check for outliers in the salaries table
select 
min(salary) as min_salary,
max(salary) as max_salary,
avg(salary) as avg_salary
from cleaned_salaries
where salary >0;

-- client rules max salary is 2,00,000 and min salary is 20,000

alter TABLE cleaned_salaries
add outlier int;

update cleaned_salaries
set outlier =
case
when salary < 20000 or salary > 200000 
then 1
else 0
end;

select *
from cleaned_salaries
where outlier = 1;


-- replacing outliers with client specified values
update cleaned_salaries
set salary = case
    when salary_id = 17 then 65000
    when salary_id = 37 then 97000
    else salary
end
where salary = 0;


