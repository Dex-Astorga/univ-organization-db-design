# univ-organization-db-design
This is a small university organization database design logic.  

Requirements for the database design:
1. There is a students table that displays:
    student_id,
    first_name,
    middle_initial (nullable),
    last_name,
    gender,
    email (nullable),
    birthday,
    contact_number,
    barangay,
    city,
    section

2. There is a section table that is linked to student table. The section table has the following values:
   [1-1, 1-2, 2-1, 3-1, 4-1]

3. There is a guardian table that displays:
    id,
    first_name,
    last_name,
    contact_number,
    email (nullable)
   
4. Each student has a guardian. One guardian can map to multiple students OR one student can have multiple guardians.

5. A guardian can be a mother, father, or other relatives.

6. Each student can have atmost 2 suborganizations. There are 7 suborganizations and can have as many students members as possible.

   








