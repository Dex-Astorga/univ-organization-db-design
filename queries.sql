-- SAMPLE QUERIES
-- 1. Fetch all students who live in Calamba City.
SELECT * FROM student WHERE city = 'CALAMBA';

-- 2. Fetch all second year students.
SELECT * FROM student s
JOIN section ON s.section_id = section.id;

-- 3. Display student_id and (contact_number of their guardian AS in_case_of_emergency_call).
SELECT s.student_id, COALESCE(g.contact_number, 'NO CONTACT') AS incase_of_emergency_call
FROM student s
FULL JOIN student_guardian sg ON sg.student_id = s.student_id
FULL JOIN guardian g ON sg.guardian_id = g.id;

-- 4. Fetch all students without suborganization membership.
SELECT s.first_name, s.last_name FROM student s
LEFT JOIN student_suborganization so ON so.student_id = s.student_id
WHERE so.student_id IS NULL;

-- 5. Fetch all students that is a member of more than 1 suborganization.
SELECT s.first_name, s.last_name, COUNT(so.student_id) AS suborg_count 
FROM student s
INNER JOIN student_suborganization so ON so.student_id = s.student_id
GROUP BY s.first_name, s.last_name HAVING COUNT(so.student_id) > 1;

-- 6. Display each student full name and guardian full name and their relationship.
SELECT 
    CONCAT(s.first_name, ' ', s.last_name) AS student,
    CONCAT(g.first_name, g.last_name) AS guardian,
    COALESCE(gt.relationship, 'NO GUARDIAN PROVIDED')
FROM student s
FULL JOIN student_guardian sg 
    ON sg.student_id = s.student_id
FULL JOIN guardian g
    ON sg.guardian_id = g.id
FULL JOIN guardian_type  gt
    ON sg.guardian_type_id = gt.id
WHERE s.student_id IS NOT NULL;

-- 7. Fetch all students without email address.
SELECT first_name, last_name FROM student
WHERE email IS NULL;

-- 8. Fetch all guardian email addresses and display: 'NO EMAIL PROVIDED' when null.
SELECT first_name, last_name, COALESCE(email, 'NO EMAIL PROVIDED')
FROM guardian;

-- 9. Count the number of members for each suborganization.
SELECT so.suborganization_name, COUNT(ss.suborganization_id)
FROM student_suborganization ss 
JOIN suborganization so 
    ON so.id = ss.suborganization_id
GROUP BY so.suborganization_name;

-- 10. Fetch all december babies.
SELECT * FROM student
WHERE EXTRACT(MONTH FROM birthday)= 10;