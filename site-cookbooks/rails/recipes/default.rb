include_recipe 'nginx::source'
include_recipe 'unicorn'
include_recipe "god"

gem_package 'bundler'

directory "/home/#{node.rails.deployer}/#{node.rails.app_name}/current" do
  owner node.rails.deployer
  recursive true
end

template "#{node.unicorn.config_path}/#{node.rails.app_name}" do
  mode 0644
  source "unicorn.conf.erb"
  variables deployer: node.rails.deployer, deployer_group: "vagrant"
end

template "#{node.nginx.dir}/sites-available/#{node.rails.app_name}.conf" do
  source "nginx.conf.erb"
  mode 0644
  notifies :reload, 'service[nginx]'
end

nginx_site "#{node.rails.app_name}.conf"

god_monitor "nginx" do
  config "nginx.god.erb"
end