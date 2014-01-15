require 'rspec/core/rake_task'

task :default => :server

desc "run thin server in port 4567"
task :server do
  #sh "rackup -I. -Ihelpers -Icontrollers -s thin -p 4567"
  sh "rackup -I. -s thin -p 4567"
end

desc "run rack server"
task :rack do
  sh "rackup -I."
end

# Esta última versión de Shotgun no muestra los logs
desc "run shotgun"
task :shotgun do
  sh "shotgun -I."
end

RSpec::Core::RakeTask.new :test do |task|
  task.pattern = Dir["spec/**/*_test.rb"]
  task.ruby_opts = "-I. -Ihelpers -Icontrollers -Ispec/helpers -Ispec/request -Ispec"
end

