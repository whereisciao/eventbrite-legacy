source 'https://rubygems.org'

gem 'rake'
gem 'yard'
gem 'eventbrite',
  git: 'git://github.com/whereisciao/eventbrite.git'

group :development do
  gem 'pry'
  platforms :ruby_19, :ruby_20, :ruby_21 do
    gem 'pry-stack_explorer'
    gem 'redcarpet'
  end
end

group :test do
  gem 'faker'
  gem 'backports'
  gem 'coveralls', :require => false
  gem 'mime-types', '~> 1.25', :platforms => [:jruby, :ruby_18]
  gem 'rspec', '>= 2.14'
  gem 'rspec-its'
  gem 'rubocop', '>= 0.20', :platforms => [:ruby_19, :ruby_20, :ruby_21]
  gem 'simplecov', :require => false
  gem 'timecop', '0.6.1'
  gem 'webmock'
  gem 'yardstick'
  gem 'guard'
  gem 'guard-rspec'
  gem 'psych', '>= 2.0.5'
end

gemspec name: 'eventbrite-legacy'