#installing apache web server
package 'apache2' do
  action :install
end
template '/var/www/html/index.html' do
  source 'index.html.erb'
  action :create
end
service 'apache2' do
 action [ :enable, :restart]
end

