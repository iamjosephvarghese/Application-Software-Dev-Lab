set pagesize 30;
 set linesize 200;
 ttitle 'CLIENTS';
 btitle 'END';
 column NAME heading 'NAME';
 column address heading 'ADDRESS';
 column city heading 'CITY';
 column pincode heading 'PINCODE';
 column state heading 'STATE';
 column baldue heading 'BALDUE';
ttitle 'CLIENTS';
spool C:\Users\photon.PHOTON-03\Desktop\joseph_varghese\day11\rep1.txt;
 select * from client where state !='kerala';
spool off;