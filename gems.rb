source 'https://rubygems.org'

gem 'grape', '~> 1.2'
gem 'rack', '~> 2.0'

group :development do
  gem 'guard', '~> 2.15'
  gem 'guard-rspec', '~> 4.7'
end

group :test do
  gem 'rack-test', '~> 1.1'
  gem 'rspec', '~> 3.8'
end

gem 'puma', '~> 3.12', group: :production
