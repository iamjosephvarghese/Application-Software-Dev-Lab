CREATE OR REPLACE TRIGGER entry
AFTER
INSERT OR UPDATE
ON transaction
FOR EACH ROW
BEGIN
	dbms_output.put_line('Entry in Transaction table');
END;