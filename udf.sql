CREATE TABLE employees (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2) NOT NULL
);
INSERT INTO employees (name, department, salary) VALUES
('Nikhil', 'HR', 45000.00),
('Venkatesh', 'IT', 75000.50),
('Karthik', 'Finance', 60000.75),
('Reddy', 'Marketing', 52000.25),
('Chandu', 'IT', 90000.00);
SELECT * FROM employees;
CREATE FUNCTION get_salary(emp_id INT)
RETURNS DECIMAL AS $$
DECLARE
    emp_salary DECIMAL;
BEGIN
    SELECT salary INTO emp_salary FROM employees WHERE id = emp_id;

    RETURN emp_salary;
END;
$$ LANGUAGE plpgsql;
SELECT get_salary(3);
CREATE OR REPLACE FUNCTION get_salary(emp_name VARCHAR)
RETURNS DECIMAL AS $$
DECLARE
    emp_salary DECIMAL;
BEGIN
    SELECT salary INTO emp_salary FROM employees WHERE name = emp_name;
    
    RETURN emp_salary;
END;
$$ LANGUAGE plpgsql;
SELECT get_salary('Reddy');
DROP FUNCTION get_salary();





