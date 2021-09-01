set serveroutput on;

declare
	par number := 10;
	ans number;
	val number;
begin
	ans := myPackage.isEven(par);
	dbms_output.put_line(ans);
	
	myPackage.procEven(par, val);
	dbms_output.put_line(val);
end;
/

