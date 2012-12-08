require 'chef/shell_out'

template "/home/vagrant/nodejs_install.sh" do
  source "nodejs_install.erb"
  owner "root"
  group "root"
  mode 777
end

execute "install nodejs" do
  command "cd /home/vagrant/; ./nodejs_install.sh >> /home/vagrant/nodejs_install.log 2>&1"
end

execute "install jslint" do
  command "npm install jslint -g"
end