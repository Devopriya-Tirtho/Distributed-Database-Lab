SET SERVEROUTPUT ON;

DECLARE

 num number := 0;

BEGIN

FOR i IN 1..5 LOOP
	num := num+1;
		DBMS_OUTPUT.PUT_LINE(num);
	
END LOOP;

END;
/