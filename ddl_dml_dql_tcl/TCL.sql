BEGIN;  
INSERT INTO students VALUES (9, "Rahul", "Sharma", "Delhi", "Male", 5, "CSE", "BTech");
UPDATE students SET department = "AI" WHERE reg_no = 3;
COMMIT;

START TRANSACTION;
INSERT INTO students VALUES (11, 'Priya', 'Verma', 'Kolkata', 'Female', 3, 'IT', 'MCA');
SAVEPOINT before_update;
UPDATE students SET department = 'COMPUTERS' WHERE reg_no = 10;
ROLLBACK TO before_update;
COMMIT;

