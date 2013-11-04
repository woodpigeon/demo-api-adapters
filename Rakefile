require 'bundler/gem_tasks'
require 'rake/testtask'

# default test task
Rake::TestTask.new("test") do |t|
  t.ruby_opts << "-rubygems"
  t.libs << 'spec'
  t.test_files = FileList["spec/**/*_spec.rb"]
  t.verbose = true
end

task :default => :test