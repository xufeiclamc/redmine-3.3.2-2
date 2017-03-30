# :DK-BEG: override 'gem install' to enable RubyInstaller DevKit usage
Gem.pre_install do |gem_installer|
  unless gem_installer.spec.extensions.empty?
    unless ENV['PATH'].include?('D:\\Bitnami\\redmine-3.3.2-2\\DevKit\\mingw\\bin') then
      Gem.ui.say 'Temporarily enhancing PATH to include DevKit...' if Gem.configuration.verbose
      ENV['PATH'] = 'D:\\Bitnami\\redmine-3.3.2-2\\DevKit\\bin;D:\\Bitnami\\redmine-3.3.2-2\\DevKit\\mingw\\bin;' + ENV['PATH']
    end
    ENV['RI_DEVKIT'] = 'D:\\Bitnami\\redmine-3.3.2-2\\DevKit'
    ENV['CC'] = 'gcc'
    ENV['CXX'] = 'g++'
    ENV['CPP'] = 'cpp'
  end
end
# :DK-END:
