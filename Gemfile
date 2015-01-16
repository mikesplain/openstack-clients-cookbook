source 'https://rubygems.org'

gem 'rake'
gem 'berkshelf'

group :test do
  gem 'foodcritic'
  gem 'rubocop'
end

group :integration do
  gem 'vagrant-wrapper', '2.0.1'
  gem 'test-kitchen', '1.3.0'
  gem 'kitchen-docker', '1.7.0'
  gem 'kitchen-vagrant', '0.15.0',
  :git => 'https://github.com/tknerr/kitchen-vagrant.git',
  :ref => 'lxc-provider-support'
  gem 'serverspec', '2.3.1'
end
