set serveroutput on;

declare

	EmployeeID Emp.eid%type;
	DepartmentBudget Dept.budget%type;
	Input_Id Emp.eid%type;
	count1 int:=0;
	
begin
	Input_Id := &ID;
	
	for r in (select Emp.eid as "EMPID",max(Dept.budget) as "DEPTBUDGET"
	from Emp,Dept,Works
	where Works.did=Dept.did
	and Emp.eid=Works.eid
	and Emp.eid=Input_Id
	group by Emp.eid) loop
		
	EmployeeID:=r.EMPID;
	
	DepartmentBudget:=r.DEPTBUDGET;
	
	count1:=1;
	
	DBMS_OUTPUT.PUT_LINE(DepartmentBudget);
	
	end loop;
	
	if(count1=0) then
	
	DBMS_OUTPUT.PUT_LINE('Not Found');
	
	end if;
end;
/