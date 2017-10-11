Declare
	c number(5);
	PROCEDURE countemp 
	IS
	total number(5);
	BEGIN
		select count(*) into total from empstore;
		return total;
	END;
BEGIN
	c:=countemp;
	dbms_output.put_line(c);
END;
