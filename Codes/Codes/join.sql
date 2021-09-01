select S.name, B.cgpa
from student101 S, student_result101 B
where S.id = B.id;

select S.name, B.cgpa
from student101 S inner join student_result101 B
on S.id = B.id;

-- right join, left join