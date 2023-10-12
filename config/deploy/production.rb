server '43.204.28.206', user: 'ubuntu', roles: [:web, :app, :db], primary: true, ssh_options: { forward_agent: true }
set :rails_env, :production
set :rack_env,  :production
set :stage,     :production
set :branch,    :master