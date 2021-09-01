
insert into National_News
select * from News@site_link 
where section_id=1;
	
insert into International_News
select * from News@site_link 
where section_id=2;

insert into Sports_News@site_link
select * from News@site_link 
where section_id=3;

commit;