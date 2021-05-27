require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:google_search_features) do |t|
  t.profile = 'default'
  t.cucumber_opts = '--tags @search'
end

Cucumber::Rake::Task.new(:typicode_features) do |t|
  t.profile = 'api'
  t.cucumber_opts = '--tags @typicode'
end
task :default => :google_search_features
task :typicode => :typicode_features
