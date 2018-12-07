source 'https://rubygems.org'

gem 'grape', '~> 1.2'
gem 'rack', '~> 2.0'

group :test do
  gem 'rack-test', '~> 1.1'
  gem 'rspec', '~> 3.8'
end

gem 'puma', '~> 3.12', group: :production
