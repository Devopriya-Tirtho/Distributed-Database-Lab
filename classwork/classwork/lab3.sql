set SERVEROUTPUT on;
declare
	num number:=0;
begin
	WHILE NUM<5
	loop
		num := num+1;
		DBMS_OUTPUT.PUT_LINE(num);
	
	end loop;
end;
/
