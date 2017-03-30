@echo off
rem Populate databases and load default data

CALL D:\Bitnami\REDMIN~1.2-2\scripts\setenv.bat

cd D:\Bitnami\redmine-3.3.2-2/apps/redmine\htdocs
cmd /C bundle install --local --without development test sqlite --binstubs --deployment
D:\Bitnami\redmine-3.3.2-2/ruby\bin\ruby.exe bin\rake generate_secret_token
D:\Bitnami\redmine-3.3.2-2/ruby\bin\ruby.exe bin\rake db:migrate RAILS_ENV="production"

D:\Bitnami\redmine-3.3.2-2/ruby\bin\ruby.exe bin\rake redmine:load_default_data RAILS_ENV="production" < lng.txt
              