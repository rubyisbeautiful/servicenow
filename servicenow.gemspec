# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'base64'
require 'servicenow/version'

Gem::Specification.new do |spec|
  spec.name          = 'servicenow'
  spec.version       = Servicenow::VERSION
  spec.authors       = ['rubyisbeautiful']
  spec.email         = ['YmNwdGF5bG9yQGdtYWlsLmNvbQ==\n'].collect{ |foo| Base64.decode64(foo) }

  spec.summary       = %q{Simple WIP REST API client for ServiceNow}
  spec.description   = %q{This REST API client for ServiceNow is a work in progress}
  spec.homepage      = 'https://github.com/rubyisbeautiful/servicenow'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end