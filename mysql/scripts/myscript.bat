@echo off
"D:\Bitnami\redmine-3.3.2-2/mysql\bin\mysql.exe" --defaults-file="D:\Bitnami\redmine-3.3.2-2/mysql\my.ini" -u root -e "UPDATE mysql.user SET Password=password('%1') WHERE User='root';"
"D:\Bitnami\redmine-3.3.2-2/mysql\bin\mysql.exe" --defaults-file="D:\Bitnami\redmine-3.3.2-2/mysql\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"D:\Bitnami\redmine-3.3.2-2/mysql\bin\mysql.exe" --defaults-file="D:\Bitnami\redmine-3.3.2-2/mysql\my.ini" -u root -e "FLUSH PRIVILEGES;"
