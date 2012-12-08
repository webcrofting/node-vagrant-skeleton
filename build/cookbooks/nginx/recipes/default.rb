execute "install nginx" do
    command "apt-get -y install nginx"
end

template "/etc/nginx/sites-available/default" do
  source "default.erb"
  owner "root"
  group "root"
  mode 777
end

execute "run nginx" do
  command "ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default; service nginx restart"
end