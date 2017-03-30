# enable RubyInstaller DevKit usage as a vendorable helper library
unless ENV['PATH'].include?('D:\\Bitnami\\redmine-3.3.2-2\\DevKit\\mingw\\bin') then
  puts 'Temporarily enhancing PATH to include DevKit...'
  ENV['PATH'] = 'D:\\Bitnami\\redmine-3.3.2-2\\DevKit\\bin;D:\\Bitnami\\redmine-3.3.2-2\\DevKit\\mingw\\bin;' + ENV['PATH']
end
ENV['RI_DEVKIT'] = 'D:\\Bitnami\\redmine-3.3.2-2\\DevKit'
ENV['CC'] = 'gcc'
ENV['CXX'] = 'g++'
ENV['CPP'] = 'cpp'
