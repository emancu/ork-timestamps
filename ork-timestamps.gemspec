Gem::Specification.new do |s|
  s.name        = 'ork-timestamps'
  s.version     = '0.0.2'
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = 'A simple library to add timestamps to Ork::Documents stored in riak.'
  s.description = 'Add the clasic timestamps :created_at, :updated_at to the Ork::Documents'
  s.authors     = ['Emiliano Mancuso']
  s.email       = ['emiliano.mancuso@gmail.com']
  s.homepage    = 'http://github.com/emancu/ork-timestamps'
  s.license     = 'MIT'

  s.files = Dir[
    'README.md',
    'rakefile',
    'lib/**/*.rb',
    '*.gemspec'
  ]
  s.test_files = Dir['test/*.*']

  s.add_runtime_dependency 'riak-client', '~> 1.4'
  s.add_runtime_dependency 'ork', '~> 0.1', '>= 0.1.4'
  s.add_development_dependency 'protest', '~> 0'
  s.add_development_dependency 'coveralls', '~> 0'
end

