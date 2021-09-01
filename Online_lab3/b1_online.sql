set serveroutput on;

declare

	SUPPLIERIDNUM int:=0;
	
	Input_Id supplier.sid%type;
	
	Input_Name supplier.sname%type;
	
	A supplier.sid%type;
	B supplier.sname%type;
	C supplier.address%type;
	
begin

	Input_Id := &ID;
	Input_Name:='&Password';

	for r in (select count(sid) as "NID" 
	from supplier where sid=Input_Id) loop
	
	SUPPLIERIDNUM:=r.NID;
	end loop;
	
	if(SUPPLIERIDNUM>0) then
	
		for j in (select sname as 
		from supplier where sid=Input_Id) loop
			B:=j.sname;
	
			if(B=Input_Name) then 
				DBMS_OUTPUT.PUT_LINE('Welcome Back'||' '||B);
			else
				DBMS_OUTPUT.PUT_LINE('Invalid Credentials');
			end if;
		end loop;
	end if;
	
	if(SUPPLIERIDNUM=0) then
		DBMS_OUTPUT.PUT_LINE('Acount Not Found. Please Sign up.');
	end if;
end;
/
