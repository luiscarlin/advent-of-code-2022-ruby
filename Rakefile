require 'rubocop/rake_task'
require 'rspec/core/rake_task'

task default: %w[lint test]

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['**/*.rb']
  task.fail_on_error = false
end

RSpec::Core::RakeTask.new(:test) do |task|
  task.pattern = '**/*_spec.rb'
end
