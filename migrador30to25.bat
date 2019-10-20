CD LOGS
del *.* /S /F /Q
CD ..

SET ISC_USER=SYSDBA
SET ISC_PASSWORD=masterkey

"30/gbak" -z -b -g -v -st t -y LOGS/30.log BASE30/DADOS.GDB stdout|^
"25/gbak" -rep -z -c -v -st t -y LOGS/25.log stdin BASE25/DADOS25.GDB  
PAUSE

