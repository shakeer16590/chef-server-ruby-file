#installing apache web server
package 'apache2' do
  action :install
end

remote_file '/var/www/html/pic.png' do
  source 'https://vignette.wikia.nocookie.net/fantendo/images/6/6e/Small-mario.png/revision/latest?cb=20120718024112&format=original' 
end
template '/var/www/html/index.html' do
  source 'index.html.erb'
  action :create
end

service 'apache2' do
 action [ :enable, :restart]
end

