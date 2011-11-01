namespace :tunnel do
  desc "Start a ssh tunnel"
  task :start => :environment do
    
    public_host_username = "sean"
    public_host = "home.ertw.com"
    public_port = 3000
    
    local_port = 3000
    
    puts "Starting tunnel #{public_host}:#{public_port} \
          to 127.0.0.1:#{local_port}"
    
    exec "ssh -nNT -g -R *:#{public_port}:127.0.0.1:#{local_port} \
                           #{public_host_username}@#{public_host}"
  end
end

