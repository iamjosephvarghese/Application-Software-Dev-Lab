 set pagesize 30;
 set linesize 200;
 ttitle 'EMPLOYEE';
 btitle 'END';
 column empid heading 'ID';
 column empname heading 'NAME';
 column job heading 'JOB';
 column manager heading 'MANAGER';
 column deptno heading 'DEPTNO';
 column hiredate heading 'HIRE DATE';
 column sal heading 'SALARY';
 column commission heading 'COMMISSION';
 spool C:\Users\photon.PHOTON-03\Desktop\joseph_varghese\day11\rep2.txt;
 select * from employee;
spool off;               