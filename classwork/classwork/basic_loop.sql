SET SERVEROUTPUT ON;
DECLARE
num number :=0;

BEGIN

LOOP
	num := num+1;
		DBMS_OUTPUT.PUT_LINE(num);
	exit when num>4;

END LOOP;

END;
/