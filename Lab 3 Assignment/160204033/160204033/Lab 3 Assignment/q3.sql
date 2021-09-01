set serveroutput on;

declare
	MaxBudget Dept.budget%type;
	EmployeeName Emp.ename%type;
	EmployeeSalary Emp.salary%type;


begin

select ename from (Works.ename,Dept.budget FROM Works INNER JOIN Dept ON Works.did = Dept.did);

end;
/

