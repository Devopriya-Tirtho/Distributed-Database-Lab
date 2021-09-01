SET VERIFY OFF;
SET SERVEROUTPUT ON;
DECLARE
A MONEY.TAKA %type := '&x';
B MONEY.TAKA %type := '&Y';

C number := 0;
BEGIN
C := A+B;
if C=170 then
		
insert into money values(7,'A',C+10);
	ELSIF C>=170 AND C<210 then
		
insert into money values(7,'B',C+30);
	else

insert into money values(7,'C',C);
	
	end if;


END;
/
