set serveroutput on;

create or replace procedure row_delete(n_number in supplier.sid%TYPE)
	IS	
begin
	Delete from records
	where sid=n_number;
	
	Delete from supplier 
	where sid=n_number;
	
	for r in (SELECT sid,sname,address from supplier) loop
	DBMS_OUTPUT.PUT_LINE(r.sid||' '||r.sname||' '||r.address);
	end loop;
	
end row_delete;
/