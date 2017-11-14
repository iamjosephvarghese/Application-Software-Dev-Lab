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
