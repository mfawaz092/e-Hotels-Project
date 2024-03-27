-- Insert 500 random customers
INSERT INTO customer (id_type, name, address, registration_date)
SELECT
    CASE floor(random() * 3)
        WHEN 0 THEN 'Passport'
        WHEN 1 THEN 'Driver License'
        ELSE 'ID Card'
    END AS id_type,
    concat('Customer', customer_id) AS name,
    concat(floor(random() * 1000) + 1, ' Random St') AS address,
    current_date - interval '365' * floor(random() * 10) AS registration_date
FROM generate_series(1, 500) AS customer_id;

SELECT * FROM public.customer
ORDER BY registration_date ASC 

-- Insert managers
INSERT INTO manager (ssn_sin, name, address)
SELECT
    -- Generate a random Social Security Number or Social Insurance Number (SSN/SIN)
    concat(floor(random() * 1000000000), '-', floor(random() * 10000)) AS ssn_sin,
    -- Generate a random name
    concat('Manager_', manager_id) AS name,
    -- Generate a random address
    concat(floor(random() * 1000) + 1, ' Random St') AS address
FROM
    generate_series(1, (SELECT COUNT(*) FROM hotel)) AS manager_id;

--Insert employs relation
INSERT INTO employs (hotel_id, manager_id)
SELECT
    h.hotel_id,
    m.manager_id
FROM
    (SELECT hotel_id, ROW_NUMBER() OVER () AS row_num FROM hotel) AS h
JOIN
    (SELECT manager_id, ROW_NUMBER() OVER () AS row_num FROM manager) AS m
ON
    h.row_num = m.row_num;

--Insert employees
INSERT INTO employee (ssn_sin, name, address, hotel_id)
SELECT
    -- Generate a random Social Security Number or Social Insurance Number (SSN/SIN)
    concat(floor(random() * 1000000000), '-', floor(random() * 10000)) AS ssn_sin,
    -- Generate a random name
    concat('Employee_', employee_id) AS name,
    -- Generate a random address
    concat(floor(random() * 1000) + 1, ' Random St') AS address,
    -- Select a random hotel_id
    sub.hotel_id
FROM
    (SELECT
        generate_series(1, 10) AS employee_id,
        hotel_id
    FROM
        (SELECT hotel_id FROM hotel ORDER BY random() LIMIT (SELECT COUNT(*) FROM hotel)) AS h
    CROSS JOIN
        generate_series(1, 10) AS s
    ) AS sub;
	









