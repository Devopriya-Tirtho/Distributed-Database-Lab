create or replace function row_insert(n_number in supplier.sid%TYPE)
  return int
	is
	
begin
	insert into supplier values(n_number, 'Intel', 'Sillicon Valley');
	return 1;
end row_insert;
/