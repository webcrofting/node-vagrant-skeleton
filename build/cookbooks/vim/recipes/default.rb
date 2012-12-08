template "/home/vagrant/.vimrc" do
  source "vimrc.erb"
  owner "vagrant"
  group "vagrant"
  mode 777
end

execute "install vim" do
  command "apt-get -y install vim"
end