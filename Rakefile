task :default => :server

desc "run thin server in port 4567"
task :server do
  sh "rackup -s thin -p 4567"
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

desc "run the tests"
task :test do
  sh "ruby test/request/questions_test.rb"
end