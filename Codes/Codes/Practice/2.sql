select DISTINCT sname 
from STUDENT 
where slevel='1'
AND 
snum IN (select snum from ENROLLED
where cnum IN (select cnum from COURSE 
where fid IN(select Fid from FACULTY where fName='Abdullah')));