

SET VERIFY OFF;
SET SERVEROUTPUT ON;
declare
	n number :=20;
begin
	if mod(n,3)=0 then
		DBMS_OUTPUT.PUT_LINE('zero');
	ELSIF MOD(n,3)=1 then
		DBMS_OUTPUT.PUT_LINE('one');
	else
		DBMS_OUTPUT.PUT_LINE('two');
	
	end if;
end;
/
