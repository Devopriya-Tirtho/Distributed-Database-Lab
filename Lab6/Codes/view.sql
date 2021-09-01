create or replace view myview as
select S.id, S.name, R.cgpa
from student101 S, student_result101 R
where S.id = R.id;

select * from myview;

commit;
