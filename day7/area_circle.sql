Declare 
	pi constant number(3,2):=3.14;
	radius number(7);
	area number(7,4);
	
Begin 
	For i in 5..15
	 	LOOP
			radius:=i;
			area:=pi*i*i;
			insert into areatable values(radius,area);
	      	 END LOOP;
End;