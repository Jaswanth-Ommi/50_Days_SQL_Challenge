-- Changes in the database due to some faults


UPDATE cleaned_employees ce
JOIN employees e
  ON ce.emp_id = e.emp_id
SET ce.hire_date = e.hire_date;