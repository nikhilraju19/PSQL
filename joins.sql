SELECT s.reg_no, s.f_name, s.l_name, s.department, h.room_number, h.joining_date
FROM students s
INNER JOIN hostel h
ON s.f_name = h.f_name AND s.l_name = h.l_name;
SELECT s.reg_no, s.f_name, s.l_name, s.department, h.room_number, h.joining_date
FROM students s
LEFT JOIN hostel h 
ON s.f_name = h.f_name AND s.l_name = h.l_name;
SELECT s.reg_no, s.f_name, s.l_name, s.department, h.room_number, h.joining_date
FROM students s
RIGHT JOIN hostel h 
ON s.f_name = h.f_name AND s.l_name = h.l_name;
SELECT s.reg_no, s.f_name, s.l_name, s.department, h.room_number, h.joining_date
FROM students s
NATURAL JOIN hostel h ;
SELECT s.f_name, s.l_name, h.room_number, h.joining_date
FROM students s
CROSS JOIN hostel h;