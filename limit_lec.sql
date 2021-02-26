USE employees;

-- Limit - Allows us to return only a certain number of results
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY last_name, first_name
    LIMIT 15;

-- Offset - Allows us to skip a number of rows when selecting results
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY last_name, first_name
    LIMIT 25 OFFSET 250;

-- Distinct - Allows us to select unique results
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY last_name;

-- Working together... Solving the problems!
SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY last_name, first_name
    LIMIT 50 OFFSET 400;