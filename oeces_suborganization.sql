CREATE TABLE suborganization(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    suborganization_name VARCHAR(50) NOT NULL
);

CREATE TABLE student_suborganization (
    student_id VARCHAR(50) REFERENCES student(student_id) NOT NULL,
    suborganization_id BIGINT REFERENCES suborganization(id) NOT NULL
);

INSERT INTO suborganization (suborganization_name) VALUES ('ARTRONICS');
INSERT INTO suborganization (suborganization_name) VALUES ('ATHLECES');
INSERT INTO suborganization (suborganization_name) VALUES ('FORTRECE');
INSERT INTO suborganization (suborganization_name) VALUES ('GROOVECE');
INSERT INTO suborganization (suborganization_name) VALUES ('MUSIECEANS');
INSERT INTO suborganization (suborganization_name) VALUES ('QUIECERS');
INSERT INTO suborganization (suborganization_name) VALUES ('SPO');

INSERT INTO student_suborganization VALUES ('2021-00043-TS-0', 3);
INSERT INTO student_suborganization VALUES ('2021-00145-TS-0', 1);
INSERT INTO student_suborganization VALUES ('2012-00141-TS-0', 2);
INSERT INTO student_suborganization VALUES ('2021-00149-TS-0', 2);
INSERT INTO student_suborganization VALUES ('2021-00149-TS-0', 3);












