set serveroutput on;
declare
	num number := 20;
begin
	if mod(num,2)=0 then
		DBMS_OUTPUT.PUT_LINE('EVEN');
	ELSE
		DBMS_OUTPUT.PUT_LINE('ODD');
	END IF;
END;
/
