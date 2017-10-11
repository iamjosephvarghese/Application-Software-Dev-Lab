Declare 
	no account.accno%type;
	bal account.balance%type;
	minbal account.balance%type;

Begin
	dbms_output.put_line('Enter account no:');
	no:=&no;
	dbms_output.put_line('Enter minimum balance:');
	minbal:=&minbal;

	select balance into bal from account where accno=no;
	IF(bal < minbal) THEN
		update account set balance=balance-100 where accno=no;
	END IF;
End;