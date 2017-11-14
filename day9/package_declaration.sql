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
		update employee set comission=1.5*comission where empid=id;
		dbms_output.put_line('comission Updated');
	END incr_comm;
END update_emp;
/