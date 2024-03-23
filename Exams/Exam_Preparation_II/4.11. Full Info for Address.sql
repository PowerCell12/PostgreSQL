-- Create the search_results table if it doesn't exist
CREATE TABLE IF NOT EXISTS search_results (
    id SERIAL PRIMARY KEY,
    address_name VARCHAR(50),
    full_name VARCHAR(100),
    level_of_bill VARCHAR(20),
    make VARCHAR(30),
    condition CHAR(1),
    category_name VARCHAR(50)
);

-- Create the sp_courses_by_address stored procedure
CREATE OR REPLACE PROCEDURE sp_courses_by_address(address_name VARCHAR(100))
LANGUAGE plpgsql
AS $$
BEGIN
    -- Clear the existing data in search_results
    DELETE FROM search_results;

    -- Insert data into search_results based on the provided criteria
    INSERT INTO search_results (address_name, full_name, level_of_bill, make, condition, category_name)
    SELECT
        ad.name,
        cl.full_name,
        CASE
            WHEN co.bill <= 20 THEN 'Low'
            WHEN co.bill <= 30 THEN 'Medium'
            ELSE 'High'
        END,
        ca.make,
        ca.condition,
        cat.name
    FROM addresses AS ad
    LEFT JOIN courses AS co ON co.from_address_id = ad.id
    LEFT JOIN clients AS cl ON cl.id = co.client_id
    LEFT JOIN cars AS ca ON co.car_id = ca.id
    LEFT JOIN categories AS cat ON cat.id = ca.category_id
    WHERE ad.name = address_name
    ORDER BY ca.make, cl.full_name;
END;
$$;
