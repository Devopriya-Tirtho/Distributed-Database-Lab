/* Find the name of those faculty member who are the faculty
 of the course for the students whose level is "1"? */

select fName from FACULTY 
where Fid IN(select Fid from COURSE 
where cnum IN (select cnum from ENROLLED
where snum IN(select snum from STUDENT 
where slevel='1' AND major='EEE')));