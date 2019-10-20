CD LOGS
del *.* /S /F /Q
CD ..

SET ISC_USER=SYSDBA
SET ISC_PASSWORD=masterkey

"25/gbak" -z -b -g -v -st t -y LOGS/25.log BASE25/DADOS.GDB stdout|^
"30/gbak" -rep -z -c -v -st t -y LOGS/30.log stdin BASE30/DADOS30.GDB  
PAUSE