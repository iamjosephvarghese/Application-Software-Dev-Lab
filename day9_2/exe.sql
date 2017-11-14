DECLARE
	id EMPLOYEE.EMPID%TYPE;
	name EMPLOYEE.EMPNAME%TYPE;
	job EMPLOYEE.JOB%TYPE;
	manager EMPLOYEE.MANAGER%TYPE;
	deptno EMPLOYEE.DEPTNO%TYPE;
	hiredate EMPLOYEE.HIREDATE%TYPE;
	salary EMPLOYEE.SALARY%TYPE;
	comm EMPLOYEE.COMISSION%TYPE;
	nameup EMPLOYEE.EMPNAME%TYPE;
	oldcomm EMPLOYEE.COMISSION%TYPE;
	ret EMPLOYEE.COMISSION%TYPE;
BEGIN
	dbms_output.put_line('Enter the employee ID: ');
	id := &id;
	dbms_output.put_line('Enter the employee name: ');
	name := '&name';
	dbms_output.put_line('Enter the job title: ');
	job := '&job';
	dbms_output.put_line('Enter the manager no: ');
	manager := &manager;
	dbms_output.put_line('Enter the department number: ');
	deptno := &deptno;
	dbms_output.put_line('Enter the hiredate: ');
	hiredate := '&hiredate';
	dbms_output.put_line('Enter the salary: ');
	salary := &salary;
	dbms_output.put_line('Enter the comission: ');
	comm := &comm;

	emp_pkg.HIREEMP(id , name , job , manager , deptno , hiredate , salary , comm);

	dbms_output.put_line('Hired the employee successfully!');

	dbms_output.put_line('Enter the name of the employee to be updated: ');
	nameup := '&nameup';
	SELECT COMISSION INTO oldcomm FROM EMPLOYEE WHERE EMPNAME=nameup;
	dbms_output.put_line('The old comission value is: ' || oldcomm);

	ret := emp_pkg.EMPUPDATE(nameup);

	dbms_output.put_line('The new comission value is: ' || ret);

END;