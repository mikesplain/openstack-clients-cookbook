source 'https://rubygems.org'

gem 'rake'

group :test do
  gem 'foodcritic'
  gem 'rubocop'
  gem 'chefspec'
end

group :test, :integration do
  gem 'test-kitchen', '~> 1.2'
  gem 'kitchen-ec2',
      github: 'test-kitchen/kitchen-ec2'
end
