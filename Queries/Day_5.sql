-- some more cleaning queries

-- invalid age
select * from cleaned_employees
where age < 18 or age > 65;

-- invalid salaries
select * from cleaned_salaries
where salary < 0 ;

-- invalid ratings
select * from cleaned_performance
where rating_2022 < 0 or rating_2022 > 5;

select * from cleaned_performance
where rating_2023 < 0 or rating_2023 > 5;

select * from cleaned_performance
where rating_2024 < 0 or rating_2024 > 5;

-- fix invalid age values
update cleaned_employees
set age = 
case
when emp_id = 20 then age = 32
when emp_id = 24 then age = 28
when emp_id = 44 then age = 35
when emp_id = 65 then age = 40
when emp_id = 66 then age = 30
when emp_id = 67 then age = 27
when emp_id = 110 then age = 38
when emp_id = 134 then age = 29
when emp_id = 147 then age = 33
when emp_id = 188 then age = 36
when emp_id = 216 then age = 31

end
where age < 18 or age > 65;

-- so as per the results we have some invalid salary values
-- we need to change only the salaries table

update cleaned_salaries
set salary =
case
when emp_id = 463 then salary = 55000
when emp_id = 142 then salary = 60000
when emp_id = 100 then salary = 45000
when emp_id = 30 then salary = 70000
when emp_id = 54 then salary = 52000
when emp_id = 310 then salary = 48000
when emp_id = 183 then salary = 51000
when emp_id = 168 then salary = 47000
when emp_id = 126 then salary = 46000
when emp_id = 206 then salary = 58000
when emp_id = 76 then salary = 49000
when emp_id = 433 then salary = 62000
when emp_id = 43 then salary = 53000
when emp_id = 324 then salary = 55000
when emp_id = 226 then salary = 51000
when emp_id = 113 then salary = 50000
when emp_id = 273 then salary = 52000
when emp_id = 200 then salary = 48000
when emp_id = 160 then salary = 47000
when emp_id = 42 then salary = 46000
when emp_id = 150 then salary = 49000
when emp_id = 45 then salary = 53000
when emp_id = 65 then salary = 54000
when emp_id = 488 then salary = 60000
when emp_id = 8 then salary = 45000
when emp_id = 121 then salary = 50000
when emp_id = 78 then salary = 47000
when emp_id = 94 then salary = 46000
when emp_id = 353 then salary = 52000

end
where salary < 0;


