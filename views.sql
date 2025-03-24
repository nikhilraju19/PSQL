SELECT current_database();
SELECT table_name  
FROM information_schema.tables  
WHERE table_schema = 'public';
CREATE VIEW country_summary AS
SELECT 
    country, 
    SUM(total_cases) AS total_cases, 
    SUM(total_deaths) AS total_deaths, 
    SUM(total_recovered) AS total_recovered, 
    SUM(active_cases) AS active_cases
FROM worldo_meter
GROUP BY country;
SELECT * FROM country_summary LIMIT 10 OFFSET 5;
SELECT * FROM country_summary LIMIT 10;
CREATE VIEW top_affected_countries AS
SELECT 
    country, 
    total_cases, 
    total_deaths, 
    total_recovered
FROM worldo_meter
ORDER BY total_cases DESC
LIMIT 10;
SELECT * FROM top_affected_countries LIMIT 10;
DROP VIEW top_affected_countries;
DROP VIEW country_summary;
SELECT table_name  
FROM information_schema.tables  
WHERE table_schema = 'public';
SELECT column_name, data_type, character_maximum_length  
FROM information_schema.columns  
WHERE table_name = 'worldo_meter';





