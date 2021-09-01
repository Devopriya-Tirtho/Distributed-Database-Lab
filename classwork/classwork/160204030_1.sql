
  
 SELECT CNAME FROM COURSE where room='R128' OR WHERE CNUM IN(select cnum from enrolled group by cnum having count(snum)>=5);
 
 