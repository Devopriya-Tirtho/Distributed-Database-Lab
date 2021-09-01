SET VERIFY OFF;
SET SERVEROUTPUT ON;
DECLARE
A MONEY.ID %type := &x;
B MONEY.NAME %type := '&Y';
C MONEY.TAKA %type := &Z;

n number :=0;

BEGIN
	WHILE(n<5)
	loop
		insert into money values(A,'abc',10);
		A :=A+1;
		n :=n+1;
	end loop;

END;
/
