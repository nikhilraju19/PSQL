CREATE TABLE product_groups (
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR(100)
);
INSERT INTO product_groups (group_name) VALUES
    ('Electronics'),
    ('Clothing'),
    ('Books');
	
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    group_id INT,
    price NUMERIC,
    FOREIGN KEY (group_id) REFERENCES product_groups(group_id)
);

INSERT INTO products (product_name, group_id, price) VALUES
    ('Laptop', 1, 1200),
    ('Smartphone', 1, 800),
    ('T-shirt', 2, 20),
    ('Jeans', 2, 50),
    ('Novel', 3, 15),
    ('Textbook', 3, 80);

SELECT * FROM product_groups;
SELECT * FROM products;
SELECT
    product_name,
    group_name,
    price,
    ROW_NUMBER() OVER (
        PARTITION BY group_name
        ORDER BY price
    ) AS row_number
FROM
    products
INNER JOIN product_groups USING (group_id);
SELECT
    product_name,
    group_name,
    price,
    RANK() OVER (
        PARTITION BY group_name
        ORDER BY price DESC
    )
FROM
    products
INNER JOIN product_groups USING (group_id);