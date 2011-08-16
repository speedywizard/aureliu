default_run_options[:pty] = true
set :application, "aureliu"
set :repository,  "git@github.com:speedywizard/aureliu.git"

set :scm, :git
set :user, "deploy"
set :use_sudo, false
set :scm_passphrase, "b12D386A8j07"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "direct.wizzzard.info"                          # Your HTTP server, Apache/etc
role :app, "direct.wizzzard.info"                          # This may be the same as your `Web` server
role :db,  "direct.wizzzard.info", :primary => true # This is where Rails migrations will run
role :db,  "direct.wizzzard.info"

set :deploy_to, "/www/#{application}"
set :deploy_via, :remote_cache

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
