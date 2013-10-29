task :default => :server

desc "run thin server in port 4567"
task :server do
  sh "rackup -s thin -p 4567"
end

desc "run rack server"
task :rack do
  sh "rackup"
end

# Usamos Guard ya que la última versión de Shotgun no muestra los logs
desc "run guard"
task :guard do
  sh "bundle exec guard"
end