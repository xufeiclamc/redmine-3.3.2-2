@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist "D:\Bitnami\REDMIN~1.2-2\hypersonic\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\server\hsql-sample-database\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\ingres\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\ingres\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\mysql\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\mysql\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\postgresql\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\postgresql\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\elasticsearch\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\elasticsearch\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\logstash\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\logstash\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\logstash-forwarder\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\logstash-forwarder\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\apache2\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\apache2\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\openoffice\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\openoffice\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\apache-tomcat\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\apache-tomcat\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\resin\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\resin\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\activemq\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\activemq\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\jboss\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\jboss\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\wildfly\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\wildfly\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\jetty\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\jetty\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\subversion\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\subversion\scripts\servicerun.bat" START)
rem redmine_code_start
if exist D:\Bitnami\REDMIN~1.2-2\apps\redmine\scripts\servicerun.bat (start /MIN D:\Bitnami\REDMIN~1.2-2\apps\redmine\scripts\servicerun.bat START)
rem redmine_code_end
rem RUBY_APPLICATION_START
if exist "D:\Bitnami\REDMIN~1.2-2\lucene\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\lucene\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\mongodb\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\mongodb\scripts\servicerun.bat" START)
if exist "D:\Bitnami\REDMIN~1.2-2\third_application\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\third_application\scripts\servicerun.bat" START)
goto end

:stop
echo "Stopping services ..."
if exist "D:\Bitnami\REDMIN~1.2-2\third_application\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\third_application\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\lucene\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\lucene\scripts\servicerun.bat" STOP)
rem redmine_code_start
if exist D:\Bitnami\REDMIN~1.2-2\apps\redmine\scripts\servicerun.bat (start /MIN D:\Bitnami\REDMIN~1.2-2\apps\redmine\scripts\servicerun.bat STOP)
rem redmine_code_end
rem RUBY_APPLICATION_STOP
if exist "D:\Bitnami\REDMIN~1.2-2\subversion\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\subversion\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\jetty\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\jetty\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\hypersonic\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\server\hsql-sample-database\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\jboss\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\jboss\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\wildfly\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\wildfly\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\resin\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\resin\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\activemq\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\activemq\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\apache-tomcat\scripts\servicerun.bat" (start "" /MIN /WAIT "D:\Bitnami\REDMIN~1.2-2\apache-tomcat\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\openoffice\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\openoffice\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\apache2\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\apache2\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\logstash-forwarder\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\logstash-forwarder\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\logstash\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\logstash\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\elasticsearch\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\elasticsearch\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\ingres\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\ingres\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\mysql\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\mysql\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\mongodb\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\mongodb\scripts\servicerun.bat" STOP)
if exist "D:\Bitnami\REDMIN~1.2-2\postgresql\scripts\servicerun.bat" (start "" /MIN "D:\Bitnami\REDMIN~1.2-2\postgresql\scripts\servicerun.bat" STOP)

:end
