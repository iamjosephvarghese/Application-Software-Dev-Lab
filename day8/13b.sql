Declare
	name varchar(10);
	eid number;
	meid number;
	function manwho(empid In number)
	return number
	IS
	manid number;
	BEGIN
		select manager into manid from employee where empid=eid;
		return manid;
	END;
BEGIN
	dbms_output.put_line('Enter the employee ID:');
	eid:='&eid';
	meid:=manwho(eid);
	select empname into name from employee where empid=meid;
	dbms_output.put_line('manager is:'||name);
END;
	