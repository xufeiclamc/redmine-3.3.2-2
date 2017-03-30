@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"D:\Bitnami\redmine-3.3.2-2/apps/redmine\scripts\winserv.exe" install "redmineThin1" -start auto "D:\Bitnami\redmine-3.3.2-2\ruby\bin\ruby.exe" "D:\Bitnami\redmine-3.3.2-2/apps/redmine\htdocs\bin\thin" start -p 3001 -e production -c "D:\Bitnami\redmine-3.3.2-2/apps/redmine/htdocs" -a 127.0.0.1 --prefix /redmine
net start redmineThin1 >NUL
"D:\Bitnami\redmine-3.3.2-2/apps/redmine\scripts\winserv.exe" install "redmineThin2" -start auto "D:\Bitnami\redmine-3.3.2-2\ruby\bin\ruby.exe" "D:\Bitnami\redmine-3.3.2-2/apps/redmine\htdocs\bin\thin" start -p 3002 -e production -c "D:\Bitnami\redmine-3.3.2-2/apps/redmine/htdocs" -a 127.0.0.1 --prefix /redmine

net start redmineThin2 >NUL

goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop redmineThin1 >NUL

"D:\Bitnami\redmine-3.3.2-2/apps/redmine\scripts\winserv.exe" uninstall "redmineThin1"

net stop redmineThin2 >NUL
"D:\Bitnami\redmine-3.3.2-2/apps/redmine\scripts\winserv.exe" uninstall "redmineThin2"

:end
exit
