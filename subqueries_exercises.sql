USE employees;
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

-- # SELECT t.title AS 'Titles'
-- # FROM titles t
-- # WHERE t.emp_no IN (
-- #     SELECT e.emp_no
-- #     FROM employees e
-- #     WHERE e.first_name = 'Aamod'
-- # );

SELECT title, COUNT(title)
FROM titles
WHERE emp_no IN (
SELECT emp_no
FROM employees
WHERE first_name = 'Amond'
)
GROUP BY title;

SELECT first_name, last_name
FROM employees
WHERE gender = 'F' AND emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
);

