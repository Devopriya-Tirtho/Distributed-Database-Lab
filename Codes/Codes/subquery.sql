select cgpa from student_result101
where id = (select id
from student101
where name = 'Karim');