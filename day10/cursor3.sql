
DECLARE  
   total_rows number(2); 
BEGIN
    
   UPDATE employee 
   SET salary = 65000 where salary>=30000 and salary<60000; 
   IF sql%notfound THEN 
      dbms_output.put_line('no customers selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' customers selected '); 
   END IF;  
END; 

