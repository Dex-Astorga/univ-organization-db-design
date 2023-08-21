CREATE TABLE guardian (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    contact_number VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE guardian_type(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    relationship VARCHAR(50) NOT NULL
);

CREATE TABLE student_guardian(
    student_id VARCHAR(50) REFERENCES student(student_id) NOT NULL,
    guardian_id BIGINT REFERENCES guardian(id) NOT NULL,
    guardian_type_id BIGINT REFERENCES guardian_type(id) NOT NULL
);

INSERT INTO guardian (first_name, last_name, contact_number, email) 
VALUES ('MARY', 'ABEJA', '0995 203 4405', NULL);
INSERT INTO guardian (first_name, last_name, contact_number, email) 
VALUES ('EDNA', ' ABAKA', '0905 889 8502', NULL);
INSERT INTO guardian (first_name, last_name, contact_number, email) 
VALUES ('JOJO', 'AGOGO', '0909 423 1009', NULL);
INSERT INTO guardian (first_name, last_name, contact_number, email) 
VALUES ('MARIA', 'BARRION', '0905 349 5030', NULL);

INSERT INTO guardian_type(relationship) VALUES ('MOTHER');
INSERT INTO guardian_type(relationship) VALUES ('FATHER');
INSERT INTO guardian_type(relationship) VALUES ('GRANDMOTHER');
INSERT INTO guardian_type(relationship) VALUES ('GRANDFATHER');
INSERT INTO guardian_type(relationship) VALUES ('UNCLE');
INSERT INTO guardian_type(relationship) VALUES ('AUNT');
INSERT INTO guardian_type(relationship) VALUES ('OTHER');

INSERT INTO student_guardian VALUES ('2021-00043-TS-0', 1, 1);
INSERT INTO student_guardian VALUES ('2021-00145-TS-0', 2, 1);
INSERT INTO student_guardian VALUES ('2012-00141-TS-0', 3, 1);
INSERT INTO student_guardian VALUES ('2021-00149-TS-0', 4, 1);
