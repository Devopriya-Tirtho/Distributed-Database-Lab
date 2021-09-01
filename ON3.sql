SET SERVEROUTPUT ON;
DECLARE
	N number:=&x;
	I number:=2;
	J number:=2;
	FLAG number:=0;

BEGIN
	FOR I in 1..N LOOP
		FOR J IN 1..I LOOP
			if I!=J THEN
			IF MOD(I,J)=0 THEN 
				FLAG:=1;
				
			END IF;
				EXIT;
			END IF;
		END LOOP;
		IF FLAG=0 then
				DBMS_OUTPUT.PUT_LINE('PRIME:');
				DBMS_OUTPUT.PUT_LINE(I);
		end if;
	END LOOP;
END;
/	
		