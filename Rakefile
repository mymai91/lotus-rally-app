require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.libs    << 'spec'
end

task default: :test
task spec: :test

namespace :db do
  task :migrate do
    require_relative 'lib/rallyapp/migrator'
    RallyApp::Migrator.migrate!
  end

  task :seed => [:migrate] do
    load 'db/seeds.rb'
  end
end
