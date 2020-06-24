Gem::Specification.new do |s|
  s.name = 'health_os'
  s.version = '1.0.0'
  s.summary = 'health_os'
  s.description = 'Welcome to HealthOS API!   HealthOS allows you to create world class healthcare applications, leveraging our data source of medicines (generics and branded), food items (with nutrition value), various excercises and physical activities, lab tests, diseases etc.  The API is organized around REST. All requests should be made over SSL. All request and response bodies, including errors, are encoded in JSON.'
  s.authors = ['APIMATIC', 'Zeeshan Ejaz Bhatti']
  s.email = 'zeeshan@apimatic.io'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10.0')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
