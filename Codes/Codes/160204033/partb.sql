SET SERVEROUTPUT ON;

DECLARE
	f_name FACULTY.fName %TYPE;


BEGIN

 
	select fName
	into f_name
	from FACULTY
where Fid =(select Fid from COURSE 
where room ='R126' AND cnum IN (select cnum from ENROLLED
where snum =(select snum from STUDENT 
where slevel='1' AND major='ME' AND age=19)));


DBMS_OUTPUT.PUT_LINE(f_name);

END;
/