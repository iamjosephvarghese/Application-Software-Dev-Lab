
CREATE TRIGGER Wcheck 
BEFORE UPDATE 
ON MASTER FOR EACH ROW
BEGIN
	IF :NEW.BALANCE<1000 THEN
		BEGIN
			dbms_output.put_line('Withdrawal not possible! Insufficient balance!');
			:NEW.BALANCE:=:OLD.BALANCE;
		END;
	ELSE
		dbms_output.put_line('Withdrawal success!');
	END IF;
END;