Gem::Specification.new do |s|
  s.name        = 'jsonapi-validator'
  s.version     = '0.0.3'
  s.date        = '2017-06-21'
  s.summary     = "jsonapi.org schema validator"
  s.description = "This gem uses jsonapi.org schema to validate API schemas generated in doc/raml/samples or sspec/api directory."
  s.authors     = ["Karthik selvakumar"]
  s.email       = 'karthikselvakumar7@gmail.com'
  s.files       = Dir["lib/**/*", "test/*" ,"schema/*.json"]
  s.homepage    = 'http://rubygems.org/gems/jsonapi-validator'
  s.add_dependency 'json', '>= 1.8.3'
  s.add_dependency 'json-schema', '>= 2.6.2'
  s.license       = 'MIT'
end
