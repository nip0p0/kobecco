set :branch, 'master'

server '45.76.194.221:54869', user: fetch(:user), roles: %w{web app db}, primary: true
