set serveroutput on;

declare
	A records.pid%type:=&x;
	
	supplier_id records.sid%type;
	
	final_sid supplier.sid%type;
	
	supplier_name supplier.sname%type;
	
	supplier_address supplier.address%type;

begin

for r in (SELECT sid FROM records WHERE cost=(select min(cost) from records where pid=A)) loop
	supplier_id:=r.sid;
	end loop;
	select sid,sname,address
	into final_sid,supplier_name,supplier_address
	from supplier
	where sid=supplier_id;
	
	DBMS_OUTPUT.PUT_LINE(A||' '||final_sid||' '||supplier_name||' '||supplier_address);
	

end;
/