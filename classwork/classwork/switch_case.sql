set serveroutput on;
declare
	num number := 20;
begin
	case mod(num,3)
	when 0 then 
		DBMS_OUTPUT.PUT_LINE('zero');
	when 1 then 
		DBMS_OUTPUT.PUT_LINE('one');
	else 
		DBMS_OUTPUT.PUT_LINE('two');
	end case;
	
END;
/
