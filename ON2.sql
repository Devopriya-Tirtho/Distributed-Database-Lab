set serveroutput on;
declare
a number:=&x;
b number;
c number;
n number;
temp number:=0;
rem number;

begin 
b:=length(a);
c:=a;
DBMS_OUTPUT.PUT_LINE(b);

while a>0
loop

rem:=mod(a,10);
temp:=(temp*10)+rem;
a:=trunc(a/10);
end loop;
if c=temp then


DBMS_OUTPUT.PUT_LINE('palindrome');


else

DBMS_OUTPUT.PUT_LINE('not palindrome');
end if;

end;
/