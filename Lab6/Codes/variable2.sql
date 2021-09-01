SET SERVEROUTPUT ON;

DECLARE
	n_id        student101.id %TYPE;
	v_name   student101.name %TYPE;

BEGIN
	select id, name
	into n_id, v_name
	from student101
	where id = 1;

DBMS_OUTPUT.PUT_LINE(n_id);
DBMS_OUTPUT.PUT_LINE(v_name);

END;
/ 