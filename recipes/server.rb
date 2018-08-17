#installing apache web server
package 'apache2' do
  action :install
end
file '/var/www/html/index.html' do
 content "<h1> System configuration Details using ohai with Node Object </h1>
	  IP-Address : #{node['ipaddress']} 
	  HostName : #{node['hostname']} 
	  Group : #{node['root_group']} 
	  OperatingSystem : #{node['hostnamectl']['operating_system']}"
end
service 'apache2' do
 action [ :enable, :restart]
end

