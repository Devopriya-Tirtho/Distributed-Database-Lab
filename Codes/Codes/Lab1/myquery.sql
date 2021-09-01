drop table student101 cascade constraints;

CREATE TABLE student101 (id number(20), name varchar2(20), semester integer,date_of_birth date, primary key(id));

INSERT INTO student101 VALUES(1, 'Rahim', 1, '10-oct-1990');
INSERT INTO student101 VALUES(2, 'Karim', 2, '12-oct-1990');
commit;
