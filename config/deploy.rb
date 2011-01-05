set :application, "diyis"
set :deploy_to, "~/diyis"

set :scm, :git
set :repository,  "git@github.com:ddnym/diyis.git"
set :branch, "master"
set :deploy_via, :remote_cache

default_run_options[:pty] = true
set :use_sudo, true

set :user, "deploy"
set :ssh_options, { :forward_agent => true }

role :web, "diyis.org"                          # Your HTTP server, Apache/etc
role :app, "diyis.org"                          # This may be the same as your `Web` server
role :db,  "diyis.org", :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end