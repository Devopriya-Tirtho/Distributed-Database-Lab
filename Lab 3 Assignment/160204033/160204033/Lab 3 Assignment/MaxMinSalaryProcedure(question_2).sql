set serveroutput on;
create or replace procedure procMaxMinSalary
	IS
	MaxSal Emp.salary%type;
	MinSal Emp.salary%type;
begin
	select MIN(salary) into MinSal 
	from Emp;
	
	DBMS_OUTPUT.PUT_LINE('Minimum Salary'||' '||MinSal);
	
	select MAX(salary) into MaxSal 
	from Emp;
	
	DBMS_OUTPUT.PUT_LINE('Maximum Salary'||' '||MaxSal);


end procMaxMinSalary;
/
	