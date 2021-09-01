set serveroutput on;

declare
	SUPPLIERIDNUM int:=0;

	Input_Id supplier.sid%type;
	newsupp int;
	A supplier.sid%type;
	B supplier.sname%type;
	C supplier.address%type;
	
begin

	Input_Id := &ID;

	for r in (select count(sid) as "NID" 
	from supplier where sid=Input_Id) loop
	
	SUPPLIERIDNUM:=r.NID;
	
	end loop;
		
	if(SUPPLIERIDNUM>0) then
	
		row_delete(Input_Id);

	
	elsif(SUPPLIERIDNUM=0)then
	
		newsupp:=row_insert(Input_Id);
		
		if (newsupp=1) then
		for j in (SELECT sid,sname,address from supplier) loop
		DBMS_OUTPUT.PUT_LINE(j.sid||' '||j.sname||' '||j.address);
		end loop;
		end if;
		
	end if;

end;
/
