require 'rspec/core/rake_task'

task :default => :server
desc "run thin server in port 4567"
task :server do
  sh "rackup -I. -Ihelpers -Icontrollers  -s thin -p 4567"
end

desc "run rack server"
task :rack do
  sh "rackup"
end

# Esta última versión de Shotgun no muestra los logs
desc "run shotgun"
task :shotgun do
  sh "shotgun"
end

#task :test do
#  sh "rspec -I. -Ihelpers -Icontrollers -Itest test/request/questions_test.rb"
#end

RSpec::Core::RakeTask.new :test do |task|
  task.pattern = Dir["test/**/*_test.rb"]
  task.ruby_opts = "-I. -Ihelpers -Icontrollers -Itest/helpers -Itest/request -Itest"
end

