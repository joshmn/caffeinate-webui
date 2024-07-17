# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'caffeinate/webui/version'

Gem::Specification.new do |spec|
  spec.name        = 'caffeinate_webui'
  spec.version     = Caffeinate::Webui::VERSION
  spec.authors     = ['joshmn']
  spec.email       = ['josh@josh.mn']
  spec.homepage    = 'https://github.com/joshmn/caffeinate-webui'
  spec.summary     = 'Create, manage, and send scheduled email sequences and drip campaigns from your Rails app.'
  spec.description = spec.summary
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 5.0.0'
  spec.add_dependency 'caffeinate', '>= 2'
  spec.add_dependency 'sprockets-rails'
  spec.add_dependency 'groupdate', '>= 5'
  spec.add_dependency 'chartkick', '>= 4'
  spec.add_dependency 'will_paginate-bootstrap-style', '~> 0.2'
  spec.add_dependency 'will_paginate', '>= 3'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-rails'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'codecov'
end
