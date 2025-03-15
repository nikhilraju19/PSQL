INSERT INTO students (reg_no, f_name, l_name, address, gender, semester, department, course) 
VALUES
	(1,'Nikhil','Vardhan','Rayachoti','Male',8,'CTECH','Btech'),
    (2,'Venkatesh','Reddy','Lucknow','Male',8,'CRIO','Mba'),
    (3,'Chandra','Kiran','Ongole','Male',8,'CINTEL','Mbbs'),
    (4,'Karthik','Reddy','Rampur','Male',8,'NWC','B.Sc'),
    (5,'Maruthi','Jaswi','Agadur','Female',2,'CINTEL','Biotech');
INSERT INTO students 
VALUES (11,'Mahes','Babu','Hyderabad','Male',8,'FILM','HERO');
INSERT INTO students 
VALUES 	(6,'Sudheer','Babu','Hyderabad','Male',8,'FILM','HERO'),
		(8,'Nani','Natural','Vishakapatanam','Male',8,'FILM','HERO');
UPDATE students set l_name = 'Jaswanth',gender='Male' where reg_no = 5;
UPDATE students set course = 'Btech' where f_name = 'Sudheer';
DELETE FROM students WHERE course = 'Hero';
DELETE FROM students WHERE reg_no = 11;
INSERT INTO hostel 
VALUES (1, 'Nikhil', 'Vardhan', '2024-01-10', 8, 101),
	(2, 'Venkatesh', 'Reddy', '2024-01-12', 8, 408),
	(3, 'Chandra', 'Kiran', '2024-01-15', 8, 816),
	(4, 'Karthik', 'Reddy', '2024-02-01', 8, 418),
	(5, 'Maruthi', 'Jaswanth', '2024-02-10', 2, 510),
	(6, 'Sudheer', 'Babu', '2024-02-20', 8, 602),
	(7, 'Rahul', 'Sharma', '2024-03-05', 5, 515),
	(8, 'Priya', 'Verma', '2024-03-10', 3, 312);
INSERT INTO hostel VALUES (9, 'Vishruth', 'Agarwal', '2023-12-03', 1, 618);
UPDATE hostel SET room_number = 209 WHERE id = 1;


