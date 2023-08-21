CREATE TABLE section (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    section_name VARCHAR(10) NOT NULL
);

CREATE TABLE student (
    student_id VARCHAR(50) NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    middle_initial VARCHAR(5),
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    email VARCHAR(100),
    birthday DATE NOT NULL,
    contact_number VARCHAR(50) NOT NULL,
    barangay VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    section_id int REFERENCES section(id) NOT NULL 
);

INSERT INTO section(section_name) VALUES ('1-1');
INSERT INTO section(section_name) VALUES ('1-2');
INSERT INTO section(section_name) VALUES ('2-1');
INSERT INTO section(section_name) VALUES ('3-1');
INSERT INTO section(section_name) VALUES ('4-1');

INSERT INTO student VALUES ('2021-00043-TS-0', 'JV', 'N', 'ABEJA', 'M', 'javeabejuel52@gmail.com', DATE '2003-08-11', '0977 420 9561', 'STA. MARIA', 'STO. TOMAS', '3');
INSERT INTO student VALUES ('2021-00145-TS-0', 'MAURENCE', 'C', 'ABAKA', 'M', 'abelamarklawrence522@gmail.com', DATE '2003-11-22', '0295 889 8542', 'MABINI', 'TALISAY', '3');
INSERT INTO student VALUES ('2012-00141-TS-0', 'JOY MAISIE', 'M', 'AGOGO', 'F', 'lynjoyce252@gmail.com', DATE '2003-02-16', '0930 2527 723', 'SANTIAGO', 'STO. TOMAS', '3');
INSERT INTO student VALUES ('2021-00149-TS-0', 'ALLEN GERALD', 'B', 'BALELA', 'M', 'allenbalela052@gmail.com', DATE '2003-10-11', '0997 927 0395', 'ZONE 1', 'TALISAY', '3');

INSERT INTO student VALUES ('2011-00148-TS-0', 'CHRISTIAN PATRICK', 'T', 'ACOSTA', 'M', 'acosta.christianjaso52@gmail.com', DATE '2002-12-3', '0929 804 3362', 'SAIMSIM', 'CALAMBA', '4');
INSERT INTO student VALUES ('2021-00415-TS-0', 'JEAN', 'D', 'ALCANTARA', 'F', 'alcantarajeannamari52@gmail.com', DATE '2002-10-13', '0965 277 9290', 'MABINI', 'TANAUAN', '4');

INSERT INTO student VALUES ('2021-00461-TS-0', 'JHENNY', 'M', 'ALERGE', 'F', 'alegrejhe52@gmail.com', DATE '2002-01-20', '0981 742 0561', 'LA MESA', 'CALAMBA', '5');
INSERT INTO student VALUES ('2021-00462-TS-0', 'MERIET', NULL, 'ADARAGON', 'F', 'meriellee252@gmail.com', DATE '2001-03-24', '0921 290 3470', 'PARIAN', 'CALAMBA', '5');





















