CREATE TABLE sample(
id INT PRIMARY KEY,
name VARCHAR(20),
city VARCHAR(15),
age INT
);
SELECT datname FROM pg_database;
SELECT * FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'sample';
SELECT table_name
FROM information_schema.tables
WHERE table_schema NOT IN ('pg_catalog', 'information_schema');
SELECT column_name FROM information_schema.columns
WHERE table_name = 'sample';
COPY sample FROM  
        'C:\\Users\\NIKHIL\\Downloads\\sample.csv'  
        DELIMITER ',' CSV HEADER;