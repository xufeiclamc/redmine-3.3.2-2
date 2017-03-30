@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"D:/Bitnami/redmine-3.3.2-2/apache2\bin\httpd.exe" -k install -n "redmineApache" -f "D:/Bitnami/redmine-3.3.2-2/apache2\conf\httpd.conf"

net start redmineApache >NUL
goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop redmineApache >NUL
"D:/Bitnami/redmine-3.3.2-2/apache2\bin\httpd.exe" -k uninstall -n "redmineApache"

:end
exit
