@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start redmineApache
goto end

:stop

"D:/Bitnami/redmine-3.3.2-2/apache2\bin\httpd.exe" -n "redmineApache" -k stop

:end
exit
