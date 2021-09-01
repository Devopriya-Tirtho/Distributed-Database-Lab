set serveroutput on;
declare
a varchar2(30):='&x';
nid number:=3;
i number:=3;
x money.taka %type:=100;
y money.taka %type:=200;
begin
if a='INSERT' then
for i in 3..7 loop
insert into money values(i,'a',x);
end loop;


end if;
end;
/


select * from money;