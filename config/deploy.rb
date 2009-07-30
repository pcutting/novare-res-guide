set :ip, "68.233.8.61"
set :user, "novareres"
#set :scm_user, "novareres"
set :password, "sprint"
set :server, "freemyrealestate.com"
set :application, "novare"
set :repository, "git@github.com:pcutting/novare-res-guide.git"
set :scm, "git"
set :deploy_to, "/home/novareres/#{application}"
set :use_sudo, false
default_run_options[:pty] = true
set :group_writable, false
set :branch, "master"
role :app, ip
role :web, ip
role :db, ip, :primary => true

set :deploy_via, :copy

set :use_sudo, false
set :group_writable, false

role :app, ip
role :web, ip
role :db, ip, :primary => true


set :use_sudo, false
set :group_writable, false

task :after_update_code, :roles => [:web, :db, :app] do
run "chown -R novareres:novareres #{release_path}"
run "chmod 755 #{release_path}/public -R"
end

namespace :deploy do
desc "cold deploy"
task :cold do
update
passenger::create_public_link
passenger::restart
end


desc "Restart Passenger"
task :restart do
passenger::restart
end
end

namespace :passenger do
desc "Restart Passenger"
task :restart do
run "cd /home/novareres/novare/current"
#run "touch tmp/restart.txt"
run "touch #{current_path}/tmp/restart.txt"
end


desc "Create symbolic link"
task :create_public_link do
run "cd /home/novareres; mv public_html public_html_bk; ln -s #{current_path}/public ~/public_html"
end
end



