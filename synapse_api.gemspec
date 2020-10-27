lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require 'synapse_api/version'

Gem::Specification.new do |s|
  s.name     = 'synapse_api'
  s.version  = Synapse::VERSION
  s.date     = Date.today.to_s
  s.author  = ['Synapse, Trim']
  s.email    = 'yan@asktrim.com'
  s.summary  = 'SynapseFI v3 API Library'
  s.homepage = 'https://asktrim.com'
  s.license  = 'MIT'

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = 'exe'
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.1.0'

  s.add_dependency 'rest-client', '~> 2.0'

  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'minitest', '~> 5.8.2'
  s.add_development_dependency 'minitest-reporters', '~> 1.1.5'
  s.add_development_dependency 'dotenv', '~> 2.1.1'
end
