>>>Package Definition<<
CREATE PACKAGE update_emp AS
	PROCEDURE hire(id varchar2, name varchar2, job varchar2);

	FUNCTION incr_comm(id in varchar2)
	RETURN VARCHAR2;

END update_emp;
/


>>>Package Declaration<<<
CREATE OR REPLACE PACKAGE BODY update_emp AS
	id varchar2(10);
	name varchar2(20);
	job_name varchar2(20);

	PROCEDURE hire(id in varchar2, name in varchar2, job in varchar2)
	IS
		BEGIN
		insert into employee(empid, empname, job) values(id, name, job);
	END hire;

	FUNCTION incr_comm(id in varchar2)
	RETURN varchar2
	IS
		BEGIN
		update employee set commission=1.5*commission where empid=id;
		dbms_output.put_line('Commission Updated');
	END incr_comm;
END update_emp;
/

>>>Package Execution<<<
DECLARE
	id varchar2(10);
	name varchar2(20);
	job_name varchar2(10);
BEGIN
	id := '&ID';
	name := '&Name';
	job_name := '&Job';
	update_emp.hire(id, name, job_name);
END;
/
