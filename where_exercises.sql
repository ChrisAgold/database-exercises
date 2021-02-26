use employees;

-- Part One - Understanding WHERE

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' (Hint: Use IN) - 709 Rows
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E' - 7330 Rows
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

-- Find all employees hired in the 90s - 135214 Rows
SELECT *
FROM employees
WHERE hire_date LIKE '199%';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- Find all employees born on Christmas - 842 Rows
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

-- Find all employees with a 'q' in their last name - 1873 Rows
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

-- Part Deux - Get Fancy

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

-- Add a condition to the previous query to find everybody with those names who is also male - 441 Rows
SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M';

-- Find all employees whose last name starts or ends with 'E' - 30723 Rows
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' - 899 Rows
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

-- Find all employees hired in the 90s and born on Christmas - 362 Rows
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25';

-- Find all employees with a 'q' in their last name but not 'qu' - 547 Rows
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';
