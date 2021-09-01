create or replace package myPackage as
	
	function isEven(n_number in number)
		return number;

	procedure procEven(n_number in number, res out number);	
	
end myPackage;
/