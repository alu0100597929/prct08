#Rakefile


$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new
task :default => :spec
 
desc "instalando gemas"
task :install do
        sh "bundle install"
end
