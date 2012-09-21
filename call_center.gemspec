# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "call_center"
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Henry Hsu"]
  s.date = "2012-06-19"
  s.description = "Support for describing call center workflows"
  s.email = "hhsu@zendesk.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rvmrc",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "Guardfile.minitest",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "call_center.gemspec",
    "init.rb",
    "lib/call_center.rb",
    "lib/call_center/conditional_stack.rb",
    "lib/call_center/core_ext/object_instance_exec.rb",
    "lib/call_center/deferred_callbacks.rb",
    "lib/call_center/flow_callback.rb",
    "lib/call_center/state_machine_ext.rb",
    "lib/call_center/test/dsl.rb",
    "lib/call_center/test/minitest/dsl.rb",
    "minitest/call_center/test/minitest_test.rb",
    "minitest/helper.rb",
    "minitest/run.rb",
    "test/call_center_test.rb",
    "test/core_ext_test.rb",
    "test/examples/call.rb",
    "test/examples/dynamic_transition_call.rb",
    "test/examples/legacy_call.rb",
    "test/examples/multiple_flow_call.rb",
    "test/examples/non_standard_call.rb",
    "test/examples/outbound_call.rb",
    "test/helper.rb"
  ]
  s.homepage = "http://github.com/zendesk/call_center"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Support for describing call center workflows"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_runtime_dependency(%q<hsume2-state_machine>, ["~> 1.0.5"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-test>, [">= 0"])
      s.add_development_dependency(%q<actionpack>, ["~> 2.3.10"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<bourne>, [">= 0"])
      s.add_development_dependency(%q<pre-commit>, [">= 0"])
      s.add_development_dependency(%q<minitest>, ["= 2.6.1"])
      s.add_development_dependency(%q<minitest-reporters>, [">= 0"])
      s.add_development_dependency(%q<guard-shell>, [">= 0"])
    else
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<hsume2-state_machine>, ["~> 1.0.5"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-test>, [">= 0"])
      s.add_dependency(%q<actionpack>, ["~> 2.3.10"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<bourne>, [">= 0"])
      s.add_dependency(%q<pre-commit>, [">= 0"])
      s.add_dependency(%q<minitest>, ["= 2.6.1"])
      s.add_dependency(%q<minitest-reporters>, [">= 0"])
      s.add_dependency(%q<guard-shell>, [">= 0"])
    end
  else
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<hsume2-state_machine>, ["~> 1.0.5"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-test>, [">= 0"])
    s.add_dependency(%q<actionpack>, ["~> 2.3.10"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<bourne>, [">= 0"])
    s.add_dependency(%q<pre-commit>, [">= 0"])
    s.add_dependency(%q<minitest>, ["= 2.6.1"])
    s.add_dependency(%q<minitest-reporters>, [">= 0"])
    s.add_dependency(%q<guard-shell>, [">= 0"])
  end
end

