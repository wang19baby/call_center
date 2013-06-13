# encoding: utf-8
require 'bundler/setup'
require 'appraisal'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "call_center"
  gem.homepage = "http://github.com/zendesk/call_center"
  gem.license = "MIT"
  gem.summary = %Q{Support for describing call center workflows}
  gem.description = %Q{Support for describing call center workflows}
  gem.email = "hhsu@zendesk.com"
  gem.authors = ["Henry Hsu"]
  gem.license = "Apache License Version 2.0"
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*,lib/call_center/core_ext/object_instance_exec.rb"'
end

namespace :test do
  Rake::TestTask.new(:dsl) do |t|
    t.pattern = "minitest/**/*_test.rb"
  end
end

task :default => ['test', 'test:dsl']

desc "Run all tests."
task :all do
  sh "rake appraisal:install appraisal:relativize && rake appraisal test test:dsl"
end

namespace :appraisal do
  task :relativize do
    Dir["gemfiles/*.lock"].each do |file|
      content = File.read(file)
      content.gsub!(File.dirname(__FILE__), "../")
      File.open(file, "w") { |f| f.write(content) }
    end
  end
end
