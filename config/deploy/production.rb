set :branch, 'master'

server '45.76.212.137', user: fetch(:user), roles: %w{web app db}, primary: true
