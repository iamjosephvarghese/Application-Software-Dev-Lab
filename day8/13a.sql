DECLARE
	name varchar2(10);
	read varchar2(10);

	PROCEDURE comission(name IN varchar2)
	IS
		BEGIN
			update employee set COMISSION=1.05*COMISSION where EMPNAME=name;
		END;
BEGIN
 	read:='&N';
	comission(read);
END;
/