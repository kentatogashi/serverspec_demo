require 'serverspec'
require 'net/ssh'

set :backend, :ssh

host = ENV['TARGET_HOST']

options = Net::SSH::Config.for(host)

set :host, host
set :ssh_options, options
