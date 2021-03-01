USE employees;

-- Birthday for current managers
-- Sub-query
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
);
-- Right Join
SELECT e.first_name, e.last_name, e.birth_date
FROM employees as e
         RIGHT JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE dm.to_date > NOW();

-- Birthday of the manager of Production
-- Sub-query
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW() AND dept_no IN (
        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Production'
    )
);
-- Join
SELECT e.first_name, e.last_name, e.birth_date
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on d.dept_no = dm.dept_no
WHERE dm.to_date > NOW() AND d.dept_name = 'Production';

-- Sub-query to insert
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (500000, '1991-11-20', 'David', 'Stephens', 'M', '2021-03-01');

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (
                                                                      (
                                                                          SELECT emp_no
                                                                          FROM employees
                                                                          WHERE first_name = 'David' AND last_name = 'Stephens' AND birth_date = '1991-11-20'
                                                                      ), 'd005', '2021-03-01', '9999-01-01');



