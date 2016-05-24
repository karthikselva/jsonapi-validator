Gem::Specification.new do |s|
  s.name        = 'jsonapi-validator'
  s.version     = '0.0.1'
  s.date        = '2016-05-24'
  s.summary     = "jsonapi.org schema validator"
  s.description = "This gem uses jsonapi.org schema to validate API schemas generated in spec/api directory."
  s.authors     = ["Karthik selvakumar"]
  s.email       = 'karthikselvakumar7@gmail.com'
  s.files       = Dir["lib/**/*", "test/*" ,"schema/*.json"]
  s.homepage    = 'http://rubygems.org/gems/jsonapi-validator'
  s.add_dependency 'json'
  s.add_dependency 'json-schema'
  s.license       = 'MIT'
end