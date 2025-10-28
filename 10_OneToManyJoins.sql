--INNER JOIN
    SELECT * FROM customers
    JOIN orders ON orders.customer_id = customers.id;

    SELECT first_name, last_name, order_date, amount FROM customers
    JOIN orders ON orders.customer_id = customers.id;
        -- The order doesn't matter

-- INNER JOIN WITH GROUP BY
    SELECT first_name, last_name, SUM(amount) AS total FROM customers
    JOIN orders ON orders.customer_id = customers.id
    GROUP BY first_name, last_name
    ORDER BY total;

-- LEFT JOIN
    SELECT first_name, last_name, order_date, amount FROM customers
    LEFT JOIN orders ON orders.customer_id = customers.id;