create or replace view myview(view_id, view_name, view_cgpa) as
select S.id, S.name, R.cgpa
from student101 S, student_result101 R
where S.id = R.id;

select * from myview;

commit;
