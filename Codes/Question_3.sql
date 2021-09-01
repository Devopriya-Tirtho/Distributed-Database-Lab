set serveroutput on;

declare
	EmployeeName Emp.ename%type;
	
	EmployeeSalary Emp.salary%type;
	
	EmployeeID Emp.eid%type;
	
	DepartmentBudget Dept.budget%type;

begin
	DBMS_OUTPUT.PUT_LINE('ename'||'		'||'salary');
for r in (select a.eid as "EMPID",
a.ename as "EMPNAME",
a.Salary as "EMPSAL",
max(c.budget) as "DEPTBUDGET"
	from Emp a,Works b,Dept c
	where b.did=c.did
	and a.eid=b.eid
	group by a.eid,a.ename,a.salary) loop
	
	EmployeeName:=r.EMPNAME;
	
	EmployeeSalary:=r.EMPSAL;
	
	EmployeeID:=r.EMPID;
	
	DepartmentBudget:=r.DEPTBUDGET;
	
	if(EmployeeSalary>DepartmentBudget) then
		DBMS_OUTPUT.PUT_LINE(EmployeeName||'	'||EmployeeSalary);
	end if;
	
	end loop;
end;
/
