require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano3/unicorn'
require 'capistrano/rbenv'
require 'slackistrano/capistrano'

set :rbenv_type, :user
set :rbenv_ruby, '2.4.1'

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
