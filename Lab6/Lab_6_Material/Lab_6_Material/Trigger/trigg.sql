/*
create or replace trigger trigger_log
after insert on student

begin
	dbms_output.put_line('data inserted');
end;
/
*/


/*
create or replace trigger trigger_log
after insert
on student
for each row

begin
	insert into log_insert
	values(:new.snum, sysdate);
end;
/
*/



create or replace trigger trigger_log
after update
on student
for each row

begin
	dbms_output.put_line('data updated');
	insert into log_updel
	values(:old.age, :new.age, sysdate);
end;
/



/*
create or replace trigger trigger_log
after delete
on student
for each row

begin
	dbms_output.put_line('data deleted');
	insert into log_updel
	values(:old.age, :new.age, sysdate);
end;
/
*/


create or replace trigger trigger_log
after update or delete
of age
on student
for each row

begin
	insert into log_updel
	values(:old.age, :new.age, sysdate);
end;
/
