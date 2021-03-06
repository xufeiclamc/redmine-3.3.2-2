# -*- encoding: utf-8 -*-
# stub: json 1.8.3 ruby lib
# stub: ext/json/ext/generator/extconf.rb ext/json/ext/parser/extconf.rb ext/json/extconf.rb

Gem::Specification.new do |s|
  s.name = "json"
  s.version = "1.8.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Florian Frank"]
  s.date = "2015-06-01"
  s.description = "This is a JSON implementation as a Ruby extension in C."
  s.email = "flori@ping.de"
  #s.extensions = ["ext/json/ext/generator/extconf.rb", "ext/json/ext/parser/extconf.rb", "ext/json/extconf.rb"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = Dir.glob('**/*')
  s.homepage = "http://flori.github.com/json"
  s.licenses = ["Ruby"]
  s.rdoc_options = ["--title", "JSON implemention for Ruby", "--main", "README.rdoc"]
  s.rubygems_version = "2.4.6"
  s.summary = "JSON Implementation for Ruby"
  s.test_files = ["./tests/test_json.rb", "./tests/test_json_addition.rb", "./tests/test_json_encoding.rb", "./tests/test_json_fixtures.rb", "./tests/test_json_generate.rb", "./tests/test_json_generic_object.rb", "./tests/test_json_string_matching.rb", "./tests/test_json_unicode.rb"]
  s.platform = "x86-mingw32"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<permutation>, [">= 0"])
      s.add_development_dependency(%q<sdoc>, ["~> 0.3.16"]) if RUBY_VERSION > "1.8.6"
    else
      s.add_dependency(%q<permutation>, [">= 0"])
      s.add_dependency(%q<sdoc>, ["~> 0.3.16"]) if RUBY_VERSION > "1.8.6"
    end
  else
    s.add_dependency(%q<permutation>, [">= 0"])
    s.add_dependency(%q<sdoc>, ["~> 0.3.16"]) if RUBY_VERSION > "1.8.6"
  end
end
