set serveroutput on;
create or replace procedure procCost(id in records.sid%type)	
	IS
	total_cost records.cost%type:=0;
begin
	if id=1 then
		for r in (select cost from records where sid=1) loop	
			total_cost:=total_cost+r.cost;
			end loop;
			
	elsif id=2 then
		for r in (select cost from records where sid=2) loop
			total_cost:=total_cost+r.cost;
			end loop;
			
	else
		DBMS_OUTPUT.PUT_LINE(0);
	end if;
	DBMS_OUTPUT.PUT_LINE(total_cost);
	total_cost:=0;

end procCost;
/
	
	
	