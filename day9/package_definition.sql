CREATE PACKAGE update_emp AS
	PROCEDURE hire(id varchar2, name varchar2, job varchar2);

	FUNCTION incr_comm(id in varchar2)
	RETURN VARCHAR2;

END update_emp;