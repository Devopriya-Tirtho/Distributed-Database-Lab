drop table student_result101 cascade constraints;
create table student_result101 (id number(20), cgpa number(3,2), foreign key(id) references student101(id));
insert into student_result101 values(1, 3.99);
insert into student_result101 values(2, 3.85);
commit;