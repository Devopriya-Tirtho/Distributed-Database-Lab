set serveroutput on;

declare
	MaxBudget Dept.budget%type;
	EmployeeName Emp.ename%type;
	EmployeeSalary Emp.salary%type;
	EmployeeID Emp.ename%type;
	DepartmentBudget Emp.salary%type;

begin
	DBMS_OUTPUT.PUT_LINE('ename'||'		'||'salary');
for r in (select a.eid as "EmpId",a.ename as "EmpName",a.Salary as "EmpSal",c.budget as "DeptBudget"
	from Emp a,Works b,Dept c
	where b.did=c.did
	and a.eid=b.eid;) loop
	
	EmployeeName:=r.EmpName;
	EmployeeSalary:=r.EmpSal;
	EmployeeID:=r.EmpId;
	DepartmentBudget:=r.DeptBudget;
	if(EmployeeSalary>DepartmentBudget) then
		DBMS_OUTPUT.PUT_LINE(EmployeeName||'	'||EmployeeSalary);
	end if;
	end loop;
	

	
	
end;
/
