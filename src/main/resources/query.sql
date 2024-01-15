SELECT o.product_name
FROM orders o
         JOIN customers c ON o.customers_id = c.id
WHERE LOWER(c.name) = :name;