@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"D:\Bitnami\redmine-3.3.2-2/mysql\bin\mysqld.exe" --install "redmineMySQL" --defaults-file="D:\Bitnami\redmine-3.3.2-2/mysql\my.ini"

net start "redmineMySQL" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "redmineMySQL" >NUL
"D:\Bitnami\redmine-3.3.2-2/mysql\bin\mysqld.exe" --remove "redmineMySQL"

:end
exit
