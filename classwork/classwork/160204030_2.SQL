set severoutput on;
declare
	n int;
begin
	select count(snum) into n from student where snum in
	((select snum group by slevel) AND	(select snum group by age));

DBMS_OUTPUT.PRINT_LINE(n);

end;
/
