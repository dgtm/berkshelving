default[:rails][:app_name] = "rails"
default[:rails][:app_root] = "/home/vagrant/#{node[:rails][:app_name]}"
default[:rails][:env] = nil
default[:rails][:deployer] = data_bag_item('users', 'deploy')['id']