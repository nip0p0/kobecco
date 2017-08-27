# config valid only for current version of Capistrano
lock "3.8.1"

set :application, 'kobecco'
set :repo_url, 'git@github.com:nip0p0/kobecco.git'
set :user, "deploy"
set :ssh_options, {
  keys: [File.expand_path('~/.ssh/id_rsa')],
  forward_agent: true
}

set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/shared public/uploads}

set :unicorn_config_path, "config/unicorn.rb"
set :sidekiq_config, "#{current_path}/config/sidekiq.yml"
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
