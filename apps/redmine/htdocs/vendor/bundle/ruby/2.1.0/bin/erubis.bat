@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"ruby.exe" "D:/Bitnami/redmine-3.3.2-2/apps/redmine/htdocs/vendor/bundle/ruby/2.1.0/bin/erubis" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"ruby.exe" "%~dpn0" %*
