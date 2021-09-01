create or replace package body myPackage as

	function isEven(n_number in number)
		return number
		is

	begin
		
		if MOD(n_number, 2) = 0
			then
			return 1;
		else
			return 0;
		end if;

	end isEven;

		
	procedure procEven(n_number in number, res out number)
		IS
	begin
		if MOD(n_number, 2) = 0
			then
			res:= 1;
		else
			res:= 0;
		end if;	
	end procEven;

end myPackage;
/