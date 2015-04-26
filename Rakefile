require "bundler/gem_tasks"
require "rake/testtask"

require "rspec/core"
require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList["spec/**/*_spec.rb"]
end

desc "for travis-ci run"
task travis: :default

task default: :spec

