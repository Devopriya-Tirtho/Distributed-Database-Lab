SET VERIFY OFF;
SET SERVEROUTPUT ON;
DECLARE
A VARCHAR2(30) := '&x';
BEGIN
DBMS_OUTPUT.PUT_LINE(A);
END;
/
