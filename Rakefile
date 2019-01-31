require 'rake'
require 'rspec/core/rake_task'

if ENV['TARGET_HOST'].nil?
  raise 'please set TARGET_HOST'
end

task :spec    => 'spec:all'
task :default => :spec

namespace :spec do
  targets = []
  targets << 'apache24'

  task :all     => targets
  task :default => :all

  targets.each do |target|
    desc "Run serverspec tests to #{ENV['TARGET_HOST']}"
    RSpec::Core::RakeTask.new(target.to_sym) do |t|
      t.pattern = "spec/#{target}_spec.rb"
    end
  end
end
