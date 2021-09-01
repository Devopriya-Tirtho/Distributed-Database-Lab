SET SERVEROUTPUT ON;

DECLARE
	sub student.major%TYPE;
	nage student.age%TYPE;
	id student.snum%TYPE:=0;
	name student.sname%TYPE;
	n int;
	
BEGIN
	select count(snum)
	into n
	from student;
	
	select major,age
	into sub,nage
	from student
	where major='CSE' and age=22;
	
	LOOP
	id :=id+1;
	
	if sub='CSE' and nage=22 then
	
	select sname
	into name
	from student
	where major='CSE' and age=22;
			DBMS_OUTPUT.PUT_LINE(name);
			
	end if;	
		
	EXIT WHEN id>n;
	
end loop;

END;
/