require "rspec/core/rake_task"
require "rubocop/rake_task"

RuboCop::RakeTask.for
RSpec::Core::RakeTask.for(:spec)

task :default => [:rubocop, :spec]
