SELECT * FROM day_wise WHERE active > 1000;
CREATE INDEX idx_active ON day_wise(active);
SELECT * FROM day_wise WHERE active > 1000;
DROP INDEX idx_active;
SELECT indexname, indexdef 
FROM pg_indexes 
WHERE tablename = 'day_wise';
SELECT * FROM day_wise WHERE date BETWEEN '2020-06-01' AND '2020-12-31';
CREATE INDEX idx_date ON day_wise(date);
SELECT * FROM full_grouped WHERE country = 'Tunisia';
CREATE INDEX idx_country_hash ON full_grouped USING hash (country);
SELECT * FROM full_grouped WHERE country = 'Tunisia';
SELECT indexname, indexdef 
FROM pg_indexes 
WHERE tablename = 'full_grouped';
DROP INDEX idx_country_hash;
SELECT * FROM covid_data 
WHERE who_region BETWEEN 'Europe' AND 'Western Specific'
ORDER BY who_region;
CREATE INDEX idx_whoregion ON covid_data (who_region);
DROP INDEX idx_whoregion;
