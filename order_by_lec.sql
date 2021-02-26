use employees;

-- Order by hire date, descending
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY hire_date DESC;

-- Order by hire date, ascending
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY hire_date ASC;

-- This will also order by ascending
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY hire_date;


-- Start with this
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY last_name DESC;

-- Notice the difference between the previous query and this one
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY last_name DESC, first_name ASC;

-- Let's get crazy!
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY last_name DESC, first_name ASC, hire_date DESC;