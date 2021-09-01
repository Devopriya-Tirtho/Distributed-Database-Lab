set serveroutput on;

declare
	CourseName int:=0;
	FacultyName int:=0;
	count1 int:=0;
	count2 int:=0;
	B_name varchar2(30);

begin

	B_name := '&Name';
	DBMS_OUTPUT.PUT_LINE('Table Name');
	
	for r in (select count(cname) as "NCNAME" 
	from COURSE where cname=B_name) loop
	
	CourseName:=r.NCNAME;
	if(CourseName>0) then
		count1:=1;
		
	end if;
	end loop;
	
	for j in (select count(fname) as "NFNAME" 
	from FACULTY where fname=B_name) loop
	
	FacultyName:=j.NFNAME;
	if(FacultyName>0) then
		count2:=1;
	end if;
	end loop;	
	
	if count1=1 then
	DBMS_OUTPUT.PUT_LINE('Course Table');
	
	elsif count2=1 then
	DBMS_OUTPUT.PUT_LINE('Faculty Table');
	
	else
	DBMS_OUTPUT.PUT_LINE('Not Found');
	end if;
end;
/
