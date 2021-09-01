select fName from FACULTY
where Fid =(select Fid from COURSE 
where room ='R126' AND cnum IN (select cnum from ENROLLED
where snum =(select snum from STUDENT 
where slevel='1' AND major='ME' AND age=19)));