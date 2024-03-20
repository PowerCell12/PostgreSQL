CREATE PROCEDURE sp_increase_salary_by_id(id integer)
LANGUAGE plpgsql
AS $$
BEGIN
    
    IF EXISTS (SELECT 1 FROM employees WHERE employee_id = id) THEN
        -- Update the salary for the employee with the provided id
        UPDATE employees
        SET salary = salary + (salary * 0.05)
        WHERE employee_id = id;

        -- Commit the transaction
        COMMIT;
    ELSE
        -- Rollback the transaction if the id doesn't exist
        ROLLBACK;
    END IF;
END;
$$;
