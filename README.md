## Day 1: Project Setup

### Objective
Set up the SQL project environment and prepare the dataset for analysis.

### Tasks Completed
- Created project folder structure (dataset, SQL_QUERIES, screenshots)
- Set up SQL database (hr_project)
- Created tables for HR dataset
- Imported messy dataset into database

### Tools Used
- MySQL / PostgreSQL
- VS Code
- GitHub

### Outcome
Successfully completed project setup. Ready to start data cleaning and analysis from Day 2.


## Day 2 – Identifying Null and Missing Values

### Overview

On Day 2 of my **50 Days SQL Challenge**, the primary objective was to perform **data quality assessment** by identifying **NULL and missing values** across all tables in the database.

Building on the environment setup from Day 1, today’s focus was to ensure the dataset is clean, consistent, and ready for further analysis.

---

###  Tools & Technologies Used

* **MySQL** – Database management and querying
* **VS Code** – Writing and executing SQL queries
* **GitHub** – Version control and daily progress tracking

---

### Objective

* Detect NULL values in all tables
* Identify missing or incomplete data entries
* Understand data inconsistencies before moving to advanced SQL operations

---

### Tasks Performed

* Connected to the database using MySQL
* Executed SQL queries to scan each table for NULL values
* Used conditional checks like `IS NULL` to filter missing data
* Reviewed columns with incomplete records
* Documented observations for future data cleaning steps

---

### Sample Query Used

```sql
SELECT *
FROM table_name
WHERE column_name IS NULL;
```

---

### Key Outcomes

* Successfully identified NULL and missing values across all tables
* Gained better understanding of data quality issues
* Prepared groundwork for upcoming **data cleaning and transformation** steps

---

### Learnings

* Importance of data validation before analysis
* Efficient use of SQL conditions like `IS NULL`
* Practical exposure to handling real-world imperfect datasets

---

### What’s Next?

In the next phase, I will focus on:

* Handling NULL values (imputation, deletion, or replacement)
* Data cleaning techniques
* Improving dataset consistency for analysis

---

### Repository

All queries and progress for Day 2 are available in this repository. Stay tuned for more updates as I continue this journey!

---

# Day 3 – SQL 50 Days Challenge

## Overview

On Day 3 of my 50 Days SQL Challenge, the focus shifted to identifying duplicate records within the database tables.

After analyzing NULL and missing values on Day 2, today’s task was to ensure data uniqueness and integrity, which is essential for accurate analysis and reporting.

---

## Tools & Technologies Used

* MySQL – Writing and executing SQL queries
* VS Code – Query development and workflow management
* GitHub – Version control and daily progress tracking

---

## Objective

* Detect duplicate records in all tables
* Understand how duplication affects data accuracy
* Prepare the dataset for cleaning and normalization

---

## Tasks Performed

* Scanned all tables to identify duplicate rows
* Used GROUP BY and COUNT() functions to detect repeated records
* Applied filtering conditions using HAVING COUNT(*) > 1
* Analyzed columns contributing to duplication
* Documented duplicate patterns for future cleaning steps

---

## Sample Query Used

```sql id="dupe02"
SELECT column_name, COUNT(*) AS duplicate_count
FROM table_name
GROUP BY column_name
HAVING COUNT(*) > 1;
```

---

## Key Outcomes

* Successfully identified duplicate records across multiple tables
* Gained insights into how duplicates can distort analysis
* Built a strong foundation for upcoming data cleaning and deduplication

---

## Learnings

* Importance of maintaining data uniqueness
* Practical use of GROUP BY, COUNT(), and HAVING
* Real-world challenges of handling duplicate data

---

## What’s Next?

Next, I will focus on:

* Removing or handling duplicate records
* Applying data cleaning techniques
* Improving overall data quality for analysis

---

## Repository

All queries and progress for Day 3 are available in this repository. Stay tuned for more updates.

---

# Day 4 – SQL 50 Days Challenge

## Overview

On Day 4 of my 50 Days SQL Challenge, the focus was on cleaning the dataset by removing duplicate records from all tables.

After identifying duplicate entries on Day 3, today’s task was to ensure data consistency and integrity by eliminating redundant data. This step is crucial for maintaining accurate analysis and reliable reporting.

---

## Tools & Technologies Used

* MySQL – Writing and executing SQL queries
* VS Code – Query development and workflow management
* GitHub – Version control and daily progress tracking

---

## Objective

* Remove duplicate records from all tables
* Ensure data uniqueness and consistency
* Prepare a clean dataset for further analysis

---

## Tasks Performed

* Reviewed previously identified duplicate records
* Applied SQL techniques to remove duplicates
* Used DELETE statements with conditions to retain only unique records
* Leveraged window functions like ROW_NUMBER() (where applicable) to identify duplicates
* Validated tables after cleaning to ensure no duplicates remain

---

## Sample Query Used

```sql id="clean01"
DELETE FROM table_name
WHERE id NOT IN (
    SELECT MIN(id)
    FROM table_name
    GROUP BY column_name
);
```

---

## Key Outcomes

* Successfully removed duplicate records from all tables
* Improved overall data quality and consistency
* Ensured dataset is ready for accurate analysis

---

## Learnings

* Importance of data cleaning in real-world datasets
* Practical use of DELETE operations and subqueries
* Understanding safe ways to remove duplicates without losing essential data

---

## What’s Next?

Next, I will focus on:

* Handling remaining data inconsistencies
* Standardizing data formats
* Preparing the dataset for advanced SQL queries and analysis

---

## Repository

All queries and progress for Day 4 are available in this repository. Stay tuned for more updates.

---

# Day 5 – SQL 50 Days Challenge

## Overview

On Day 5 of my 50 Days SQL Challenge, the focus was on cleaning invalid data entries in key columns such as age and salary.

After handling duplicates in previous steps, today’s task involved correcting inaccurate values based on rules provided by the client. This ensured that the dataset aligns with business requirements and maintains high data quality standards.

---

## Tools & Technologies Used

* MySQL – Writing and executing SQL queries
* VS Code – Query development and workflow management
* GitHub – Version control and daily progress tracking

---

## Objective

* Identify invalid values in age and salary columns
* Replace incorrect data based on client-defined rules
* Ensure consistency and reliability of critical attributes

---

## Tasks Performed

* Scanned tables to detect invalid entries in age and salary fields
* Applied UPDATE and SET statements to modify incorrect values
* Used CASE WHEN conditions to handle multiple scenarios efficiently
* Replaced invalid data with appropriate values provided by the client
* Validated the updates to ensure data accuracy

---

## Sample Query Used

```sql id="clean02"
UPDATE table_name
SET 
    age = CASE 
        WHEN age < 0 OR age > 100 THEN client_defined_age
        ELSE age
    END,
    salary = CASE 
        WHEN salary < 0 THEN client_defined_salary
        ELSE salary
    END;
```

---

## Key Outcomes

* Successfully corrected invalid age and salary entries
* Improved data accuracy based on business rules
* Ensured dataset reliability for further analysis

---

## Learnings

* Importance of validating critical numerical fields
* Practical use of UPDATE, SET, and CASE WHEN statements
* Handling real-world data issues based on client requirements

---

## What’s Next?

Next, I will focus on:

* Standardizing data formats
* Handling inconsistencies in textual data
* Preparing the dataset for deeper analytical queries

---

## Repository

All queries and progress for Day 5 are available in this repository. Stay tuned for more updates.

---

Consistency builds expertise — one step at a time.




