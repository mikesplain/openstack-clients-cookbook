require 'bundler/setup'
require 'kitchen'

# Style tests. Rubocop and Foodcritic
namespace :style do
  require 'rubocop/rake_task'
  desc 'Run Ruby style checks'
  RuboCop::RakeTask.new(:ruby)

  require 'foodcritic'
  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef) do |t|
    t.options = {
      fail_tags: ['any'],
      tags: ['~FC005']
    }
  end
end

namespace :integration do
  desc 'Run Test Kitchen with cloud plugins'
  task :cloud do
    run_kitchen = true
    if ENV['TRAVIS'] == 'true'
      if ENV['TRAVIS_PULL_REQUEST'] != 'false' || ENV['DISABLE_KITCHEN'] == 'true'
        run_kitchen = false
      end
    end

    if run_kitchen
      Kitchen.logger = Kitchen.default_file_logger
      @loader = Kitchen::Loader::YAML.new(project_config: './.kitchen.cloud.yml')
      config = Kitchen::Config.new(loader: @loader)
      config.instances.each do |instance|
        instance.test(:always)
      end
    end
  end
end

desc 'Run all style checks'
task style: ['style:chef', 'style:ruby']

desc 'Run all tests on Travis'
task travis: %w(style integration:cloud)
