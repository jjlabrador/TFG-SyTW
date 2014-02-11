require 'rspec/core/rake_task'

task :default => :server

desc "run thin server in port 4567"
task :server do
  sh "rackup -Ilib lib/config.ru -s thin -p 4567"
end

desc "run rack server"
task :rack do
  sh "rackup -Ilib lib/config.ru"
end

# Esta última versión de Shotgun no muestra los logs
desc "run shotgun"
task :shotgun do
  sh "shotgun -Ilib lib/config.ru"
end

desc "run the test's suite"
RSpec::Core::RakeTask.new :test do |task|
  task.pattern = Dir["spec/**/*_test.rb"]
  task.ruby_opts = "-I. -Ilib -Ilib/helpers -Ilib/controllers -Ispec/helpers -Ispec/request -Ispec"
end

desc "generate the documentation"
task :yard do
  sh "yardoc"
end