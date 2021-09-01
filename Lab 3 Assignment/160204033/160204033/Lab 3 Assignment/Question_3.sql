set serveroutput on;

declare
	MaxBudget Dept.budget%type;
	EmployeeName Emp.ename%type;
	EmployeeSalary Emp.salary%type;


begin

for r in (SELECT  MAX(Dept.budget) as "MB" FROM Works INNER JOIN Dept ON Works.did = Dept.did) loop
	MaxBudget:=r.MB;
	end loop;
	
	
	DBMS_OUTPUT.PUT_LINE('ename'||'		'||'salary');

	
	for j in (SELECT  ename,salary  FROM Emp where salary>MaxBudget) loop
	EmployeeName:=j.ename;
	EmployeeSalary:=j.salary;
	DBMS_OUTPUT.PUT_LINE(EmployeeName||'	'||EmployeeSalary);
	end loop;
	
	
end;
/
