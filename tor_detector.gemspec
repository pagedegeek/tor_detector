# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tor_detector/version'

Gem::Specification.new do |spec|
  spec.name          = 'tor_detector'
  spec.version       = TorDetector::VERSION
  spec.authors       = ['Sam']
  spec.email         = ['samuel@pagedegeek.com']

  spec.summary       = 'Detect if IP is exit node of TOR'
  spec.description   = 'Detect if IP belongs to TOR'
  spec.homepage      = 'https://github.com/pagedegeek/tor_detector'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end